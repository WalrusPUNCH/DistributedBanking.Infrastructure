@ECHO OFF

docker-compose -f distributed-banking-tc-docker-compose-7.yaml down
timeout /t 2
docker-compose -f distributed-banking-tc-docker-compose-7.yaml up -d

PAUSE
