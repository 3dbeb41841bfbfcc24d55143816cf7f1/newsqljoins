SELECT movies.name, count(*)
FROM movies
INNER JOIN actors_movies ON actors_movies.movie_id = movies.id
GROUP BY movies.name;
