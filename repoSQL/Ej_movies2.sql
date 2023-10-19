-- QUERYS

SELECT * 
FROM directors;

SELECT name AS nombre_del_director 
FROM directors;

SELECT * 
FROM directors
ORDER BY name ASC;

SELECT * 
FROM movies
WHERE title LIKE '%:%';

SELECT * 
FROM stars
WHERE name LIKE 'M%';

SELECT * 
FROM stars
WHERE name LIKE '%e_';

SELECT year
FROM movies
GROUP BY year;

SELECT COUNT(DISTINCT year) AS 'Total'
FROM movies;

SELECT *
FROM movies
WHERE title LIKE 'Pulp Fiction';

SELECT *
FROM movies
WHERE id LIKE 6;

SELECT *
FROM movies
WHERE id > 3;

SELECT *
FROM movies
WHERE id >3 AND id<6;

SELECT *
FROM movies
WHERE id BETWEEN 3 AND 6;

SELECT *
FROM movies
WHERE year != 2013;

SELECT *
FROM movies
WHERE year <> 2013;

SELECT *
FROM movies
WHERE year IN (1895, 1994, 1997);

SELECT *
FROM movies
WHERE year NOT IN (2013, 2014, 1994);

SELECT *
FROM movies 
WHERE year >= 2000 AND imdb_rating >= 8.5;

SELECT *
FROM movies 
WHERE year < 2005 OR imdb_rating >= 8.5;

SELECT *
FROM movies 
ORDER BY year ASC, imdb_rating DESC;

SELECT *
FROM movies 
ORDER BY 3 ASC, 7 DESC;

SELECT *
FROM stars
LIMIT 3;

SELECT *
FROM movies
ORDER BY imdb_rating
LIMIT 5;

SELECT MIN(imdb_rating) AS MIN_RATING, MAX(imdb_rating) AS MAX_RATING
FROM movies;

SELECT ROUND(AVG(imdb_rating),2) AS RATING_AVG
FROM movies;

SELECT COUNT(*) AS TOTAL_DIRECTORES
FROM directors;

SELECT ROUND(SUM(imdb_rating),2) AS RATING_POINTS
FROM movies;

SELECT *
FROM movies
WHERE imdb_rating > (SELECT AVG(imdb_rating) FROM movies);

SELECT *
FROM movies
WHERE id NOT BETWEEN 2 AND 4;

SELECT movies.title AS TITULO, directors.name AS DIRECTOR
FROM movies
INNER JOIN movies_directors
ON movies.id = movies_id
INNER JOIN directors
ON directors_id = directors.id
ORDER BY directors.id ASC;

SELECT movies.title, stars.name
FROM movies
INNER JOIN movies_stars
ON movies.id = movies_id
INNER JOIN stars
ON stars_id = stars.id
WHERE movies.title LIKE 'Pulp Fiction';

SELECT movies.title AS TITULO, genres.name AS GENERO, stars.name AS ACTOR, directors.name AS DIRECTOR
FROM movies
INNER JOIN movies_genres
ON movies.id = movies_genres.movies_id
INNER JOIN genres
ON genres_id = genres.id
INNER JOIN movies_stars
ON movies.id = movies_stars.movies_id
INNER JOIN stars
ON stars_id = stars.id
INNER JOIN movies_directors
ON movies.id = movies_directors.movies_id
INNER JOIN directors
ON directors_id = directors.id;

SELECT movies.title AS TITULO, COUNT(genres.name) AS GENERO
FROM movies
INNER JOIN movies_genres
ON movies.id = movies_genres.movies_id
INNER JOIN genres
ON genres_id = genres.id
GROUP BY movies.title;

SELECT directors.name AS DIRECTOR, COUNT(movies.title) AS TOTAL_PELICULAS
FROM movies
INNER JOIN movies_directors
ON movies.id = movies_directors.movies_id
INNER JOIN directors
ON directors_id = directors.id
GROUP BY directors.name;

SELECT
  movies.title,
  CASE
    WHEN imdb_rating < 5 THEN 'INSUFICIENTE'
    WHEN imdb_rating >= 5 AND imdb_rating < 7 THEN 'SUFICIENTE'
    WHEN imdb_rating >= 7 AND imdb_rating < 8 THEN 'NOTABLE'
    WHEN imdb_rating >= 8 AND imdb_rating <= 10 THEN 'EXCELENTE'
    ELSE 'ERROR'
  END AS Rating
FROM
  movies;

UPDATE movies 
SET imdb_rating = 2
WHERE id=7;

UPDATE movies 
SET imdb_rating = 12
WHERE id=1;

SELECT
  movies.title,
  CASE
    WHEN imdb_rating < 5 THEN 'INSUFICIENTE'
    WHEN imdb_rating >= 5 AND imdb_rating < 7 THEN 'SUFICIENTE'
    WHEN imdb_rating >= 7 AND imdb_rating < 8 THEN 'NOTABLE'
    WHEN imdb_rating >= 8 AND imdb_rating <= 10 THEN 'EXCELENTE'
    ELSE 'ERROR'
  END AS Rating
FROM
  movies;
