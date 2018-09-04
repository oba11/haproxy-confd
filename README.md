# haproxy-confd

## Building and running

### Docker

```
docker run -d oba11/haproxy-confd
```

## Supported environment variables

`STATS_PASSWORD`: This is the stats password with default value set as `admin`.

`HTTP_BACKENDS`: Comma separated list of http backends e.g `1.2.3.4:80` or `1.1.2.2:80,1.2.3.4:80`.
`HTTPS_BACKENDS`: Comma separated list of http backends e.g `1.2.3.4:443` or `1.1.2.2:80,1.2.3.4:443`.

> You can only set either HTTP_BACKENDS or HTTPS_BACKENDS
