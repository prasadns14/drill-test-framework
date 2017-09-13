select L_ORDERKEY, L_PARTKEY, L_SUPPKEY, L_LINENUMBER, L_QUANTITY, L_EXTENDEDPRICE, L_DISCOUNT, L_TAX, L_RETURNFLAG, L_LINESTATUS, L_SHIPDATE, L_COMMITDATE, L_RECEIPTDATE, L_SHIPINSTRUCT, L_SHIPMODE, L_COMMENT, dir0, dir1, dir2 from dfs_test.`/drill/testdata/tpch100_dir_partitioned_50000files/lineitem` where dir0=2006 and dir1=12 and dir2 IN (15, 20, 1, 2, 5) order by l_orderkey, l_extendedprice limit 10;
