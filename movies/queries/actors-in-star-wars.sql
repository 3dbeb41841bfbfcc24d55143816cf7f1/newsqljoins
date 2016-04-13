SELECT actors.*
FROM actors
INNER JOIN actors_movies ON actors_movies.actor_id = actors.id
INNER JOIN movies        ON actors_movies.movie_id = movies.id
WHERE movies.name = 'Star Wars';
