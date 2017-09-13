create table dfs_test.ctas_flatten.`filter5_100000rows_ctas` as select uid_str, flatten(events) from `data.json` where uid_str = 1;
select * from dfs_test.ctas_flatten.`filter5_100000rows_ctas`;
drop table dfs_test.ctas_flatten.`filter5_100000rows_ctas`;
