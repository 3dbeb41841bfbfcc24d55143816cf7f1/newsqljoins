SELECT movies.name
FROM movies
INNER JOIN directors     ON movies.director_id     = directors.id
INNER JOIN actors_movies ON actors_movies.movie_id = movies.id
INNER JOIN actors        ON actors_movies.actor_id = actors.id
WHERE actors.first_name    = 'Harrison'
AND   actors.last_name     = 'Ford'
AND   directors.first_name = 'Steven'
AND   directors.last_name  = 'Spielberg';
