@ECHO OFF

docker-compose -f distributed-banking-rs-docker-compose.yaml up -d
timeout /t 15
docker exec mongodb-one mongosh --port 27027 --file ./configurations/replica-set-init.js

PAUSE
