CREATE EXTERNAL TABLE `project_accelerometer_landing_accelerometer_landing_table`(
  `user` string COMMENT 'from deserializer', 
  `timestamp` bigint COMMENT 'from deserializer', 
  `x` double COMMENT 'from deserializer', 
  `y` double COMMENT 'from deserializer', 
  `z` double COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.openx.data.jsonserde.JsonSerDe' 
WITH SERDEPROPERTIES ( 
  'paths'='timeStamp,user,x,y,z') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://udacity-project-datalake/accelerometer/accelerometer_landing_table/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='project-accelerometer-landing-crawler', 
  'averageRecordSize'='1047', 
  'classification'='json', 
  'compressionType'='none', 
  'objectCount'='10', 
  'recordCount'='60111', 
  'sizeKey'='62993680', 
  'typeOfData'='file')