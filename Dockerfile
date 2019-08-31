FROM python:3.7.4-slim-buster

WORKDIR /usr/src/app

# debian
RUN apt-get update

RUN pip install --upgrade pip && \
    pip install --upgrade setuptools

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
