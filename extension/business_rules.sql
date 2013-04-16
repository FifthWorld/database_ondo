-- Recreate the Sequences used for numbering applications
DROP SEQUENCE IF EXISTS application.application_nr_seq;
DROP SEQUENCE IF EXISTS application.survey_plan_nr_seq;
DROP SEQUENCE IF EXISTS application.non_register_nr_seq;
DROP SEQUENCE IF EXISTS application.dealing_nr_seq;
DROP SEQUENCE IF EXISTS application.information_nr_seq;
DROP SEQUENCE IF EXISTS administrative.rrr_nr_seq;
DROP SEQUENCE IF EXISTS administrative.notation_reference_nr_seq;
DROP SEQUENCE IF EXISTS administrative.ba_unit_first_name_part_seq;
DROP SEQUENCE IF EXISTS administrative.ba_unit_last_name_part_seq;
DROP SEQUENCE IF EXISTS document.document_nr_seq;
DROP SEQUENCE IF EXISTS source.source_la_nr_seq;

--<<<<<<< HEAD
--application number sequence updated by Sam on 4/08/2013 at 1:28am-- it is expected to start from one and loop through to 99999
CREATE SEQUENCE application.application_nr_seq
	INCREMENT 1
	MINVALUE 0
	MAXVALUE 99999
	START 1
	CACHE 1;,
	
--=======
--CREATE SEQUENCE application.application_nr_seq
--  INCREMENT 1
 -- MINVALUE 10700
 -- MAXVALUE 19999
--  START 11000
 -- CACHE 1;
  
CREATE SEQUENCE application.survey_plan_nr_seq
  INCREMENT 1
  MINVALUE 10700
  MAXVALUE 19999
  START 11000
  CACHE 1;
  
CREATE SEQUENCE application.non_register_nr_seq
  INCREMENT 1
  MINVALUE 21100
  MAXVALUE 24999
  START 21100
  CACHE 1; 
  
CREATE SEQUENCE application.dealing_nr_seq
  INCREMENT 1
  MINVALUE 39500
  MAXVALUE 99999
  START 39500
  CACHE 1;
  
 CREATE SEQUENCE application.information_nr_seq
  INCREMENT 1
  MINVALUE 100000
  MAXVALUE 119999
  START 100000
  CACHE 1;
   
CREATE SEQUENCE  administrative.rrr_nr_seq
  INCREMENT 1
  MINVALUE 200000
  MAXVALUE 999999
  START 200000
  CACHE 1;
  
CREATE SEQUENCE  administrative.notation_reference_nr_seq
  INCREMENT 1
  MINVALUE 200000
  MAXVALUE 999999
  START 200000
  CACHE 1;
   
CREATE SEQUENCE document.document_nr_seq
  INCREMENT 1
  MINVALUE 100000
  MAXVALUE 999999
  START 100000
  CACHE 1;
  
CREATE SEQUENCE source.source_la_nr_seq
  INCREMENT 1
  MINVALUE 100000
  MAXVALUE 999999
  START 100000
  CACHE 1;
  
 CREATE SEQUENCE administrative.ba_unit_first_name_part_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 10000
  START 1
  CACHE 1;

 -- Reconfigure RRR  and Notation Numbering to use the application number and service order
UPDATE system.br_definition SET "body" = 'WITH  note_nr_suffix AS (
	SELECT 	CAST(split_part(n.reference_nr, ''.'', 2) AS integer) AS suffix
	FROM 	administrative.notation n, 
		application.application app
	WHERE 	split_part(app.nr, ''/'', 1) = split_part(n.reference_nr, ''.'', 1) 
	AND   	app.id IN  (	SELECT 	ser.application_id
				FROM 	application.service ser,
					transaction.transaction t
				WHERE 	t.id = #{transactionId}
				AND   	ser.id = t.from_service_id))
SELECT CASE WHEN CAST(#{transactionId} AS VARCHAR(40)) IS NOT NULL THEN (
                 SELECT 	split_part(app.nr, ''/'', 1) || ''.'' || trim(to_char(COALESCE((SELECT max(suffix) FROM note_nr_suffix),0) + 1, ''00''))
				 FROM 	application.application app
				 WHERE	app.id IN  (	SELECT 	ser.application_id
						FROM 	application.service ser,
							transaction.transaction t
						WHERE 	t.id = #{transactionId}	
						AND   	ser.id = t.from_service_id))
            ELSE (SELECT trim(to_char(nextval(''administrative.rrr_nr_seq''), ''000000''))) END AS vl'
WHERE br_id = 'generate-notation-reference-nr'; 

UPDATE system.br_definition SET "body" = '
WITH  rrr_nr_suffix AS (
	SELECT 	CAST(split_part(r.nr, ''/'', 2) AS integer) AS suffix
	FROM 	administrative.rrr r, 
		application.application app
	WHERE 	split_part(app.nr, ''/'', 1) = split_part(r.nr, ''/'', 1) 
	AND   	app.id IN  (	SELECT 	ser.application_id
				FROM 	application.service ser,
					transaction.transaction t
				WHERE 	t.id = #{transactionId}
				AND   	ser.id = t.from_service_id))
SELECT CASE WHEN CAST(#{transactionId} AS VARCHAR(40)) IS NOT NULL THEN (
SELECT 	split_part(app.nr, ''/'', 1) || ''/'' || trim(to_char(COALESCE((SELECT max(suffix) FROM rrr_nr_suffix),0) + 1, ''00''))
FROM 	application.application app
WHERE	app.id IN  (	SELECT 	ser.application_id
			FROM 	application.service ser,
				transaction.transaction t
			WHERE 	t.id = #{transactionId}	
			AND   	ser.id = t.from_service_id))
ELSE (SELECT to_char(now(), ''yymmdd'') || ''-'' || trim(to_char(nextval(''administrative.rrr_nr_seq''), ''000000''))) END AS vl'
WHERE br_id = 'generate-rrr-nr';

-- Reconfigure Source numbering so that it is based on the application number 
UPDATE system.br_definition SET "body" = '
WITH app AS  (
    SELECT a.id AS app_id
    FROM application.application a 
    WHERE CAST(#{refId} AS VARCHAR(40)) IS NOT NULL 
    AND a.id =  #{refId}
    UNION 
    SELECT ser.application_id AS app_id
    FROM   application.service ser,
           transaction.transaction t 
    WHERE  CAST(#{transactionId} AS VARCHAR(40)) IS NOT NULL
    AND    t.id = #{transactionId}
    AND    ser.id = t.from_service_id),
sources AS (
    SELECT aus.source_id AS source_id
    FROM   application.application_uses_source aus,
           app 
    WHERE  aus.application_id = app.app_id
    UNION
    SELECT rs.source_id as source_id
    FROM   app,
           application.service ser, 
           transaction.transaction t,
           administrative.rrr r,
           administrative.source_describes_rrr rs
    WHERE  ser.application_id = app.app_id
    AND    t.from_service_id = ser.id
    AND    r.transaction_id = t.id
    AND    rs.rrr_id = r.id)
SELECT CASE WHEN (SELECT COUNT(app_id) FROM app) > 0 THEN 
   (SELECT split_part(a.nr, ''/'', 1) || ''-'' || trim(to_char((SELECT COUNT(*) + 1 FROM sources), ''00''))
    FROM app, application.application a WHERE a.id = app.app_id)
	WHEN EXISTS (SELECT ba.id FROM administrative.ba_unit ba WHERE ba.id = #{refId} AND (SELECT COUNT(app_id) FROM app) = 0) THEN 
	 (SELECT ba.name_firstpart || ''/'' || ba.name_lastpart FROM administrative.ba_unit ba WHERE ba.id = #{refId})
	WHEN EXISTS (SELECT r.id FROM administrative.rrr r WHERE r.id = #{refId} AND (SELECT COUNT(app_id) FROM app) = 0) THEN 
	 (SELECT r.nr FROM administrative.rrr r WHERE r.id = #{refId})  || ''-''  || 
		trim(to_char((SELECT COUNT(*) + 1 FROM administrative.source_describes_rrr s WHERE s.rrr_id = #{refId}), ''00''))
	ELSE trim(to_char(nextval(''source.source_la_nr_seq''), ''000000'')) END AS vl'
WHERE br_id = 'generate-source-nr';


-- Revised version of RRR numbering as RRR numbers are not displayed to the user
UPDATE system.br_definition SET "body" = 'SELECT trim(to_char(nextval(''administrative.rrr_nr_seq''), ''000000'')) AS vl'
WHERE br_id = 'generate-rrr-nr';


-- The notation number should be set to the application number. The user can update if necessary through SOLA. 
UPDATE system.br_definition SET "body" = '
SELECT CASE WHEN CAST(#{transactionId} AS VARCHAR(40)) IS NOT NULL THEN (
                 SELECT 	split_part(app.nr, ''/'', 1)
				 FROM 	application.application app
				 WHERE	app.id IN  (	SELECT 	ser.application_id
						FROM 	application.service ser,
							transaction.transaction t
						WHERE 	t.id = #{transactionId}	
						AND   	ser.id = t.from_service_id))
            ELSE (SELECT trim(to_char(nextval(''administrative.notation_reference_nr_seq''), ''000000''))) END AS vl'
WHERE br_id = 'generate-notation-reference-nr'; 


-- Revise the function used to detrmine if a cadastre object is valid. 
DROP FUNCTION cadastre.cadastre_object_name_is_valid(character varying, character varying);

CREATE OR REPLACE FUNCTION cadastre.cadastre_object_name_is_valid(name_firstpart character varying, name_lastpart character varying)
  RETURNS boolean AS
$BODY$
begin
  IF name_firstpart is null THEN RETURN false; END IF;
  IF name_lastpart is null THEN RETURN false; END IF;
  IF NOT ((name_firstpart SIMILAR TO 'Lot [0-9]+') OR (name_firstpart SIMILAR TO '[0-9]+')) THEN RETURN false;  END IF;
  IF NOT ((name_lastpart SIMILAR TO '[0-9 ]+') OR (name_lastpart SIMILAR TO 'CUSTOMARY LAND') OR (name_lastpart SIMILAR TO 'CTGT [0-9]+') OR (name_lastpart SIMILAR TO 'LC [0-9]+')) THEN RETURN false;  END IF;
  RETURN true;
end;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION cadastre.cadastre_object_name_is_valid(character varying, character varying)
  OWNER TO postgres;
 
--Temporary Change for purposes of initial customisation in Ondo

UPDATE system.br_validation SET severity_code = 'medium'
WHERE severity_code = 'critical';



