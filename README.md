# sougino-mikata

```
docker build -t simple-nginx .
docker run -d -p 3000:80 -v $(pwd)/public:/root/public --name your-container-name simple-nginx
```

これで実行して観れる