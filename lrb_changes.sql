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
CREATE TABLE party.state_origin_type
(
    state_id varchar(40) PRIMARY KEY,
    code varchar(20) NOT NULL,
    display_value varchar(250) NOT NULL,
    status char(1) NOT NULL,
    description varchar(555)
);

CREATE TABLE party.lga_type
(
	lag_id varchar(40) PRIMARY KEY,
    state_id varchar(40) ,
    code varchar(20) NOT NULL,
    display_value varchar(250) NOT NULL,
    status char(1) NOT NULL,
    description varchar(555)
);

ALTER TABLE party.party ADD state_of_origin varchar(40);
ALTER TABLE party.party ADD lga_code varchar(40);
ALTER TABLE party.party ADD home_town varchar(40);
ALTER TABLE party.party ADD date_of_birth date;
ALTER TABLE party.party ADD occupation varchar(40);
ALTER TABLE party.party ADD corporate_name varchar(40);

--Adding present_home_address_id field
ALTER TABLE party.party ADD present_home_address_id varchar(40);



--Adding employer_name field
ALTER TABLE party.party ADD employer_name varchar(40);

--adding employer address id
ALTER TABLE party.party ADD employer_address_id varchar(40);

--Adding employer_name field
--ALTER TABLE party.party ADD lga_id varchar(40);

ALTER TABLE party.party
ADD CONSTRAINT party_employer_address_id FOREIGN KEY (employer_address_id)
      REFERENCES address.address (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;


ALTER TABLE party.party 
	ADD CONSTRAINT party_present_home_address_id_fk11 FOREIGN KEY (present_home_address_id)
      REFERENCES address.address (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE RESTRICT;

ALTER TABLE party.party 
     ADD CONSTRAINT party_lga_id_fk13 FOREIGN KEY (lga_code)
      REFERENCES party.lga_type (lga_id) MATCH SIMPLE
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

--Increase the applcation number field
--ALTER TABLE application.application ALTER COLUMN nr TYPE character varying(45) USING nr::character;


--insert sampled ata into state of origin and lga of origin

