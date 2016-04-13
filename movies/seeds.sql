DELETE FROM actors_movies;
DELETE FROM actors;
DELETE FROM movies;
DELETE FROM directors;

INSERT INTO directors (id, first_name, last_name) VALUES
  (1, 'Steven', 'Spielberg'),
  (2, 'George', 'Lucas'),
  (3, 'Wolfgang', 'Petersen');

INSERT INTO movies (id, director_id, name, release_date) VALUES
  (1, 1, 'Raiders of the Lost Ark', '1981-06-01'),
  (2, 1, 'ET', '1982-06-11'),
  (3, 1, 'Schindler''s List', '1993-12-15'),
  (4, 2, 'Star Wars', '1977-05-25'),
  (5, 3, 'Air Force One', '1997-07-25'),
  (6, 1, 'Indiana Jones and the Kingdom of the Crystal Skull', '2008-05-22');

INSERT INTO actors (id, first_name, last_name) VALUES
  (1, 'Harrison', 'Ford'),
  (2, 'Karen', 'Allen'),
  (3, 'Drew', 'Barrymore'),
  (4, 'Liam', 'Neeson'),
  (5, 'Ben', 'Kingsley'),
  (6, 'Mark', 'Hamill'),
  (7, 'Carrie', 'Fisher'),
  (8, 'Glenn', 'Close');

INSERT INTO actors_movies(actor_id, movie_id) VALUES
  (1, 1),
  (1, 4),
  (1, 5),
  (1, 6),
  (2, 1),
  (3, 2),
  (4, 3),
  (5, 3),
  (6, 4),
  (7, 4),
  (8, 5);
