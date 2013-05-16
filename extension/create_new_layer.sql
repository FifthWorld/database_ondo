-- Modification to create a new navigation layer for sections by Akande Adeoluwa 5/16/2013
-- Remove any pre-existing data for the new navigation layer
DELETE FROM system.query_field
 WHERE query_name = 'dynamic.informationtool.get_sections';

DELETE FROM system.config_map_layer
 WHERE "name" = 'sections';

DELETE FROM system.query
 WHERE "name" IN ('dynamic.informationtool.get_sections', 
 'SpatialResult.getSections');

 -- Add the necessary dynamic queries
INSERT INTO system.query("name", sql)
 VALUES ('SpatialResult.getSections', 
 'select co.id, co.name_firstpart || ''/'' || co.name_lastpart as label,  st_asewkb(co.geom_polygon) as the_geom from cadastre.cadastre_object co where type_code= ''parcel'' and status_code= ''current'' and ST_Area(geom_polygon) > 50000 and ST_Intersects(co.geom_polygon, SetSRID(ST_MakeBox3D(ST_Point(#{minx}, #{miny}),ST_Point(#{maxx}, #{maxy})), #{srid}))');

INSERT INTO system.query("name", sql)
 VALUES ('dynamic.informationtool.get_sections', 
 'select co.id, co.name_firstpart || ''/'' || co.name_lastpart as parcel_nr,      (select string_agg(ba.name_firstpart || ''/'' || ba.name_lastpart, '','')      from administrative.ba_unit_contains_spatial_unit bas, administrative.ba_unit ba      where spatial_unit_id= co.id and bas.ba_unit_id= ba.id) as ba_units,      ( SELECT spatial_value_area.size FROM cadastre.spatial_value_area      WHERE spatial_value_area.type_code=''officialArea'' and spatial_value_area.spatial_unit_id = co.id) AS area_official_sqm,       st_asewkb(co.geom_polygon) as the_geom      from cadastre.cadastre_object co      where type_code= ''parcel'' and status_code= ''current''  and ST_Area(geom_polygon) > 50000    and ST_Intersects(co.geom_polygon, ST_SetSRID(ST_GeomFromWKB(#{wkb_geom}), #{srid}))');

 -- Configure the query fields for the Object Information Tool
INSERT INTO system.query_field(query_name, index_in_query, "name", display_value) 
 VALUES ('dynamic.informationtool.get_sections', 0, 'id', null); 

INSERT INTO system.query_field(query_name, index_in_query, "name", display_value) 
 VALUES ('dynamic.informationtool.get_sections', 1, 'parcel_nr', 'Parcel number'); 

INSERT INTO system.query_field(query_name, index_in_query, "name", display_value) 
 VALUES ('dynamic.informationtool.get_sections', 2, 'ba_units', 'Properties'); 

INSERT INTO system.query_field(query_name, index_in_query, "name", display_value) 
 VALUES ('dynamic.informationtool.get_sections', 3, 'area_official_sqm', 'Official area (m2)'); 

INSERT INTO system.query_field(query_name, index_in_query, "name", display_value) 
 VALUES ('dynamic.informationtool.get_sections', 4, 'the_geom', null);
 
 -- Configure the new Navigation Layer
INSERT INTO system.config_map_layer ("name", title, type_code, pojo_query_name, pojo_structure, pojo_query_name_for_select, style, active, item_order)
 VALUES ('sections', 'Sections', 'pojo', 'SpatialResult.getSections', 'theGeom:Polygon,label:""', 
  'dynamic.informationtool.get_sections', 'parcel.xml', TRUE, 8);

