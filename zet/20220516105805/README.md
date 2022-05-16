# Simple web server with nc


```bash
$ while :; do printf "HTTP/1.1 200 \n\nHello\n" | nc -l 8000; done
```

```bash
$ curl localhost:8000
Hello
```
