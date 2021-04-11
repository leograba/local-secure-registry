# Local Registry With HTTPS #

This repository contains a local registry with a locally generated SSL
certificate, so I can use it with other technologies such as TorizonCore,
TorizonCore Builder and Torizon OTA without having to worry (too much) about
any potential side-effects of using an insecure registry.

## How to Setup ##

I've basically followed those two blog posts:

- Main article: https://medium.com/@archanabalasundaram/setting-up-a-private-docker-registry-f673aa7452f4
- Secondary article: https://www.digitalocean.com/community/tutorials/how-to-set-up-a-private-docker-registry-on-ubuntu-18-04

The docs docs are good only for insecure registries, for practical instructions:

- https://docs.docker.com/registry/deploying/
- https://docs.docker.com/registry/insecure/#deploy-a-plain-http-registry

If you don't want to read the posts, generate a certificate and install on the
remote as follows:

```
# READ THE SCRIPTS BEFORE RUNNING THEM! THEY WERE NOT TESTED :P
$ generate-certificate.sh domain-name.com
$ install-certificate.sh user@ip domain-name.com
```

You may have to add your domain in the `/etc/hosts` file. I didn't but things
are working here ¯\\\_(ツ)_/¯

```
127.0.0.1 domain-name.com
```

## Why Port 6000 ##

The Moses back-end for the Torizon IDE Extensions use the port 5000 by default.

## Why Passwordless ##

I didn't bother to setup a password, since this is a development registry and
it's only available in the LAN I'm connected to.

If you need it, the docker-compose.yml already has few commented lines ready.
