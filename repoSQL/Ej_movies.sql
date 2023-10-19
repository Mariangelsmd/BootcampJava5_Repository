-- CREACION DATABASE
DROP DATABASE IF EXISTS db_movies;
CREATE DATABASE IF NOT EXISTS db_movies;
USE db_movies;

-- CREACION TABLAS
CREATE TABLE IF NOT EXISTS movies (
 id INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
 title VARCHAR(100) UNIQUE,
 yeat INT,
 image_url VARCHAR(255),
 certificate VARCHAR(45),
 runtime INT,
 imbd_rating FLOAT,
 descript TEXT,
 metascore INT,
 votes INT,
 gross BIGINT
);

CREATE TABLE IF NOT EXISTS directors (
 id INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
 completename VARCHAR(45) UNIQUE,
 about TEXT
);

CREATE TABLE IF NOT EXISTS stars (
 id INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
 completename VARCHAR(45) UNIQUE,
 about TEXT
);

CREATE TABLE IF NOT EXISTS genres (
 id INT UNSIGNED PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
 genre VARCHAR(45) UNIQUE
);

CREATE TABLE IF NOT EXISTS movies_directors (
 movie_id INT UNSIGNED,
 director_id INT UNSIGNED,
 PRIMARY KEY (movie_id, director_id),
 FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
 FOREIGN KEY (director_id) REFERENCES directors(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS movies_stars (
 movie_id INT UNSIGNED,
 stars_id INT UNSIGNED,
 PRIMARY KEY (movie_id, stars_id),
 FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
 FOREIGN KEY (stars_id) REFERENCES stars(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS movies_genres (
 movie_id INT UNSIGNED,
 genre_id INT UNSIGNED,
 PRIMARY KEY (movie_id, genre_id),
 FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
 FOREIGN KEY (genre_id) REFERENCES genres(id) ON DELETE CASCADE
);

-- INSERTS
-- Con IGNORE evitamos duplicados al poner tambien UNIQUE en la columnas de nombres y géneros
INSERT INTO movies (title, yeat, image_url, certificate, runtime, imbd_rating, descript, metascore, votes, gross)
VALUES 
    ('Titanic', 1997, 'https://example.com/titanic.jpg', 'PG-13', 195, 7.8, 'A love story on a sinking ship.', 75, 1200000, 2200000000),
    ('Grease', 1978, 'https://example.com/grease.jpg', 'PG', 110, 7.2, 'A musical about high school romance.', 68, 500000, 396000000),
    ('Pulp Fiction', 1994, 'https://example.com/pulpfiction.jpg', 'R', 154, 8.9, 'Crime and dark humor intersect in Los Angeles.', 94, 1500000, 214000000),
    ('Blade Runner', 1982, 'https://example.com/bladerunner.jpg', 'R', 117, 8.1, 'A dystopian future where humans and replicants coexist.', 89, 900000, 33000000),
    ('El resplandor', 1980, 'https://example.com/shining.jpg', 'R', 146, 8.4, 'A family encounters supernatural forces at an isolated hotel.', 63, 800000, 44701672),
    ('El Padrino', 1972, 'https://example.com/godfather.jpg', 'R', 175, 9.2, 'The story of the Corleone crime family.', 100, 2000000, 245066411),
    ('Origen', 2010, 'https://example.com/inception.jpg', 'PG-13', 148, 8.8, 'A thief enters the dreams of others.', 74, 2000000, 829895144),
    ('Regreso al futuro', 1985, 'https://example.com/bttf.jpg', 'PG', 116, 8.5, 'Time-travel adventure with Marty McFly and Doc Brown.', 87, 900000, 381109762),
    ('American History X', 1998, 'https://example.com/americanhistoryx.jpg', 'R', 119, 8.5, 'A former neo-nazi tries to prevent his brother from going down the same wrong path.', 62, 800000, 23700184),
    ('Casablanca', 1942, 'https://example.com/casablanca.jpg', 'PG', 102, 8.5, 'Romantic drama set during World War II.', 100, 600000, 10462500);

INSERT IGNORE INTO directors (completename, about)
VALUES 
    ('James Cameron', 'Famous director known for Avatar and Titanic.'),
    ('Randal Kleiser', 'Director of Grease.'),
    ('Quentin Tarantino', 'Acclaimed filmmaker known for Pulp Fiction.'),
    ('Ridley Scott', 'Director of Blade Runner.'),
    ('Stanley Kubrick', 'Iconic director known for The Shining.'),
    ('Francis Ford Coppola', 'Renowned director of The Godfather.'),
    ('Christopher Nolan', 'Director of Inception.'),
    ('Robert Zemeckis', 'Director of Back to the Future.'),
    ('Tony Kaye', 'Director of American History X.'),
    ('Michael Curtiz', 'Director of Casablanca.');
    
INSERT IGNORE INTO stars (completename, about)
VALUES 
    ('Leonardo DiCaprio', 'Academy Award-winning actor.'),
    ('John Travolta', 'Iconic actor and dancer.'),
    ('Samuel L. Jackson', 'Versatile actor known for Pulp Fiction.'),
    ('Harrison Ford', 'Renowned actor known for Blade Runner.'),
    ('Jack Nicholson', 'Legendary actor known for The Shining.'),
    ('Marlon Brando', 'Legendary actor known for The Godfather.'),
    ('Michael J. Fox', 'Actor known for Back to the Future.'),
    ('Edward Norton', 'Versatile actor known for American History X.'),
    ('Humphrey Bogart', 'Classic actor known for Casablanca.'),
    ('Olivia Newton-John', 'Singer and actress, famous for her role in Grease.');
    
INSERT IGNORE INTO genres (genre)
VALUES 
    ('Romance'),
    ('Musical'),
    ('Crime'),
    ('Sci-Fi'),
    ('Horror'),
    ('Drama'),
    ('Adventure'),
    ('Comedy'),
    ('Thriller'),
    ('Fantasy'),
    ('Horror'); -- Esta es una insercción de prueba para comprobar que no introduce duplicados
    
INSERT INTO movies_directors (movie_id, director_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    
INSERT INTO movies_stars (movie_id, stars_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 1),
    (8, 7),
    (9, 8), 
    (10, 9), 
    (2, 10);
    
INSERT INTO movies_genres (movie_id, genre_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 4),
    (8, 7),
    (9, 6), 
    (10, 1);
    
-- DELETE

DROP TABLE IF EXISTS movies_genres;
DROP TABLE IF EXISTS movies_stars;
DROP TABLE IF EXISTS movies_directors;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS movies;
DROP DATABASE IF EXISTS db_movies;

