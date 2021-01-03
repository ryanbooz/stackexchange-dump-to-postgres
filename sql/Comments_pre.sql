DROP TABLE IF EXISTS Comments CASCADE;
CREATE TABLE Comments (
    Id                     int PRIMARY KEY    ,
    PostId                 int not NULL       , 
    Score                  int not NULL       ,
    Text                   text               ,
    CreationDate           timestamp not NULL , 
    UserId                 int                ,
    jsonfield              jsonb
);

-- will default to 7 days for chunk_time_interval
SELECT create_hypertable('Comments', 'CreationDate');
