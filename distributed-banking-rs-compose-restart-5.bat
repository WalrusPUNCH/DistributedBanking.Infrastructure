@ECHO OFF

docker-compose -f distributed-banking-rs-docker-compose-5.yaml down

timeout /t 5

docker-compose -f distributed-banking-rs-docker-compose-5.yaml up -d
docker exec mongodb-one mongosh --port 27027 --file ./configurations/replica-set-init-5.js

PAUSE
