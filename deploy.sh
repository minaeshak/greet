#!/bin/sh

docker build -t minaeshak/greet .

docker push minaeshak/greet

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=greeting-api.acme.co/O=greeting-api.acme.co"

kubectl create secret tls greeting-api-tls --cert=tls.crt --key=tls.key

rm tls.*

# Installing Ingress controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml

kubectl apply -f greet.yaml