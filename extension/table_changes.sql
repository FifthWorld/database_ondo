--Changes added on Monday, 04/08/2013 by Sam

ALTER TABLE application.application_historic
ADD document_verified boolean NOT NULL DEFAULT false;

--Table changes to the party and party_historic table to support date of birth on Tuesday, 09 April 2013
ALTER table party.party
ADD date_of_birth date;

ALTER TABLE party.party_historic
ADD date_of_birth date;



--Updating Status code for SLTR process only
UPDATE application.request_type SET display_value = 'Change to Cadastre', nr_days_to_complete = 30, base_fee = 25.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'cadastreChange';
UPDATE application.request_type SET display_value = 'Redefine Cadastre', nr_days_to_complete = 30, base_fee = 25.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'redefineCadastre';
UPDATE application.request_type SET display_value = 'Document Copy', nr_days_to_complete = 1, base_fee = 0.50, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'documentCopy';
UPDATE application.request_type SET display_value = 'Vary Mortgage', nr_days_to_complete = 1, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation to mortgage with < bank name>', description = '', status = 'x' WHERE code = 'varyMortgage';
UPDATE application.request_type SET display_value = 'New Freehold Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'newFreehold';
UPDATE application.request_type SET display_value = 'Service Enquiry', nr_days_to_complete = 1, base_fee = 0.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'serviceEnquiry';
UPDATE application.request_type SET display_value = 'Deed Registration', nr_days_to_complete = 3, base_fee = 1.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'regnDeeds';
UPDATE application.request_type SET display_value = 'Registration on Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.01, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'regnOnTitle';
UPDATE application.request_type SET display_value = 'Registration of Power of Attorney', nr_days_to_complete = 3, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'regnPowerOfAttorney';
UPDATE application.request_type SET display_value = 'Registration of Standard Document', nr_days_to_complete = 3, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'regnStandardDocument';
UPDATE application.request_type SET display_value = 'Title Search', nr_days_to_complete = 1, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'titleSearch';
UPDATE application.request_type SET display_value = 'Survey Plan Copy', nr_days_to_complete = 1, base_fee = 1.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'surveyPlanCopy';
UPDATE application.request_type SET display_value = 'Cadastre Print', nr_days_to_complete = 1, base_fee = 0.50, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'cadastrePrint';
UPDATE application.request_type SET display_value = 'Cadastre Export', nr_days_to_complete = 1, base_fee = 0.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'cadastreExport';
UPDATE application.request_type SET display_value = 'Cadastre Bulk Export', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'cadastreBulk';
UPDATE application.request_type SET display_value = 'Register Lease', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.01, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'registerLease';
UPDATE application.request_type SET display_value = 'Occupation Noted', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.01, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'noteOccupation';
UPDATE application.request_type SET display_value = 'Change of Ownership', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.02, nr_properties_required = 1, notation_template = 'Transfer to <name>', description = '', status = 'x' WHERE code = 'newOwnership';
UPDATE application.request_type SET display_value = 'Register Usufruct', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = '<usufruct right granted to <name>', description = '', status = 'x' WHERE code = 'usufruct';
UPDATE application.request_type SET display_value = 'Register Water Rights', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.02, nr_properties_required = 1, notation_template = 'Water Rights granted to <name>', description = '', status = 'x' WHERE code = 'waterRights';
UPDATE application.request_type SET display_value = 'Register Mortgage', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Mortgage to <lender>', description = '', status = 'x' WHERE code = 'mortgage';
UPDATE application.request_type SET display_value = 'Register Building Restriction', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Building Restriction', description = '', status = 'x' WHERE code = 'noBuilding';
UPDATE application.request_type SET display_value = 'Register Servitude', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Servitude over <parcel1> in favour of <parcel2>', description = '', status = 'x' WHERE code = 'servitude';
UPDATE application.request_type SET display_value = 'Establish Life Estate', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Life Estate for <name1> with Remainder Estate in <name2, name3>', description = '', status = 'x' WHERE code = 'lifeEstate';
UPDATE application.request_type SET display_value = 'New Apartment Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Apartment Estate', description = '', status = 'x' WHERE code = 'newApartment';
UPDATE application.request_type SET display_value = 'New State Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'State Estate', description = '', status = 'x' WHERE code = 'newState';
UPDATE application.request_type SET display_value = 'Register Caveat', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Caveat in the name of <name>', description = '', status = 'x' WHERE code = 'caveat';
UPDATE application.request_type SET display_value = 'Remove Caveat', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Caveat <reference> removed', description = '', status = 'x' WHERE code = 'removeCaveat';
UPDATE application.request_type SET display_value = 'Register Historic Preservation Order', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Historic Preservation Order', description = '', status = 'x' WHERE code = 'historicOrder';
UPDATE application.request_type SET display_value = 'Register Limited Road Access', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Limited Road Access', description = '', status = 'x' WHERE code = 'limitedRoadAccess';
UPDATE application.request_type SET display_value = 'Vary Lease', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation of Lease <reference>', description = '', status = 'x' WHERE code = 'varyLease';
UPDATE application.request_type SET display_value = 'Vary Right (General)', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation of <right> <reference>', description = '', status = 'x' WHERE code = 'varyRight';
UPDATE application.request_type SET display_value = 'Remove Right (General)', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = '<right> <reference> cancelled', description = '', status = 'x' WHERE code = 'removeRight';
UPDATE application.request_type SET display_value = 'Convert to Digital Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title converted to digital format', description = '', status = 'x' WHERE code = 'newDigitalTitle';
UPDATE application.request_type SET display_value = 'Remove Restriction (General)', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = '<restriction> <reference> cancelled', description = '', status = 'x' WHERE code = 'removeRestriction';
UPDATE application.request_type SET display_value = 'Cancel Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title Cancelled', description = '', status = 'x' WHERE code = 'cancelProperty';
UPDATE application.request_type SET display_value = 'Vary Caveat', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation to Caveat <reference>', description = '', status = 'x' WHERE code = 'varyCaveat';
UPDATE application.request_type SET display_value = 'Cancel Power of Attorney', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'cnclPowerOfAttorney';
UPDATE application.request_type SET display_value = 'Withdraw Standard Document', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = 'To withdraw from use any standard document (such as standard mortgage or standard lease)', status = 'x' WHERE code = 'cnclStandardDocument';
UPDATE application.request_type SET display_value = 'Systematic Registration Claim', nr_days_to_complete = 90, base_fee = 50.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title issued at completion of systematic registration', description = '', status = 'c' WHERE code = 'systematicRegn';
UPDATE application.request_type SET display_value = 'Lodge Objection', nr_days_to_complete = 90, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'lodgeObjection';

--Updating Land use type

INSERT INTO Cadastre.land_use_type (code, display_value ,description ,status) VALUES('religious','Religious','','c') ;
INSERT INTO Cadastre.land_use_type (code, display_value ,description ,status) VALUES('recreational','Recreational','','c') ;
INSERT INTO Cadastre.land_use_type (code, display_value ,description ,status) VALUES('educational','Educational','','c'); 



--Updating name_lastpart for application_property and ba_unit tables (before the views which depend on these table are dropped and subsequently recreated)

     --Dropping the view depending on those columns
	DROP VIEW administrative.sys_reg_owner_name;
	DROP VIEW administrative.sys_reg_state_land;
	DROP VIEW administrative.systematic_registration_listing;
	DROP VIEW application.systematic_registration_certificates;

     --Updating the tables
	ALTER TABLE  administrative.ba_unit DROP COLUMN name_lastpart;
	ALTER TABLE  administrative.ba_unit ADD COLUMN name_lastpart character varying(50);
	ALTER TABLE  administrative.ba_unit_historic DROP COLUMN name_lastpart;
	ALTER TABLE  administrative.ba_unit_historic ADD COLUMN name_lastpart character varying(50);


	ALTER TABLE  application.application_property DROP COLUMN name_lastpart;
	ALTER TABLE  application.application_property ADD COLUMN name_lastpart character varying(50);
	ALTER TABLE  application.application_property_historic DROP COLUMN name_lastpart;
	ALTER TABLE  application.application_property_historic ADD COLUMN name_lastpart character varying(50);

        --Creating again the views
	--administrative.sys_reg_owner_name;
	CREATE OR REPLACE VIEW administrative.sys_reg_owner_name AS 
         SELECT (pp.name::text || ' '::text) || COALESCE(pp.last_name, ''::character varying)::text AS value, pp.name::text AS name, COALESCE(pp.last_name, ''::character varying)::text AS last_name, co.id, co.name_firstpart, co.name_lastpart, get_translation(lu.display_value, NULL::character varying) AS land_use_code, su.ba_unit_id, sa.size, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'residential'::text THEN sa.size
                    ELSE 0::numeric
                END AS residential, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'agricultural'::text THEN sa.size
                    ELSE 0::numeric
                END AS agricultural, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'commercial'::text THEN sa.size
                    ELSE 0::numeric
                END AS commercial, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'industrial'::text THEN sa.size
                    ELSE 0::numeric
                END AS industrial
           FROM cadastre.land_use_type lu, cadastre.cadastre_object co, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s, party.party pp, administrative.party_for_rrr pr, administrative.rrr rrr, administrative.ba_unit bu
          WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND s.status_code::text = 'completed'::text AND pp.id::text = pr.party_id::text AND pr.rrr_id::text = rrr.id::text AND rrr.ba_unit_id::text = su.ba_unit_id::text AND (rrr.type_code::text = 'ownership'::text OR rrr.type_code::text = 'apartment'::text OR rrr.type_code::text = 'commonOwnership'::text) AND bu.id::text = su.ba_unit_id::text AND COALESCE(co.land_use_code, 'residential'::character varying)::text = lu.code::text
	UNION 
         SELECT DISTINCT 'No Claimant '::text AS value, 'No Claimant '::text AS name, 'No Claimant '::text AS last_name, co.id, co.name_firstpart, co.name_lastpart, get_translation(lu.display_value, NULL::character varying) AS land_use_code, su.ba_unit_id, sa.size, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'residential'::text THEN sa.size
                    ELSE 0::numeric
                END AS residential, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'agricultural'::text THEN sa.size
                    ELSE 0::numeric
                END AS agricultural, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'commercial'::text THEN sa.size
                    ELSE 0::numeric
                END AS commercial, 
                CASE
                    WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'industrial'::text THEN sa.size
                    ELSE 0::numeric
                END AS industrial
           FROM cadastre.land_use_type lu, cadastre.cadastre_object co, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, party.party pp, administrative.party_for_rrr pr, administrative.rrr rrr, application.service s, administrative.ba_unit bu
          WHERE sa.spatial_unit_id::text = co.id::text AND COALESCE(co.land_use_code, 'residential'::character varying)::text = lu.code::text AND sa.type_code::text = 'officialArea'::text AND bu.id::text = su.ba_unit_id::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) AND aa.id::text = ap.application_id::text AND NOT (su.ba_unit_id::text IN ( SELECT rrr.ba_unit_id
                   FROM administrative.rrr rrr, party.party pp, administrative.party_for_rrr pr
                  WHERE (rrr.type_code::text = 'ownership'::text OR rrr.type_code::text = 'apartment'::text OR rrr.type_code::text = 'commonOwnership'::text OR rrr.type_code::text = 'stateOwnership'::text) AND pp.id::text = pr.party_id::text AND pr.rrr_id::text = rrr.id::text)) AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND s.status_code::text = 'completed'::text
	ORDER BY 3, 2;

	ALTER TABLE administrative.sys_reg_owner_name OWNER TO postgres;

	-- administrative.sys_reg_state_land;
	CREATE OR REPLACE VIEW administrative.sys_reg_state_land AS 
	SELECT (pp.name::text || ' '::text) || COALESCE(pp.last_name, ' '::character varying)::text AS value, co.id, co.name_firstpart, co.name_lastpart, get_translation(lu.display_value, NULL::character varying) AS land_use_code, su.ba_unit_id, sa.size, 
	CASE
            WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'residential'::text THEN sa.size
            ELSE 0::numeric
        END AS residential, 
        CASE
            WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'agricultural'::text THEN sa.size
            ELSE 0::numeric
        END AS agricultural, 
        CASE
            WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'commercial'::text THEN sa.size
            ELSE 0::numeric
        END AS commercial, 
        CASE
            WHEN COALESCE(co.land_use_code, 'residential'::character varying)::text = 'industrial'::text THEN sa.size
            ELSE 0::numeric
        END AS industrial
	FROM cadastre.land_use_type lu, cadastre.cadastre_object co, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s, party.party pp, administrative.party_for_rrr pr, administrative.rrr rrr, administrative.ba_unit bu
	WHERE sa.spatial_unit_id::text = co.id::text AND COALESCE(co.land_use_code, 'residential'::character varying)::text = lu.code::text AND sa.type_code::text = 'officialArea'::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND s.status_code::text = 'completed'::text AND pp.id::text = pr.party_id::text AND pr.rrr_id::text = rrr.id::text AND rrr.ba_unit_id::text = su.ba_unit_id::text AND rrr.type_code::text = 'stateOwnership'::text AND bu.id::text = su.ba_unit_id::text
	ORDER BY (pp.name::text || ' '::text) || COALESCE(pp.last_name, ' '::character varying)::text;

	ALTER TABLE administrative.sys_reg_state_land OWNER TO postgres;

	--administrative.systematic_registration_listing;
	CREATE OR REPLACE VIEW administrative.systematic_registration_listing AS 
	SELECT DISTINCT co.id, co.name_firstpart, co.name_lastpart, sa.size, get_translation(lu.display_value, NULL::character varying) AS land_use_code, su.ba_unit_id, (bu.name_firstpart::text || '/'::text) || bu.name_lastpart::text AS name
	FROM cadastre.land_use_type lu, cadastre.cadastre_object co, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s, administrative.ba_unit bu
	WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text OR ap.name_lastpart::text = bu.name_lastpart::text AND ap.name_firstpart::text = bu.name_firstpart::text) AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND s.status_code::text = 'completed'::text AND COALESCE(co.land_use_code, 'residential'::character varying)::text = lu.code::text AND bu.id::text = su.ba_unit_id::text;

	ALTER TABLE administrative.systematic_registration_listing OWNER TO postgres;

	--application.systematic_registration_certificates;
	CREATE OR REPLACE VIEW application.systematic_registration_certificates AS 
	SELECT aa.nr, co.name_firstpart, co.name_lastpart, su.ba_unit_id
	FROM application.application_status_type ast, cadastre.land_use_type lu, cadastre.cadastre_object co, administrative.ba_unit bu, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s
	WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text OR (ap.name_firstpart::text || ap.name_lastpart::text) = (bu.name_firstpart::text || bu.name_lastpart::text)) AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND aa.status_code::text = ast.code::text AND aa.status_code::text = 'approved'::text AND COALESCE(ap.land_use_code, 'residential'::character varying)::text = lu.code::text;

	ALTER TABLE application.systematic_registration_certificates OWNER TO postgres;
