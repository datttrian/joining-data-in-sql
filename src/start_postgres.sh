#!/usr/bin/env bash
set -euo pipefail
mkdir -p "$HOME"/.local/docker/postgresql
docker run --rm --name pg-docker -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=local -d -p 5432:5432 -e PGDATA=/var/lib/postgresql/data/pgdata -v "$HOME"/.local/docker/postgresql/data:/var/lib/postgresql/data postgres

docker cp src/cities.csv  pg-docker:/tmp/cities.csv
docker cp src/economies.csv  pg-docker:/tmp/economies.csv
docker cp src/currencies.csv  pg-docker:/tmp/currencies.csv
docker cp src/countries.csv  pg-docker:/tmp/countries.csv
docker cp src/languages.csv  pg-docker:/tmp/languages.csv
docker cp src/populations.csv  pg-docker:/tmp/populations.csv
docker cp src/eu_countries.csv  pg-docker:/tmp/eu_countries.csv
docker cp src/economies2015.csv  pg-docker:/tmp/economies2015.csv
docker cp src/economies2019.csv  pg-docker:/tmp/economies2019.csv

docker exec -it pg-docker /bin/bash
