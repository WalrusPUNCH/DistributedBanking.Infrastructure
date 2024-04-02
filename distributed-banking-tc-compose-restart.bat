@ECHO OFF

docker-compose -f distributed-banking-tc-docker-compose.yaml down
timeout /t 2
docker-compose -f distributed-banking-tc-docker-compose.yaml up -d

PAUSE
