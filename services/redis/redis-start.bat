@ECHO OFF

docker run -d --rm -v %cd%\volume:/data -v %cd%\redis.conf:/usr/local/etc/redis/redis.conf -p 6379:6379 --name redis redis:7.0.15 redis-server /usr/local/etc/redis/redis.conf

PAUSE