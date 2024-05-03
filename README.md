# Joining Data in SQL

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/datttrian/joining-data-in-sql)

![Clear as Data](http://drive.google.com/uc?export=view&id=1PJVtMhPE_h3g2c9wXm9tf6_pIhvMyDRI)

This is the repository for the DataCamp course Joining Data in SQL. The full course is available from [DataCamp](https://www.datacamp.com/courses/joining-data-in-sql).

Joining data is an essential skill that enables us to draw information from separate tables together into a single, meaningful set of results. Learn to supercharge your queries using table joins and relational set theory in this course on joining data. In this course, you’ll learn how to work with more than one table in SQL, use inner joins, outer joins, and cross joins, leverage set theory, including unions, intersect, and except clauses, and create nested queries. Every step is accompanied by exercises and opportunities to apply the theory and grow your confidence in SQL.

## PostgreSQL Docker Setup

``` sh
set -euo pipefail
mkdir -p "$HOME"/.local/docker/postgresql
docker run --rm --name pg-docker -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=local -d -p 5432:5432 -e PGDATA=/var/lib/postgresql/data/pgdata -v "$HOME"/.local/docker/postgresql/data:/var/lib/postgresql/data postgres
docker exec -it pg-docker /bin/bash
```

``` sh
psql -d local postgres
```

## Instructor

Maham Khan

Senior Data Scientist, YouView TV
