create table dfs_test.ctas_flatten.`filter13_100000rows_ctas` as select  s.evnts.evnt_id  from (select d.type type, flatten(d.events) evnts from `data.json` d where d.type='web') s where s.evnts.type = 'cmpgn4';
select * from dfs_test.ctas_flatten.`filter13_100000rows_ctas`;
drop table  dfs_test.ctas_flatten.`filter13_100000rows_ctas`;
