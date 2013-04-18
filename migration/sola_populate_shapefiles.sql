--TO POPULATE THE SOLA DATABASE WITH SHAPEFILE DATA FOR ONDO
--INTO SOLA KANO DATABASE


--INSERT VALUES FOR LGA POLYGONS
INSERT INTO cadastre.spatial_unit (id, dimension_code, label, surface_relation_code, geom, level_id, change_user) 
	SELECT uuid_generate_v1(), '2D', name, 'onSurface', the_geom, (SELECT id FROM cadastre.level WHERE name='LGA') As l_id, 'test' AS ch_user 
	FROM interim_data.lga WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);


--INSERT VALUES FOR Wards
INSERT INTO cadastre.spatial_unit (id, dimension_code, label, surface_relation_code, geom, level_id, change_user) 
	SELECT uuid_generate_v1(), '2D', name, 'onSurface', the_geom, (SELECT id FROM cadastre.level WHERE name='Wards') As l_id, 'test' AS ch_user 
	FROM interim_data.wards WHERE (ST_GeometryN(the_geom, 1) IS NOT NULL);