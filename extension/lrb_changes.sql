--Insert the CofO request type into the request types table
insert into application.request_type(code, request_category_code, display_value, status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template) values('newCofO', 'registrationServices', 'Register for a New C of O', 'c', 30, 5000.00, 0.00, 0, 1, 'A Certificate of Occupancy to have occupancy of a parcel for up to 99 years');


--Deactivate all other services...such that only C of O registration service can be carried out
UPDATE application.request_type SET display_value = 'Change to Cadastre', nr_days_to_complete = 30, base_fee = 25.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'cadastreChange';
UPDATE application.request_type SET display_value = 'Redefine Cadastre', nr_days_to_complete = 30, base_fee = 25.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'redefineCadastre';
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
UPDATE application.request_type SET display_value = 'Systematic Registration Claim', nr_days_to_complete = 90, base_fee = 50.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title issued at completion of systematic registration', description = '', status = 'x' WHERE code = 'systematicRegn';
UPDATE application.request_type SET display_value = 'Lodge Objection', nr_days_to_complete = 90, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'lodgeObjection';

--Now insert proper entries for approle
insert into system.approle(code, display_value, status, description) values('newCofO', 'Register for a New C of O', 'c', 'Allows to register a new Certificate of Occupancy to have occupancy of a parcel for up to 99 years');


--Now create tables within the party schema to house the new fields that were added from the Manual form
--using the serial data type for auto incrementing of the state_id
--aslo the state code must be unique
CREATE TABLE party.state_origin_type
(
    state_id SERIAL NOT NULL PRIMARY KEY,
    code varchar(20) NOT NULL,
    display_value varchar(250) NOT NULL,
    status char(1) NOT NULL,
    description varchar(555),
    CONSTRAINT unique_state_code UNIQUE (code)
);

CREATE TABLE party.lga_type
(
	lga_id SERIAL  NOT NULL PRIMARY KEY,
    state_code varchar(40) ,
    code varchar(20) NOT NULL,
    display_value varchar(250) NOT NULL,
    status char(1) NOT NULL,
    description varchar(555)
);

ALTER TABLE party.party ADD state_code varchar(40); --to ref the 'code' column in party.state_origin_type
ALTER TABLE party.party ADD lga_id varchar(40); --to ref the lga_id in party.lga_type
ALTER TABLE party.party ADD home_town varchar(40);
ALTER TABLE party.party ADD date_of_birth date;
ALTER TABLE party.party ADD occupation varchar(40);
ALTER TABLE party.party ADD corporate_name varchar(40);

ALTER TABLE party.party_historic ADD state_code varchar(40); --to ref the 'code' column in party.state_origin_type
ALTER TABLE party.party_historic ADD lga_id varchar(40); --to ref the lga_id in party.lga_type
ALTER TABLE party.party_historic ADD home_town varchar(40);
ALTER TABLE party.party_historic ADD date_of_birth date;
ALTER TABLE party.party_historic ADD occupation varchar(40);
ALTER TABLE party.party_historic ADD corporate_name varchar(40);

--Adding present_home_address_id field
ALTER TABLE party.party ADD present_home_address_id varchar(40);
--Adding employer_name field
ALTER TABLE party.party ADD employer_name varchar(40);
--adding employer address id
ALTER TABLE party.party ADD employer_address_id varchar(40);


--Adding present_home_address_id field to party_historic
ALTER TABLE party.party_historic ADD present_home_address_id varchar(40);
--Adding employer_name field
ALTER TABLE party.party_historic ADD employer_name varchar(40);
--adding employer address id
ALTER TABLE party.party_historic ADD employer_address_id varchar(40);


ALTER TABLE party.party
ADD CONSTRAINT party_employer_address_id FOREIGN KEY (employer_address_id)
      REFERENCES address.address (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;


ALTER TABLE party.party 
	ADD CONSTRAINT party_present_home_address_id_fk11 FOREIGN KEY (present_home_address_id)
      REFERENCES address.address (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE party.party 
     ADD CONSTRAINT party_lga_id_fk13 FOREIGN KEY (lga_id)
      REFERENCES party.lga_type (lga_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;


ALTER TABLE party.party 
     ADD CONSTRAINT party_state_id_fk13 FOREIGN KEY (state_code)
      REFERENCES party.state_origin_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;


ALTER TABLE party.lga_type
     ADD CONSTRAINT party_lga_type_fk13 FOREIGN KEY (state_code)
      REFERENCES party.state_origin_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;


CREATE TABLE application.capacity_type
(
    code varchar(20) PRIMARY KEY,
    display_value varchar(250) NOT NULL,
    status char(1) NOT NULL,
    description varchar(555)
);

CREATE TABLE application.land_use_type
(
    code varchar(20) PRIMARY KEY,
    display_value varchar(250) NOT NULL,
    status char(1) NOT NULL,
    description varchar(555)
);

ALTER TABLE application.application_property ADD capacity_in_which_property_is_owned character varying(100);
ALTER TABLE application.application_property ADD land_use_code character varying(20);
ALTER TABLE application.application_property ADD location_of_property character varying(45);
ALTER TABLE application.application_property ADD development_stage character varying(45);
ALTER TABLE application.application_property ADD property_duration character varying(45);


ALTER TABLE application.application_property
   ADD CONSTRAINT application_property_land_use_code_fk126 FOREIGN KEY (land_use_code)
      REFERENCES cadastre.land_use_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE application.application_property      
  ADD CONSTRAINT capacity_code_fk FOREIGN KEY (capacity_in_which_property_is_owned)
      REFERENCES application.capacity_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;
ALTER TABLE application.application_property
     ADD  CONSTRAINT development_stage_fk FOREIGN KEY (development_stage)
      REFERENCES application.development_stage_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;
 ALTER TABLE application.application_property
    ADD	CONSTRAINT location_of_property_fk FOREIGN KEY (location_of_property)
      REFERENCES address.address (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE application.application_property_historic ADD capacity_in_which_property_is_owned character varying(100);
ALTER TABLE application.application_property_historic ADD land_use_code character varying(20);
ALTER TABLE application.application_property_historic ADD location_of_property character varying(45);
ALTER TABLE application.application_property_historic ADD property_duration character varying(45);


--Create the Development stage Type table jare
CREATE TABLE application.development_stage_type
(
  code character varying(20) PRIMARY KEY,
  display_value character varying(250) NOT NULL,
  status character(1) NOT NULL,
  description character varying(555)
);

--Now insert sampl data into development_stage and capacity_type tables
INSERT INTO application.development_stage_type (code, display_value ,description ,status) VALUES('completed','Completed','','c'); 
INSERT INTO application.development_stage_type (code, display_value ,description ,status) VALUES('fenced','Fenced','','c'); 
INSERT INTO application.development_stage_type (code, display_value ,description ,status) VALUES('cleared','Cleared','','c'); 

INSERT INTO application.capacity_type (code, display_value ,description ,status) VALUES('purchased','Purchased','','c'); 
INSERT INTO application.capacity_type (code, display_value ,description ,status) VALUES('inherited','Inherited','','c'); 
INSERT INTO application.capacity_type (code, display_value ,description ,status) VALUES('leased','Leased','','c'); 

--ALTER TABLE application.application ALTER COLUMN nr TYPE character varying(45) USING nr::character;






--ensure the lga_id field is properly created in the creation script ..DONE!

-- To increase the application number field DONE!
--Now dropping view
DROP VIEW application.systematic_registration_certificates;
--Now, adjust the size of the application nr column and then recreate the view
ALTER TABLE application.application ALTER COLUMN nr TYPE character varying(45) USING nr::character;

--now, recreate view
CREATE OR REPLACE VIEW application.systematic_registration_certificates AS 
 SELECT aa.nr, co.name_firstpart, co.name_lastpart, su.ba_unit_id, sg.name::text AS name
   FROM application.application_status_type ast, cadastre.spatial_unit_group sg, cadastre.land_use_type lu, cadastre.cadastre_object co, administrative.ba_unit bu, cadastre.spatial_value_area sa, administrative.ba_unit_contains_spatial_unit su, application.application_property ap, application.application aa, application.service s
  WHERE sa.spatial_unit_id::text = co.id::text AND sa.type_code::text = 'officialArea'::text AND st_intersects(st_pointonsurface(co.geom_polygon), sg.geom) AND su.spatial_unit_id::text = sa.spatial_unit_id::text AND (ap.ba_unit_id::text = su.ba_unit_id::text OR (ap.name_firstpart::text || ap.name_lastpart::text) = (bu.name_firstpart::text || bu.name_lastpart::text)) AND aa.id::text = ap.application_id::text AND s.application_id::text = aa.id::text AND s.request_type_code::text = 'systematicRegn'::text AND aa.status_code::text = ast.code::text AND (aa.status_code::text = 'approved'::text OR aa.status_code::text = 'archived'::text) AND COALESCE(ap.land_use_code, 'residential'::character varying)::text = lu.code::text;

ALTER TABLE application.systematic_registration_certificates
  OWNER TO postgres;
  
--associate the newCofO service with the Super User role in the appgroup table...yea?
insert into system.approle_appgroup(approle_code, appgroup_id) values('newCofO', 'super-group-id');


--insert sample data into state of origin and lga of origin
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('abia', 'Abia','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('adamawa', 'Adamawa','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('akwaibom', 'Akwa-Ibom','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('anambra', 'Anambra','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('bauchi', 'Bauchi','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('bayelsa', 'Bayelsa','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('benue', 'Benue','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('borno', 'Borno','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('crossriver', 'Cross-River','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('delta', 'Delta','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('ebonyi', 'Ebonyi','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('edo', 'Edo','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('ekiti', 'Ekiti','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('enugu', 'Enugu','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('gombe', 'Gombe','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('imo', 'Imo','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('jigawa', 'Jigawa','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('kaduna', 'Kaduna','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('kano', 'Kano','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('katsina', 'Katsina','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('kebbi', 'Kebbi','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('kogi', 'Kogi','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('kwara', 'Kwara','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('lagos', 'Lagos','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('nasarawa', 'Nasarawa','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('niger', 'Niger','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('ogun', 'Ogun','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('ondo', 'Ondo','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('osun', 'Osun','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('oyo', 'Oyo','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('plateau', 'Plateau','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('rivers', 'Rivers','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('sokoto', 'Sokoto','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('taraba', 'Taraba','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('yobe', 'Yobe','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('zamfara', 'Zamfara','','c');
INSERT INTO party.state_origin_type ( code, display_value ,description ,status) VALUES ('fct', 'FCT','','c');



 -- Data for the table cadastre.land_use_type -- 

DELETE FROM cadastre.land_use_type;


insert into cadastre.land_use_type(code, display_value, status) values('commercial', 'Commercial', 'c');
insert into cadastre.land_use_type(code, display_value, status) values('residential', 'Residential', 'c');
insert into cadastre.land_use_type(code, display_value, status) values('industrial', 'Industrial', 'c');
insert into cadastre.land_use_type(code, display_value, status) values('agricultural', 'Agricultural', 'c');


--nullify the duplicate Ownership RRR type
update administrative.rrr_type set status = 'x' where code = 'occupation';

--enforce requiring certain document types for certain request types
insert into application.request_type_requires_source_type(source_type_code, request_type_code) values('approvedPlan','newCofO');
insert into application.request_type_requires_source_type(source_type_code, request_type_code) values('idVerification','newCofO');
insert into application.request_type_requires_source_type(source_type_code, request_type_code) values('ownershipEvidence','newCofO');
insert into application.request_type_requires_source_type(source_type_code, request_type_code) values('taxClearance','newCofO');


--insert new document types
insert into source.administrative_source_type(code, display_value, description, status, is_for_registration) values('approvedPlan','Approved Survey Plan','','c','TRUE');
insert into source.administrative_source_type(code, display_value, description, status, is_for_registration) values('ownershipEvidence','Evidence of Ownership','','c','TRUE');
insert into source.administrative_source_type(code, display_value, description, status, is_for_registration) values('taxClearance','Tax Clearance Receipt/ Development Levy','','c','TRUE');


--Now unto the codes for Locations et al
CREATE TABLE application.location_code_type(
   code varchar(20) NOT NULL PRIMARY KEY,
   display_value varchar(250), 
   status char(1), 
   description varchar(555)
);

insert into application.location_code_type(code, display_value, status, description) values('A', 'Akure Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('W', 'Owo Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('N', 'Idanre/Ifedore Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('D', 'Ondo Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('K', 'Ikare Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('H', 'Oka Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('B', 'Igbokoda Area', 'c', '');
insert into application.location_code_type(code, display_value, status, description) values('T', 'Okitipupa Area', 'c', '');


alter table application.application_property add location_code varchar(20);

alter table application.application_property 
ADD CONSTRAINT location_code_fk FOREIGN KEY (location_code)
      REFERENCES application.location_code_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;



alter table application.application_property_historic add location_code varchar(20);

alter table application.application_property_historic 
ADD CONSTRAINT location_code_fk FOREIGN KEY (location_code)
      REFERENCES application.location_code_type (code) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;

--drp the redundant apploication.land_use_type table
drop table application.land_use_type;

--alter the cadastre.land_use_type tables
alter table cadastre.land_use_type add deemed_right_use_code varchar(50);
alter table cadastre.land_use_type add allocation_use_code varchar(50);


--land use codes to Alphabets
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('commercial', 'Commercial', 'c', 'C','B');
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('industrial', 'Industrial', 'c','D','C');
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('agricultural', 'Agricultural', 'c','A','F');
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('residential', 'Residential', 'c','B','A');
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('religious', 'Religious', 'c','G','D');
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('recreational', 'Recreational', 'c','','E');
insert into cadastre.land_use_type(code, display_value, status, deemed_right_use_code, allocation_use_code) values('educational', 'Educational', 'c','E','G');














