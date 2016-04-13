#!/bin/bash
db=movies
dropdb $db
createdb $db
psql -d $db -f create-schema.sql
psql -d $db -f seeds.sql
