#!/bin/sh
source conf/drillTestConfig.properties

hadoop fs -test -d /drill/testdata/tpcds_sf1/parquet ;if [ `echo $?` -eq 0 ]; then hadoop fs -rmr /drill/testdata/tpcds_sf1/parquet; hadoop fs -mkdir /drill/testdata/tpcds_sf1/parquet; else hadoop fs -mkdir /drill/testdata/tpcds_sf1/parquet; fi

if [ -z "$PASSWORD" ]
then
  ${DRILL_HOME}/bin/sqlline -u "jdbc:drill:schema=dfs.tpcds_sf1_parquet;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=${DRILL_TEST_DATA_DIR}/Datasources/tpcds/createTablesParquet.sql
else
  ${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=dfs.tpcds_sf1_parquet;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=${DRILL_TEST_DATA_DIR}/Datasources/tpcds/createTablesParquet.sql
fi