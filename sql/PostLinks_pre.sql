DROP TABLE IF EXISTS PostLinks CASCADE;
CREATE TABLE PostLinks (
   Id                int         PRIMARY KEY ,
   CreationDate      timestamp   not NUll    ,
   PostId            int         not NULL    ,
   RelatedPostId     int         not NULL    ,
   LinkTypeId        int         not Null    ,
   jsonfield         jsonb
);

-- will default to 7 days for chunk_time_interval
SELECT create_hypertable('PostLinks', 'CreationDate');
