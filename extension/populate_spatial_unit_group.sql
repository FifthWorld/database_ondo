----------- SPATIAL_UNIT_GROUP TABLE POPULATION MADE by Paola on 21/05/2013 ----------------------------------------

-- insert State - LGA - Ward hierarchy

DELETE FROM cadastre.spatial_unit_group;

--------------- Country
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) SELECT distinct 'Nigeria','Nigeria', 0, 'Nigeria', 'test'
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

--------------- State
INSERT INTO cadastre.spatial_unit_group( name,id, hierarchy_level, label,  change_user) SELECT distinct(state),(state), 1, (state), 'test'
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

--------------- LGA
INSERT INTO cadastre.spatial_unit_group( id, hierarchy_level, label, name, geom, change_user) 
	SELECT state||'/'||lga, 2, lga, state||'/'||lga, the_geom, 'test'
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

--------------- Wards
--- test the inconsistencies in the geometry
INSERT INTO cadastre.spatial_unit_group( id, hierarchy_level, label, name, geom, change_user, seq_nr)
select lga_group.name || '/' || w.ward, 3, w.ward, lga_group.name || '/' || w.ward, w.the_geom, 'test', 0
from cadastre.spatial_unit_group as lga_group,  interim_data."Ward" as w 
where lga_group.hierarchy_level = 2 and st_intersects(lga_group.geom, st_pointonsurface(w.the_geom));

--------------- Sections
--- test the inconsistencies in the geometry
INSERT INTO cadastre.spatial_unit_group( id, hierarchy_level, label, name, geom, change_user, seq_nr)
select ward_group.name || '/' || s.gid, 4, s.gid, ward_group.name || '/' || s.gid, s.the_geom, 'test', 0
from cadastre.spatial_unit_group as ward_group,  interim_data."Section" as s 
where ward_group.hierarchy_level = 3 and st_intersects(ward_group.geom, st_pointonsurface(s.the_geom));




----------- SPATIAL_UNIT_GROUP_IN TABLE POPULATION ----------------------------------------

DELETE FROM cadastre.spatial_unit_in_group;


INSERT INTO cadastre.spatial_unit_in_group (spatial_unit_group_id, spatial_unit_id, change_user)
	SELECT cadastre.spatial_unit_group.id, cadastre.spatial_unit.id, 'test' FROM cadastre.spatial_unit, cadastre.spatial_unit_group
			WHERE cadastre.spatial_unit.label = cadastre.spatial_unit_group.label;


---the insert values for section polygons and section spatial unit group goes here 