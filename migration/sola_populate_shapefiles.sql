--TO POPULATE THE SOLA DATABASE WITH SHAPEFILE DATA FOR ONDO
--INTO SOLA KANO DATABASE

--Drop the previous data in spatial unit
DELETE FROM cadastre.spatial_unit WHERE dimension_code='2D';
--INSERT VALUES FOR LGA POLYGONS
INSERT INTO cadastre.spatial_unit (id, dimension_code, label, surface_relation_code, geom, level_id, change_user) 
	SELECT uuid_generate_v1(), '2D', lga, 'onSurface', the_geom, (SELECT id FROM cadastre.level WHERE name='LGA') As l_id, 'test' AS ch_user 
	FROM interim_data."LGA" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

-- Changes made by Akande Adeoluwa to insert values into Wards and Sections - 09/05/2013
--INSERT VALUES FOR Wards
INSERT INTO cadastre.spatial_unit (id, dimension_code, label, surface_relation_code, geom, level_id, change_user) 
	SELECT uuid_generate_v1(), '2D', ward, 'onSurface', the_geom, (SELECT id FROM cadastre.level WHERE name='Wards') As l_id, 'test' AS ch_user 
	FROM interim_data."Ward" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);

	--INSERT VALUES FOR Section
INSERT INTO cadastre.spatial_unit (id, dimension_code, label, surface_relation_code, geom, level_id, change_user) 
	SELECT uuid_generate_v1(), '2D', id, 'onSurface', the_geom, (SELECT id FROM cadastre.level WHERE name='Section') As l_id, 'test' AS ch_user 
	FROM interim_data."Section" WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);