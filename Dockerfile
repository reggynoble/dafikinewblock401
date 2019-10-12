FROM python:3.7-alpine
MAINTAINER Ragwar Analytics Inc
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . /app/ 
RUN adduser -D user
USER user
