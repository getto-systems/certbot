# certbot-manual

run : `certbot certonly --manual --preferred-challenges dns`

## pull

```
docker pull getto/certbot-manual
```

* [Docker Hub](https://hub.docker.com/r/getto/certbot-manual)

## run

```
docker run \
  -v dotfiles:/home/letsencrypt \
  -v volume:/etc/letsencrypt \
  -e LETSENCRYPT_DOMAIN=$YOUR_DOMAIN \
  -e LETSENCRYPT_EMAIL=$YOUR_EMAIL \
  -e AWS_ROUTE53_HOSTED_ZONE_ID=$YOUR_HOSTED_ZONE_ID \
  -it getto/certbot-manual
```

* certbot certonly --manual --preferred-challenges dns
* auth hook : create record set to aws route53
* cleanup hook : delete record set from aws route53

### settings

* aws certificates : /home/letsencrypt/.aws

### specify config dir

```
docker run \
  -u 1000:1000 \
  -v dotfiles:/home/letsencrypt \
  -v volume:/var/app \
  -e LETSENCRYPT_CONFIG=/var/app/letsencrypt \
  -e LETSENCRYPT_DOMAIN=$YOUR_DOMAIN \
  -e AWS_ROUTE53_HOSTED_ZONE_ID=$YOUR_HOSTED_ZONE_ID \
  -e LETSENCRYPT_EMAIL=$YOUR_EMAIL \
  -it getto/certbot-manual
```

## build

```
docker build -t getto/certbot-manual .
```
