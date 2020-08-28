CREATE EXTERNAL TABLE profile_test_cow(Name string,
phone string,
job string,
company string,
ssn string,
street_address string,
dob string,
email string,
ts string,
credit_card string,
record_id int,
id string)
ROW FORMAT SERDE
'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
STORED AS INPUTFORMAT
'com.uber.hoodie.hadoop.HoodieInputFormat'
OUTPUTFORMAT
'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
's3://aws-test123/hudi-ds/output/profile-test-out/';