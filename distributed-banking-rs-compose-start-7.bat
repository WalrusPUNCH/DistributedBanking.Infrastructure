@ECHO OFF

docker-compose -f distributed-banking-rs-docker-compose-7.yaml up -d
docker exec mongodb-one mongosh --port 27027 --file ./configurations/replica-set-init-7.js

PAUSE
