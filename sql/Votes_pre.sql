DROP TABLE IF EXISTS Votes CASCADE;
CREATE TABLE Votes (
   Id                int         PRIMARY KEY ,
   PostId            int         , -- not NULL    ,
   VoteTypeId        int         not NULL    ,
   UserId            int                     ,
   CreationDate      timestamp   not NULL    ,
   BountyAmount      int                     ,
   jsonfield         jsonb
);


-- will default to 7 days for chunk_time_interval
SELECT create_hypertable('Votes', 'CreationDate');