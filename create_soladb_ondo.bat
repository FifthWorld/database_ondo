﻿@echo off

set psql_path=%~dp0
set psql_path="%psql_path%psql\psql.exe"
set host=localhost
set dbname=sola

set username=postgres
set archive_password=?

set createDB=NO

set testDataPath=test-data\
set rulesPath=rules\
set extensionPath=extension\
set utilitiesPath=utilities\
set migrationPath=migration\

set /p host= Host name [%host%] :

set /p dbname= Database name [%dbname%] :

set /p username= Username [%username%] :

REM The Database password should be set using PgAdmin III. When connecting to the database, 
REM choose the Store Password option. This will avoid a password prompt for every SQL file 
REM that is loaded. 
REM set /p password= DB Password [%password%] :

REM set /p archive_password= Test Data Archive Password [%archive_password%] :

echo
echo
echo Starting Build at %time%
echo Starting Build at %time% > build.log 2>&1

echo Creating database...
echo Creating database... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=sola.sql > build.log 2>&1

echo Loading business rules...
echo Loading SOLA business rules... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%business_rules.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_generators.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_application.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_service.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_ba_unit.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_cadastre_object.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_rrr.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_source.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_bulkoperation.sql >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%rulesPath%br_target_public_display.sql >> build.log 2>&1

echo Loading Ondo Extensions...
echo Loading Ondo Extensions... >> build.log 2>&1

echo Loading Reference Data... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%reference_data.sql >> build.log 2>&1
REM order Changed by Sam
echo Loading Table Changes... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%table_changes.sql >> build.log 2>&1


REM Loading LRB-Specific Changes
echo Loading LRB-Specific Changes... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%lrb_changes.sql >> build.log 2>&1


REM Creating the new section layer
echo Creating the section layer... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%create_new_layer.sql >> build.log 2>&1

echo Loading Spatial Config... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%spatial_config.sql >> build.log 2>&1
echo Loading Populate Shapefile... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%migrationPath%sola_populate_shapefiles.sql >> build.log 2>&1

REM populate_spatial_unit_group
echo Populating spatial unit group... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%populate_spatial_unit_group.sql >> build.log 2>&1

echo Loading Ondo Business Rules... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%business_rules.sql >> build.log 2>&1

echo Loading Ondo Cadastre Functions... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%get_cadastre_functions.sql >> build.log 2>&1

echo Loading Ondo Systematic Registration Reports... >> build.log 2>&1
+%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%extensionPath%systematic_registration_reports.sql >> build.log 2>&1
 



echo Extracting Ondo data files...
echo Extracting Ondo data files... >> build.log 2>&1
%utilitiesPath%\7z.exe e -y -o%testDataPath% %testDataPath%ondoDev.7z >> build.log 2>&1
REM %utilitiesPath%\7z.exe e -y -p%archive_password% -o%testDataPath% %testDataPath%ondo.7z >> build.log 2>&1

REM Load the Ondo test data. 
REM Direct standard output to NUL, but capture any errors in the build.log
echo >> build.log
echo Loading system schema...
echo Loading system schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%system.sql >NUL 2>>build.log
echo Loading cadastre schema...
echo Loading cadastre schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%cadastre.sql >NUL 2>>build.log
echo Loading address schema...
echo Loading address schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%address.sql >NUL 2>>build.log
echo Loading party schema...
echo Loading party schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%party.sql >NUL 2>>build.log
echo Loading administration schema...
echo Loading administration schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%administration.sql >NUL 2>>build.log
echo Loading application schema...
echo Loading application schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%application.sql >NUL 2>>build.log
echo Loading document schema...
echo Loading document schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%documents.sql >NUL 2>>build.log
echo Loading source schema...
echo Loading source schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%source.sql >NUL 2>>build.log
echo Loading transaction schema...
echo Loading transaction schema... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%transaction.sql >NUL 2>>build.log
echo Applying data fixes...
echo Applying data fixes... >> build.log 2>&1
%psql_path% --host=%host% --port=5432 --username=%username% --dbname=%dbname% --file=%testDataPath%data-fixes.sql >> build.log 2>&1

echo Finished at %time% - Check build.log for errors!
echo Finished at %time% >> build.log 2>&1
pause