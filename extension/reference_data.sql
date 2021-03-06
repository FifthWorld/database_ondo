﻿--Codelist Changes - Ondo State, Nigeria



SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = administrative, pg_catalog;

--
-- Data for Name: ba_unit_rel_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--
UPDATE administrative.ba_unit_rel_type SET display_value = 'Prior Title', status = 'c', description = '' WHERE code = 'priorTitle';
UPDATE administrative.ba_unit_rel_type SET display_value = 'Root of Title', status = 'x', description = '' WHERE code = 'rootTitle';
--
-- Data for Name: ba_unit_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--
UPDATE administrative.ba_unit_type SET display_value = 'Basic Property Unit', status = 'c', description = 'This is the basic property unit that is used by default' WHERE code = 'basicPropertyUnit';
UPDATE administrative.ba_unit_type SET display_value = 'Leased Unit', status = 'x', description = 'This is the basic property unit that is used by default' WHERE code = 'leasedUnit';
UPDATE administrative.ba_unit_type SET display_value = 'Property Property Unit', status = 'x', description = 'This is the basic property unit that is used by default' WHERE code = 'propertyRightUnit';
UPDATE administrative.ba_unit_type SET display_value = 'Administrative Unit', status = 'c', description = 'This is the basic property unit that is used by default' WHERE code = 'administrativeUnit';

--
-- Data for Name: mortgage_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

UPDATE mortgage_type SET display_value = 'Level Payment', status = 'x', description = '' WHERE code = 'levelPayment';
UPDATE mortgage_type SET display_value = 'Linear', status = 'c', description = '' WHERE code = 'linear';
UPDATE mortgage_type SET display_value = 'Micro Credit', status = 'x', description = '' WHERE code = 'microCredit';


--
-- Data for Name: rrr_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

UPDATE rrr_type SET display_value = 'Agriculture Activity', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'agriActivity';
UPDATE rrr_type SET display_value = 'Common Ownership', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'commonOwnership';
UPDATE rrr_type SET display_value = 'Customary Right', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'customaryRight';
UPDATE rrr_type SET display_value = 'Firewood Collection', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'firewood';
UPDATE rrr_type SET display_value = 'Fishing Right', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'fishing';
UPDATE rrr_type SET display_value = 'Grazing Right', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'grazing';
UPDATE rrr_type SET display_value = 'Informal Occupation', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'informalOccupation';
UPDATE rrr_type SET display_value = 'Lease', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'lease';
UPDATE rrr_type SET display_value = 'Occupation', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'occupation';
UPDATE rrr_type SET display_value = 'Ownership', is_primary = true, party_required = true, description = '', status = 'c' WHERE code = 'occupation';
UPDATE rrr_type SET display_value = 'Ownership Assumed', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'ownershipAssumed';
UPDATE rrr_type SET display_value = 'Superficies', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'superficies';
UPDATE rrr_type SET display_value = 'Tenancy', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'tenancy';
UPDATE rrr_type SET display_value = 'Usufruct', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'usufruct';
UPDATE rrr_type SET display_value = 'Water Rights', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'waterrights';
UPDATE rrr_type SET display_value = 'Administrative Public Servitude', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'adminPublicServitude';
UPDATE rrr_type SET display_value = 'Monument', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'monument';
UPDATE rrr_type SET display_value = 'Mortgage', is_primary = false, party_required = true, description = '', status = 'c' WHERE code = 'mortgage';
UPDATE rrr_type SET display_value = 'Building Restriction', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'noBuilding';
UPDATE rrr_type SET display_value = 'Servitude', is_primary = false, party_required = true, description = '', status = 'c' WHERE code = 'servitude';
UPDATE rrr_type SET display_value = 'Monument Maintenance', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'monumentMaintenance';
UPDATE rrr_type SET display_value = 'Waterway Maintenance', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'waterwayMaintenance';
UPDATE rrr_type SET display_value = 'Life Estate', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'lifeEstate';
UPDATE rrr_type SET display_value = 'Apartment', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'apartment';
UPDATE rrr_type SET display_value = 'State Ownership', is_primary = false, party_required = true, description = '', status = 'c' WHERE code = 'stateOwnership';
UPDATE rrr_type SET display_value = 'Caveat', is_primary = false, party_required = true, description = '', status = 'c' WHERE code = 'caveat';
UPDATE rrr_type SET display_value = 'Historic Preservation', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'historicPreservation';
UPDATE rrr_type SET display_value = 'Limited Access (to Road)', is_primary = false, party_required = true, description = '', status = 'x' WHERE code = 'limitedAccess';

--
-- Data for Name: request_type; Type: TABLE DATA; Schema: application; Owner: postgres
--

UPDATE application.request_type SET display_value = 'Change to Cadastre', nr_days_to_complete = 30, base_fee = 25.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'cadastreChange';
UPDATE application.request_type SET display_value = 'Redefine Cadastre', nr_days_to_complete = 30, base_fee = 25.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'redefineCadastre';
UPDATE application.request_type SET display_value = 'Document Copy', nr_days_to_complete = 1, base_fee = 0.50, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'documentCopy';
UPDATE application.request_type SET display_value = 'Vary Mortgage', nr_days_to_complete = 1, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation to mortgage with < bank name>', description = '', status = 'x' WHERE code = 'varyMortgage';
UPDATE application.request_type SET display_value = 'New Freehold Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'newFreehold';
UPDATE application.request_type SET display_value = 'Service Enquiry', nr_days_to_complete = 1, base_fee = 0.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'serviceEnquiry';
UPDATE application.request_type SET display_value = 'Deed Registration', nr_days_to_complete = 3, base_fee = 1.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'regnDeeds';
UPDATE application.request_type SET display_value = 'Registration on Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.01, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'regnOnTitle';
UPDATE application.request_type SET display_value = 'Registration of Power of Attorney', nr_days_to_complete = 3, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'regnPowerOfAttorney';
UPDATE application.request_type SET display_value = 'Registration of Standard Document', nr_days_to_complete = 3, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'regnStandardDocument';
UPDATE application.request_type SET display_value = 'Title Search', nr_days_to_complete = 1, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'titleSearch';
UPDATE application.request_type SET display_value = 'Survey Plan Copy', nr_days_to_complete = 1, base_fee = 1.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'surveyPlanCopy';
UPDATE application.request_type SET display_value = 'Cadastre Print', nr_days_to_complete = 1, base_fee = 0.50, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'cadastrePrint';
UPDATE application.request_type SET display_value = 'Cadastre Export', nr_days_to_complete = 1, base_fee = 0.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'cadastreExport';
UPDATE application.request_type SET display_value = 'Cadastre Bulk Export', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.10, value_base_fee = 0.00, nr_properties_required = 0, description = '', status = 'x' WHERE code = 'cadastreBulk';
UPDATE application.request_type SET display_value = 'Register Lease', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.01, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'registerLease';
UPDATE application.request_type SET display_value = 'Occupation Noted', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.01, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'noteOccupation';
UPDATE application.request_type SET display_value = 'Change of Ownership', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.02, nr_properties_required = 1, notation_template = 'Transfer to <name>', description = '', status = 'c' WHERE code = 'newOwnership';
UPDATE application.request_type SET display_value = 'Register Usufruct', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = '<usufruct right granted to <name>', description = '', status = 'x' WHERE code = 'usufruct';
UPDATE application.request_type SET display_value = 'Register Water Rights', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.02, nr_properties_required = 1, notation_template = 'Water Rights granted to <name>', description = '', status = 'x' WHERE code = 'waterRights';
UPDATE application.request_type SET display_value = 'Register Mortgage', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Mortgage to <lender>', description = '', status = 'c' WHERE code = 'mortgage';
UPDATE application.request_type SET display_value = 'Register Building Restriction', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Building Restriction', description = '', status = 'x' WHERE code = 'noBuilding';
UPDATE application.request_type SET display_value = 'Register Servitude', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Servitude over <parcel1> in favour of <parcel2>', description = '', status = 'c' WHERE code = 'servitude';
UPDATE application.request_type SET display_value = 'Establish Life Estate', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Life Estate for <name1> with Remainder Estate in <name2, name3>', description = '', status = 'x' WHERE code = 'lifeEstate';
UPDATE application.request_type SET display_value = 'New Apartment Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Apartment Estate', description = '', status = 'x' WHERE code = 'newApartment';
UPDATE application.request_type SET display_value = 'New State Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'State Estate', description = '', status = 'c' WHERE code = 'newState';
UPDATE application.request_type SET display_value = 'Register Caveat', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Caveat in the name of <name>', description = '', status = 'x' WHERE code = 'caveat';
UPDATE application.request_type SET display_value = 'Remove Caveat', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Caveat <reference> removed', description = '', status = 'x' WHERE code = 'removeCaveat';
UPDATE application.request_type SET display_value = 'Register Historic Preservation Order', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Historic Preservation Order', description = '', status = 'x' WHERE code = 'historicOrder';
UPDATE application.request_type SET display_value = 'Register Limited Road Access', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Limited Road Access', description = '', status = 'x' WHERE code = 'limitedRoadAccess';
UPDATE application.request_type SET display_value = 'Vary Lease', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation of Lease <reference>', description = '', status = 'x' WHERE code = 'varyLease';
UPDATE application.request_type SET display_value = 'Vary Right (General)', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation of <right> <reference>', description = '', status = 'x' WHERE code = 'varyRight';
UPDATE application.request_type SET display_value = 'Remove Right (General)', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = '<right> <reference> cancelled', description = '', status = 'x' WHERE code = 'removeRight';
UPDATE application.request_type SET display_value = 'Convert to Digital Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title converted to digital format', description = '', status = 'c' WHERE code = 'newDigitalTitle';
UPDATE application.request_type SET display_value = 'Remove Restriction (General)', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = '<restriction> <reference> cancelled', description = '', status = 'x' WHERE code = 'removeRestriction';
UPDATE application.request_type SET display_value = 'Cancel Title', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title Cancelled', description = '', status = 'x' WHERE code = 'cancelProperty';
UPDATE application.request_type SET display_value = 'Vary Caveat', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Variation to Caveat <reference>', description = '', status = 'x' WHERE code = 'varyCaveat';
UPDATE application.request_type SET display_value = 'Cancel Power of Attorney', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'x' WHERE code = 'cnclPowerOfAttorney';
UPDATE application.request_type SET display_value = 'Withdraw Standard Document', nr_days_to_complete = 5, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = 'To withdraw from use any standard document (such as standard mortgage or standard lease)', status = 'x' WHERE code = 'cnclStandardDocument';
UPDATE application.request_type SET display_value = 'Systematic Registration Claim', nr_days_to_complete = 90, base_fee = 50.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, notation_template = 'Title issued at completion of systematic registration', description = '', status = 'c' WHERE code = 'systematicRegn';
UPDATE application.request_type SET display_value = 'Lodge Objection', nr_days_to_complete = 90, base_fee = 5.00, area_base_fee = 0.00, value_base_fee = 0.00, nr_properties_required = 1, description = '', status = 'c' WHERE code = 'lodgeObjection';


SET search_path = source, pg_catalog;

--
-- Data for Name: administrative_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

UPDATE administrative_source_type SET display_value = 'Agricultural Consent', status = 'x', description = '' WHERE code = 'agriConsent';
UPDATE administrative_source_type SET display_value = 'Agricultural Lease', status = 'x', description = '' WHERE code = 'agriLease';
UPDATE administrative_source_type SET display_value = 'Agricultural Notary Statement', status = 'x', description = '' WHERE code = 'agriNotaryStatement';
UPDATE administrative_source_type SET display_value = 'Deed', status = 'c', description = '' WHERE code = 'deed';
UPDATE administrative_source_type SET display_value = 'Lease', status = 'c', description = '' WHERE code = 'lease';
UPDATE administrative_source_type SET display_value = 'Mortgage', status = 'c', description = '' WHERE code = 'mortgage';
UPDATE administrative_source_type SET display_value = 'Certificate of Occupancy', status = 'c', description = '' WHERE code = 'title';
UPDATE administrative_source_type SET display_value = 'Proclamation', status = 'c', description = '' WHERE code = 'proclamation';
UPDATE administrative_source_type SET display_value = 'Court Order', status = 'c', description = '' WHERE code = 'courtOrder';
UPDATE administrative_source_type SET display_value = 'Agreement', status = 'c', description = '' WHERE code = 'agreement';
UPDATE administrative_source_type SET display_value = 'Contract for Sale', status = 'c', description = '' WHERE code = 'contractForSale';
UPDATE administrative_source_type SET display_value = 'Will', status = 'x', description = '' WHERE code = 'will';
UPDATE administrative_source_type SET display_value = 'Power of Attorney', status = 'c', description = '' WHERE code = 'powerOfAttorney';
UPDATE administrative_source_type SET display_value = 'Standard Document', status = 'x', description = '' WHERE code = 'standardDocument';
UPDATE administrative_source_type SET display_value = 'Cadastral Map', status = 'x', description = '' WHERE code = 'cadastralMap';
UPDATE administrative_source_type SET display_value = 'Boundary Definition', status = 'c', description = '' WHERE code = 'cadastralSurvey';
UPDATE administrative_source_type SET display_value = 'Waiver to Caveat or other requirement', status = 'c', description = '' WHERE code = 'waiver';
UPDATE administrative_source_type SET display_value = 'Form of Identification including Personal ID', status = 'c', description = '' WHERE code = 'idVerification';
UPDATE administrative_source_type SET display_value = 'Caveat', status = 'x', description = '' WHERE code = 'caveat';
UPDATE administrative_source_type SET display_value = 'Public Notification for Systematic Registration', status = 'c', description = '' WHERE code = 'publicNotification';
UPDATE administrative_source_type SET display_value = 'Systematic Registration Application', status = 'c', description = '' WHERE code = 'systematicRegn';
UPDATE administrative_source_type SET display_value = 'Objection', status = 'c', description = '' WHERE code = 'objection';
UPDATE administrative_source_type SET display_value = 'PDF Scanned Document', status = 'x', description = '' WHERE code = 'pdf';
UPDATE administrative_source_type SET display_value = 'TIFF Scanned Document', status = 'x', description = '' WHERE code = 'tiff';
UPDATE administrative_source_type SET display_value = 'JPG Scanned Document', status = 'x', description = '' WHERE code = 'jpg';
UPDATE administrative_source_type SET display_value = 'TIF Scanned Document', status = 'x', description = '' WHERE code = 'tif';
--INSERT INTO administrative_source_type VALUES ('tif', 'Tif Scanned Document', 'x', NULL, false);

SET search_path = application, pg_catalog;

--
-- Data for Name: request_type_requires_source_type; Type: TABLE DATA; Schema: application; Owner: postgres
--
--DELETE FROM application.request_type_requires_source_type WHERE request_type_code = 'systematicRegn';
--INSERT INTO application.request_type_requires_source_type (request_type_code, source_type_code) VALUES('systematicRegn', 'systematicRegn');
DELETE FROM application.request_type_requires_source_type WHERE request_type_code = 'lodgeObjection';
INSERT INTO application.request_type_requires_source_type (request_type_code, source_type_code) VALUES('lodgeObjection', 'objection');


SET search_path = cadastre, pg_catalog;

--
-- Data for Name: land_use_type; Type: TABLE DATA; Schema: cadastre; Owner: postgres
--

UPDATE land_use_type SET display_value = 'Commercial', status = 'c', description = '' WHERE code = 'commercial';
UPDATE land_use_type SET display_value = 'Residential', status = 'c', description = '' WHERE code = 'residential';
UPDATE land_use_type SET display_value = 'Industrial', status = 'c', description = '' WHERE code = 'industrial';
UPDATE land_use_type SET display_value = 'Agricultural', status = 'c', description = '' WHERE code = 'agricultural';
--INSERT INTO land_use_type VALUES ('agricultural', 'Agricultural::::ITALIANO', NULL, 'c');


SET search_path = party, pg_catalog;

--
-- Data for Name: communication_type; Type: TABLE DATA; Schema: party; Owner: postgres
--

UPDATE communication_type SET display_value = 'e-Mail', status = 'c', description = '' WHERE code = 'email';
UPDATE communication_type SET display_value = 'Fax', status = 'x', description = '' WHERE code = 'fax';
UPDATE communication_type SET display_value = 'Post', status = 'c', description = '' WHERE code = 'post';
UPDATE communication_type SET display_value = 'Phone', status = 'c', description = '' WHERE code = 'phone';
UPDATE communication_type SET display_value = 'Courier', status = 'x', description = '' WHERE code = 'courier';

--INSERT INTO communication_type VALUES ('courier', 'Courier::::Corriere', 'c', NULL);

--
-- Data for Name: group_party_type; Type: TABLE DATA; Schema: party; Owner: postgres
--

UPDATE group_party_type SET display_value = 'Tribe', status = 'c', description = '' WHERE code = 'tribe';
UPDATE group_party_type SET display_value = 'Association', status = 'c', description = '' WHERE code = 'association';
UPDATE group_party_type SET display_value = 'Family', status = 'c', description = '' WHERE code = 'family';
UPDATE group_party_type SET display_value = 'Basic Administrative Unit Group', status = 'c', description = '' WHERE code = 'baunitGroup';

--INSERT INTO group_party_type VALUES ('baunitGroup', 'Basic Administrative Unit Group::::Unita Gruppo Amministrativo di Base', 'x', NULL);

--
-- Data for Name: id_type; Type: TABLE DATA; Schema: party; Owner: postgres
--

UPDATE id_type SET display_value = 'National ID', status = 'c', description = '' WHERE code = 'nationalID';
UPDATE id_type SET display_value = 'National Passport', status = 'c', description = '' WHERE code = 'nationalPassport';
UPDATE id_type SET display_value = 'Other Passport', status = 'c', description = '' WHERE code = 'otherPassport';

--INSERT INTO id_type VALUES ('otherPassport', 'Other Passport::::Altro Passaporto', 'c', 'A passport issued by another country::::Passaporto Fornito da un altro paese');

--
-- Data for Name: party_role_type; Type: TABLE DATA; Schema: party; Owner: postgres
--

UPDATE party_role_type SET display_value = 'Conveyor', status = 'x', description = '' WHERE code = 'conveyor';
UPDATE party_role_type SET display_value = 'Notary', status = 'x', description = '' WHERE code = 'notary';
UPDATE party_role_type SET display_value = 'Writer', status = 'x', description = '' WHERE code = 'writer';
UPDATE party_role_type SET display_value = 'Surveyor', status = 'x', description = '' WHERE code = 'surveyor';
UPDATE party_role_type SET display_value = 'Licenced Surveyor', status = 'x', description = '' WHERE code = 'certifiedSurveyor';
UPDATE party_role_type SET display_value = 'Bank', status = 'c', description = '' WHERE code = 'bank';
UPDATE party_role_type SET display_value = 'Money Provider', status = 'x', description = '' WHERE code = 'moneyProvider';
UPDATE party_role_type SET display_value = 'Employee', status = 'x', description = '' WHERE code = 'employee';
UPDATE party_role_type SET display_value = 'Farmer', status = 'x', description = '' WHERE code = 'farmer';
UPDATE party_role_type SET display_value = 'Citizen', status = 'c', description = '' WHERE code = 'citizen';
UPDATE party_role_type SET display_value = 'Approving Officer', status = 'x', description = '' WHERE code = 'stateAdministrator';
UPDATE party_role_type SET display_value = 'Land Officer', status = 'x', description = '' WHERE code = 'landOfficer';
UPDATE party_role_type SET display_value = 'Lodging Agent', status = 'x', description = '' WHERE code = 'lodgingAgent';
UPDATE party_role_type SET display_value = 'Power of Attorney', status = 'c', description = '' WHERE code = 'powerOfAttorney';
UPDATE party_role_type SET display_value = 'Transferee', status = 'x', description = '' WHERE code = 'transferee';
UPDATE party_role_type SET display_value = 'Transferor', status = 'x', description = '' WHERE code = 'transferor';
UPDATE party_role_type SET display_value = 'Applicant', status = 'c', description = '' WHERE code = 'applicant';


--
-- Data for Name: spatial_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

UPDATE source.spatial_source_type SET display_value = 'Field Sketch', status = 'c', description = '' WHERE code = 'fieldSketch';
UPDATE source.spatial_source_type SET display_value = 'GNSS (GPS) Survey', status = 'c', description = '' WHERE code = 'gnssSurvey';
UPDATE source.spatial_source_type SET display_value = 'Orthophoto or Satellite Imagery', status = 'c', description = '' WHERE code = 'orthophoto';
UPDATE source.spatial_source_type SET display_value = 'Relative Measurements', status = 'x', description = '' WHERE code = 'relativeMeasurement';
UPDATE source.spatial_source_type SET display_value = 'Topographical Map', status = 'c', description = '' WHERE code = 'topoMap';
UPDATE source.spatial_source_type SET display_value = 'Video', status = 'x', description = '' WHERE code = 'video';
UPDATE source.spatial_source_type SET display_value = 'Boundary Definition', status = 'c', description = '' WHERE code = 'cadastralSurvey';
UPDATE source.spatial_source_type SET display_value = 'Survey Data', status = 'c', description = '' WHERE code = 'surveyData';

--INSERT INTO spatial_source_type VALUES ('surveyData', 'Survey Data (Coordinates)::::Rilevamento Data', 'c', 'Extension to LADM');

--
--
---------- Updates  KANO LH tickets #3,4,5, 16  (04/07/2013) ----
--
--

--
-- Data for Name: administrative_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--
UPDATE source.administrative_source_type SET display_value = 'Boundary Definition'  WHERE code = 'cadastralSurvey';
insert into source.administrative_source_type(code, display_value, status) values('recordLien', 'Lien', 'c');

--
-- Data for Name: spatial_source_type; Type: TABLE DATA; Schema: source; Owner: postgres
--

UPDATE source.spatial_source_type SET display_value = 'Boundary Definition'  WHERE code = 'cadastralSurvey';

--
-- Data for Name: rrr_type; Type: TABLE DATA; Schema: administrative; Owner: postgres
--

UPDATE administrative.rrr_type SET display_value = 'Public Land'  WHERE code = 'stateOwnership';
insert into administrative.rrr_type(code, rrr_group_type_code, display_value, is_primary, share_check, party_required, status) values('regnDeeds', 'responsibilities', 'Deed Registration', true, false, false, 'c');
insert into administrative.rrr_type(code, rrr_group_type_code, display_value, is_primary, share_check, party_required, status) values('regnPowerOfAttorney', 'responsibilities', 'Power of Attorney', true, false, false, 'c');
insert into administrative.rrr_type(code, rrr_group_type_code, display_value, is_primary, share_check, party_required, status) values('recordLien', 'restrictions', 'Lien', false, true, true, 'c');

--
-- Data for Name: request_type; Type: TABLE DATA; Schema: application; Owner: postgres
--

UPDATE application.request_type SET rrr_type_code = null, type_action_code = null  WHERE code = 'systematicRegn';
insert into application.request_type(code, request_category_code, display_value, status, nr_days_to_complete, base_fee, area_base_fee, value_base_fee, nr_properties_required, notation_template, rrr_type_code, type_action_code) values('recordLien', 'registrationServices', 'Record Lien', 'c', 5, 5.00, 0.00, 0, 1, 'Lien to <lender>', 'recordLien', 'new');

--
-- Data for Name: request_type_requires_source_type; Type: TABLE DATA; Schema: application; Owner: postgres
--

insert into application.request_type_requires_source_type(source_type_code, request_type_code) values('recordLien', 'recordLien');
insert into application.request_type_requires_source_type(source_type_code, request_type_code) values('title', 'recordLien');

--
-- Data for Name: language; Type: TABLE DATA; Schema: system; Owner: postgres
--

delete from system.language where code =  'it-IT' ;



--- Added Role for record Lien LH # 4
--
-- Data for Name: approle;approle_appgroup Type: TABLE DATA; Schema: system; Owner: postgres
--

insert into system.approle(code, display_value, status, description) values('recordLien', 'Record Lien', 'c', 'Allows to make changes for registration of lien');


--
-- Data for Name: approle;approle_appgroup Type: TABLE DATA; Schema: system; Owner: postgres
--

INSERT INTO system.approle_appgroup (approle_code, appgroup_id) (SELECT 'recordLien', id FROM system.appgroup WHERE "name" = 'Land Deeds');  
INSERT INTO system.approle_appgroup (approle_code, appgroup_id) values ('recordLien', 'super-group-id');  

