# Joining Data in SQL

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/datttrian/joining-data-in-sql)

![Clear as Data](http://drive.google.com/uc?export=view&id=1PJVtMhPE_h3g2c9wXm9tf6_pIhvMyDRI)

This is the repository for the DataCamp course Joining Data in SQL. The full course is available from [DataCamp](https://www.datacamp.com/courses/joining-data-in-sql).

Joining data is an essential skill that enables us to draw information from separate tables together into a single, meaningful set of results. Learn to supercharge your queries using table joins and relational set theory in this course on joining data. In this course, you’ll learn how to work with more than one table in SQL, use inner joins, outer joins, and cross joins, leverage set theory, including unions, intersect, and except clauses, and create nested queries. Every step is accompanied by exercises and opportunities to apply the theory and grow your confidence in SQL.

## Schema

``` sh
set -euo pipefail
mkdir -p "$HOME"/.local/docker/postgresql
docker run --rm --name pg-docker -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=local -d -p 5432:5432 -e PGDATA=/var/lib/postgresql/data/pgdata -v "$HOME"/.local/docker/postgresql/data:/var/lib/postgresql/data postgres
docker cp countries/cities.csv  pg-docker:/tmp/cities.csv
docker cp countries/economies.csv  pg-docker:/tmp/economies.csv
docker cp countries/currencies.csv  pg-docker:/tmp/currencies.csv
docker cp countries/countries.csv  pg-docker:/tmp/countries.csv
docker cp countries/languages.csv  pg-docker:/tmp/languages.csv
docker cp countries/populations.csv  pg-docker:/tmp/populations.csv
docker cp countries/eu_countries.csv  pg-docker:/tmp/eu_countries.csv
docker cp countries/economies2015.csv  pg-docker:/tmp/economies2015.csv
docker cp countries/economies2019.csv  pg-docker:/tmp/economies2019.csv
docker exec -it pg-docker /bin/bash
```

``` sh
psql -d local postgres
```

## Instructor

Maham Khan

Senior Data Scientist, YouView TV
