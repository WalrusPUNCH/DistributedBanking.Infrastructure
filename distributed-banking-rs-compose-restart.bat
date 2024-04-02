@ECHO OFF

docker-compose -f distributed-banking-rs-docker-compose.yaml down

timeout /t 5

docker-compose -f distributed-banking-rs-docker-compose.yaml up -d
docker exec mongodb-one mongosh --port 27027 --file ./configurations/replica-set-init.js

PAUSE
