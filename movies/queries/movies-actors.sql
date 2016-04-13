SELECT movies.*, actors.*
FROM movies
INNER JOIN actors_movies ON actors_movies.movie_id = movies.id
INNER JOIN actors        ON actors_movies.actor_id = actors.id
ORDER BY movies.name;
