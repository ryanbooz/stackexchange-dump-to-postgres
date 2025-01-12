DROP TABLE IF EXISTS Posts CASCADE;
CREATE TABLE Posts (
    Id                     int PRIMARY KEY    ,
    PostTypeId             int not NULL       ,
    AcceptedAnswerId       int                ,
    ParentId               int                ,
    CreationDate           timestamp not NULL ,
    Score                  int                ,
    ViewCount              int                ,
    Body                   text               ,
    OwnerUserId            int                ,
    LastEditorUserId       int                ,
    LastEditorDisplayName  text               ,
    LastEditDate           timestamp          ,
    LastActivityDate       timestamp          ,
    Title                  text               ,
    Tags                   text               ,
    AnswerCount            int                ,
    CommentCount           int                ,
    FavoriteCount          int                ,
    ClosedDate             timestamp          ,
    CommunityOwnedDate     timestamp          ,
    jsonfield              jsonb
);

-- set chunk_time_interval to 3 days
SELECT create_hypertable('Posts', 'CreationDate', chunk_time_interval=> INTERVAL '3 days');