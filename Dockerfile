FROM python:3.7.4-slim-buster

WORKDIR /usr/src/app

# debian
RUN apt-get update && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install pipenv

COPY ./Pipfile* ./
RUN pipenv sync --dev
