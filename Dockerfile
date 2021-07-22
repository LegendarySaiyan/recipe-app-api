FROM python:3.9-alpine
MAINTAINER LegendarySaiyan

ENV PYTHONYNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user