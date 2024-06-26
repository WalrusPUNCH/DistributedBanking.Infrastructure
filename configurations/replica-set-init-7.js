﻿var config = {
    "_id": "banking_set",
    "version": 1,
    "writeConcernMajorityJournalDefault": true,
    "members": [
        {
            "_id": 0,
            "host": "mongodb-one:27027",
            "priority": 1
        },
        {
            "_id": 1,
            "host": "mongodb-two:27028",
            "priority": 0.5
        },
        {
            "_id": 2,
            "host": "mongodb-three:27029",
            "priority": 0.5
        },
        {
            "_id": 3,
            "host": "mongodb-four:27030",
            "priority": 0.5
        },
        {
            "_id": 4,
            "host": "mongodb-five:27031",
            "priority": 0.5
        },
        {
            "_id": 5,
            "host": "mongodb-six:27032",
            "priority": 0.5
        },
        {
            "_id": 6,
            "host": "mongodb-seven:27033",
            "priority": 0.5
        }
    ]
};

var code;
try 
{
    var status = rs.status();
    code = status.ok ? 0 : status.code
} 
catch (e) 
{
    code = e.code
}

console.log(`> rs status code: ${code}`)

if (code != 0)
{
    console.log('> Replica set initialization has been called');
    printjson(rs.initiate(config, { force: true }));
    console.log('> Waiting for replica set initiation...');
    sleep(25000);
}
else
{
    console.log('> OK! Replica set is already initialized');
}

printjson(rs.status());
