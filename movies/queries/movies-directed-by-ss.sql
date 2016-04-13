SELECT movies.*
FROM movies
INNER JOIN directors ON movies.director_id = directors.id
WHERE directors.first_name = 'Steven'
AND   directors.last_name  = 'Spielberg';
