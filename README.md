# Docker image for ElasticMQ

Docker image for [ElasticMQ](https://github.com/adamw/elasticmq) (fake SQS)

Run it with
```
docker run -p 9324:9324 s12v/elasticmq
```

Custom config `elasticmq.conf` can be mounted to `/etc/elasticmq/`:
```
docker run -p 9324:9324 -v "$PWD:/etc/elasticmq" s12v/elasticmq
```
