# README
A simple container that uses the mkcert utility to generate certificates.
The mkcert repo link <https://github.com/FiloSottile/mkcert>.

## Certs folder
The certificates will be generated into `/certs.d` folder inside the container.

## Environment variables
The environment variables can be used generate the certificate.
```bash
CERT_HOSTNAME=
CERT_DOMAIN=
```
