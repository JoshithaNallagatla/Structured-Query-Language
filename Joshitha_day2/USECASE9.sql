CREATE DATABASE cdg_hyd_jfs_058;

USE cdg_hyd_jfs_058;

CREATE TABLE movies (
    movie_id INT NOT NULL AUTO_INCREMENT,
    movie_code VARCHAR(12) NOT NULL,
    title VARCHAR(200) NOT NULL,
    genre VARCHAR(60) NOT NULL,
    original_language VARCHAR(40) NOT NULL,
    release_date DATE,
    duration_minutes SMALLINT NOT NULL,
    director_name VARCHAR(120) NOT NULL,
    age_certificate VARCHAR(20) NOT NULL DEFAULT 'UNRATED',
    audience_rating DECIMAL(3, 1),
    production_budget DECIMAL(15, 2),
    catalog_status VARCHAR(20) NOT NULL DEFAULT 'UPCOMING',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `pq_movies_movie_id` PRIMARY KEY (movie_id),
    CONSTRAINT `uq_movie_code` UNIQUE (movie_code),
    CONSTRAINT `chk_duration_minutes` CHECK (duration_minutes > 0),
    CONSTRAINT `chk_audience_rating` CHECK (audience_rating IS NULL OR audience_rating BETWEEN 0.0 AND 10.0),
    CONSTRAINT `chk_budget_non_negative` CHECK (production_budget IS NULL OR production_budget >= 0)


);

INSERT INTO movies(movie_code, title, genre, original_language, release_date,duration_minutes, director_name, age_certificate, audience_rating,production_budget, catalog_status)
VALUES('TEL001', 'Baahubali: The Beginning', 'Action', 'Telugu', '2015-07-10',159, 'S. S. Rajamouli', 'U/A', 8.0, 180000000.00, 'AVAILABLE');


INSERT INTO movies(movie_code, title, genre, original_language, release_date,duration_minutes, director_name, age_certificate, audience_rating,production_budget, catalog_status)
VALUES('TEL003', 'RRR', 'Action', 'Telugu', '2022-03-25',187, 'S. S. Rajamouli', 'U/A', 8.0, 550000000.00, 'AVAILABLE');

SELECT * FROM movies;

