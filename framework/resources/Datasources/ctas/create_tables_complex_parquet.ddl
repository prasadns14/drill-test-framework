CREATE TABLE `complex.json` AS 
  SELECT id, 
         gbyi, 
         gbyt, 
         fl, 
         nul, 
         bool, 
         str, 
         sia, 
         sfa, 
         soa, 
         ooa, 
         oooi, 
         ooof, 
         ooos, 
         oooa 
  FROM   dfs_test.`/drill/testdata/complex/json/complex.json`; 
