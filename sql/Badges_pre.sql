DROP TABLE IF EXISTS Badges CASCADE;
CREATE TABLE Badges (
   Id                int         PRIMARY KEY ,
   UserId            int         not NULL    ,
   Name              text        not NULL    ,
   Date              timestamp   not NULL    ,
   jsonfield         jsonb
);

-- set chunk_time_interval to 30 days
SELECT create_hypertable('Badges', 'Date', chunk_time_interval => INTERVAL '30 days');