@ECHO OFF

docker-compose -f distributed-banking-tc-docker-compose-5.yaml down
timeout /t 2
docker-compose -f distributed-banking-tc-docker-compose-5.yaml up -d

PAUSE
