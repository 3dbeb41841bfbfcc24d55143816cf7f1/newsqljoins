SELECT movies.*
FROM movies
INNER JOIN actors_movies ON actors_movies.movie_id = movies.id
INNER JOIN actors        ON actors_movies.actor_id = actors.id
WHERE actors.first_name = 'Harrison'
AND actors.last_name    = 'Ford';
