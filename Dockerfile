FROM python:3.8-slim-buster

WORKDIR /app/greet

COPY greet.py start.sh ./
RUN apt-get update && apt-get install -y redis-server


RUN pip install flask redis

EXPOSE 8080


ENTRYPOINT [ "bash" ,"start.sh" ]

