Import LGA.shp to interim_data.lga use set SRID= 32631
Import Wards.shp to interim_data.wards use set SRID= 32631

run spatial_config.sql
run populate_shape_files.sql

run bulk uploader
Import Parcels.shp