#!/bin/sh -x
set -eu

docker-compose run --no-deps --rm nameko pipenv run flake8
