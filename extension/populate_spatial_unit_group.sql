--This script is basically for populating spatial unit group with data for creating the name_lastpart
--Sam 5/16/2013 2:18pm

--delete any existing record
DELETE FROM cadastre.spatial_unit_group WHERE label in ('STATE','LGA','WARD','SECTION');

--Do the inserts

--for the State level
INSERT INTO cadastre.spatial_unit_group (id,hierarchy_level,label,name) 
VALUES (uuid_generate_v1(),0,'STATE','STATE');

--for the LGA level
INSERT INTO cadastre.spatial_unit_group (id,hierarchy_level,label,name) 
VALUES (uuid_generate_v1(),1,'LGA','STATE/LGA');

--for the Ward level
INSERT INTO cadastre.spatial_unit_group (id,hierarchy_level,label,name) 
VALUES (uuid_generate_v1(),2,'WARD','STATE/LGA/WARD');

--for the Section level
INSERT INTO cadastre.spatial_unit_group (id,hierarchy_level,label,name) 
VALUES (uuid_generate_v1(),3,'SECTION','STATE/LGA/WARD/SECTION');



