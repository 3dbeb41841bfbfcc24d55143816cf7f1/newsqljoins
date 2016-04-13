DROP TABLE IF EXISTS actors_movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS directors;

CREATE TABLE directors (
  id serial PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL
);

CREATE TABLE movies (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  release_date date NOT NULL,
  director_id integer references directors(id)
);

CREATE TABLE actors (
  id serial PRIMARY KEY,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL
);

CREATE TABLE actors_movies (
  id serial PRIMARY KEY,
  actor_id integer references actors(id),
  movie_id integer references movies(id)
);
