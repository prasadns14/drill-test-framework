#!/bin/sh
source conf/drillTestConfig.properties

set -x
set -e

${DRILL_HOME}/bin/sqlline -n ${USERNAME} -p ${PASSWORD} -u "jdbc:drill:schema=dfs_test.aggregation;drillbit=${DRILL_STORAGE_PLUGIN_SERVER}"  --run=${DRILL_TEST_DATA_DIR}/Datasources/limit0/aggregates/aggregation/multicolumn/create_multicolumn_views.sql

set +x
