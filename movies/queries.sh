db=movies

echo "== Listing movies directors =="
psql -d $db -f queries/movies-directors.sql

echo "== Listing movies actors =="
psql -d $db -f queries/movies-actors.sql

echo "== Listing actors in Star Wars =="
psql -d $db -f queries/actors-in-star-wars.sql

echo "== Listing movies actor count =="
psql -d $db -f queries/movies-actor-count.sql

echo "== Listing movies directed by Stephen Spielberg =="
psql -d $db -f queries/movies-directed-by-ss.sql

echo "== Listing movies staring Harrison Ford =="
psql -d $db -f queries/movies-staring-hf.sql

echo "== Listing movies directed by Stephen Spielberg and staring Harrison Ford =="
psql -d $db -f queries/movies-directed-by-ss-and-staring-hf.sql
