FROM python:2.7-alpine

RUN apk update

WORKDIR /app
ADD requirements.txt /app
RUN pip install -r requirements.txt
