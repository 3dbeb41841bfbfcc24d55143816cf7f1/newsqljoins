#!/bin/bash
db=shopping
dropdb $db
createdb $db
psql -d $db -f create-schema.sql
psql -d $db -f seeds.sql
# psql -d $db -f exercises.sql
psql -d $db -f exercises-solution.sql
