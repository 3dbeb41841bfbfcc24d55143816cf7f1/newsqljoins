SELECT movies.*
FROM movies
INNER JOIN directors
ON movies.director_id = directors.id;
