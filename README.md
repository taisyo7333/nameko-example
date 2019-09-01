# nameko-example
nameko  (micro-service framework python library) example


# Usage
1. run nameko shell
```
docker-compose run shell
```

## sync
```python
>>> n.rpc.greeting_service.hello(name="nameko")
'Hello, nameko!'
```

## async
### x5 concurrent
```python
res = []
for i in range(5):
    hello_res = n.rpc.greeting_service.hello.call_async(name=str(i))
    res.append(hello_res)

for hello_res in res:
    print(hello_res.result())
```

### x20 concurrent
```python
res = []
for i in range(20):
  hello_res = n.rpc.greeting_service.hello.call_async(name=str(i))
  res.append(hello_res)

for hello_res in res:
  print(hello_res.result())
```

# reference
## nameko
* https://nameko.readthedocs.io/en/stable/
* https://github.com/nameko/nameko/blob/master/docs/examples/helloworld.py
* http://docs.nameko.io/en/stable/cli.html

## docker
* https://hub.docker.com/_/rabbitmq

