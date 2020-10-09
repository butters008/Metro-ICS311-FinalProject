--08/03/2020

--Ksenia's optimized query 7.24
--Outputs information about all people and movies
--To optimize the query, I set a default value which allows to get rid of NULLs. However, the statement has already been performing very fast (0.0085 seconds), 
--so getting rid of null values haven't significantly helped.
SELECT
    movie_name_native,
    movie_name_english,
    movie_year,
    director,
    producer,
    music_director,
    lead_actor,
    lead_actress,
    GROUP_CONCAT(DISTINCT actor) AS actors,
    GROUP_CONCAT(DISTINCT actress) AS actresses
FROM movies 
LEFT JOIN people ON movies.movie_id = people.people_id
LEFT JOIN people_actors ON people.people_id = people_actors.people_id
LEFT JOIN people_actresses ON people_actresses.people_id = people.people_id
GROUP BY
    movies.movie_id;

--Drew's Query
--Deletes all the information from the movie table and all the related tables 
--movie_id column has already been indexed since it's a priary key, so there was not a lot that could be done to improve the performance  
DELETE FROM movies WHERE movie_id = 5;

--Keeyanna's Query
--Updates the movie_trivia table, row 5
--movie_id column has already been indexed since it's a priary key, so there was not a lot that could be done to improve the performance 
UPDATE `movies` 
SET `movie_name_english`= 'Super Cool Updated Movie 10000' 
WHERE movie_id = 10000;

--Ayesha's Query 7.51
--Selects all the movies with a certain director and lead actor
--Indexed columns in movie_people table and columns in people table (people_id, director, and lead_actor)
SELECT movie_name_native AS Movie, director AS Director, lead_actor AS "Lead Actor"
FROM movies
LEFT JOIN movie_people ON movies.movie_id = movie_people.movie_id
LEFT JOIN people ON movie_people.movie_id = people.people_id
WHERE director = "Tim Burton" AND lead_actor = "Johnny Depp"

--Keith's Query 7.14
--Insert a movie into movies table
--movie_id column has already been indexed since it's a priary key, so there was not a lot that could be done to improve the performance 
INSERT INTO movie_trivia (trivia_id, movie_id, trivia) VALUES (2222222, 2222222, "Am I OP or What?!")


--07/20/2020
--Ksenia
--7.49
--All the movies with the songs written by a lyricist with people_id = 5
SELECT movie_name_english, movie_year, movie_people.role, crew.gender, CONCAT(crew.first_name, " ",  crew.last_name)
FROM movies JOIN movie_people ON movies.movie_id = movie_people.movie_id
JOIN crew ON movie_people.people_id = crew.people_id
WHERE movie_people.role = 'lyricist' AND movie_people.people_id = 5;

--Drew
--7.60
--Count of movies with the same name if it's higher than one
SELECT COUNT(movie_name_native) AS name_native_count
FROM movies
GROUP BY movie_name_native
HAVING COUNT(movie_name_native) > 1

--Ayesha
--7.51
--Selects all the movies with a certain director and lead actor
SELECT
    movie_name_native AS Movie,
    director AS Director,
    lead_actor AS "Lead Actor"
FROM
    movies
JOIN movie_people ON movies.movie_id = movie_people.movie_id
JOIN people ON movie_people.movie_id = people.people_id
WHERE
    director = "Tim Burton" AND lead_actor = "Johnny Depp"
GROUP BY movies.movie_id;

--Keith
--7.67
--Updates the movie_anagrams table if the input string is the anagram of the movie_name_native
UPDATE movies LEFT JOIN movie_anagrams ON movies.movie_id = movie_anagrams.movie_id
LEFT JOIN movie_numbers ON movies.movie_id = movie_numbers.movie_id
SET movie_anagrams.anagram = "cinema" 
WHERE movies.movie_name_native LIKE "%c%" AND
movies.movie_name_native LIKE "%i%" AND
movies.movie_name_native LIKE "%n%" AND
movies.movie_name_native LIKE "%e%" AND
movies.movie_name_native LIKE "%m%" AND
movies.movie_name_native LIKE "%a%" AND
movie_numbers.length = 6;


--Keeyanna
--7.62
--Selects all the movies that have the input string as the anagram in their name
SELECT * FROM movies LEFT JOIN movie_numbers ON movies.movie_id = movie_numbers.movie_id
WHERE movies.movie_name_native LIKE "%a%" AND
movies.movie_name_native LIKE "%c%" AND
movies.movie_name_native LIKE "%t%" AND
movie_numbers.length = 3

--07/13/2020
--Keeyanna's Query
--Updates the movie_trivia table, row 5
UPDATE `movie_trivia` 
SET `trivia`= 'Super Cool Updated Trivia About Movie 5' 
WHERE movie_id = 5;

--Keith's Query
--Deletes all the information related to the chosen people_id
DELETE
    `people`,
    `people_actors`,
    `people_actresses`
FROM
    `people`
NATURAL JOIN `people_actors` NATURAL JOIN `people_actresses` WHERE `people_id` = 3;

--Drew's Query
--Deletes all the information from movie table and all the related tables 
--(used foreign key constraints and ON DELETE CASCADE to do that)
DELETE FROM movies WHERE movie_id = 5;

--Ayesha's Query
--Updates the movie_quotes table, row 2
UPDATE
    movie_quotes
SET
    QUOTE = '"They say you can see the whole universe in opals"'
WHERE
    movie_id = 2;


--Ksenia's Query
--Outputs information about people and movies 
SELECT
    movie_name_native,
    movie_name_english,
    movie_year,
    director,
    producer,
    music_director,
    lead_actor,
    lead_actress,
    GROUP_CONCAT(DISTINCT actor) AS actors,
    GROUP_CONCAT(DISTINCT actress) AS actresses
FROM
    (
        (
            (
                movies
            LEFT JOIN movie_people ON movies.movie_id = movie_people.people_id
            )
        LEFT JOIN people ON movie_people.people_id = people.people_id
        )
    LEFT JOIN people_actors ON people.people_id = people_actors.people_id
    )
LEFT JOIN people_actresses ON people_actresses.people_id = people.people_id
WHERE
    movies.movie_id = 1
GROUP BY
    movies.movie_id;
    
 --Group Query
 --Outputs information about the movie and counts number of keywords, trivias, and people that are related to the movies
 SELECT DISTINCT movies.movie_id, movie_name_native, movie_name_english, movie_year, `language`, country, genre, plot, COUNT(DISTINCT trivia) AS Trivias, COUNT(DISTINCT keyword) AS Keywords, COUNT(DISTINCT movie_media_id) AS Posters, COUNT(DISTINCT song.song_id) AS Songs, (p.director IS NOT NULL) +
  (p.producer IS NOT NULL) +
  (p.music_director IS NOT NULL) +
  (p.lead_actor IS NOT NULL) +
  (p.lead_actress IS NOT NULL) AS People
FROM movies
LEFT JOIN metadata as meta ON movies.movie_id = meta.movie_id
LEFT JOIN movie_trivia as t ON movies.movie_id = t.movie_id 
LEFT JOIN movie_keywords as k ON movies.movie_id = k.movie_id
LEFT JOIN multimedia as multi ON movies.movie_id = multi.movie_media_id
LEFT JOIN movie_song as song ON movies.movie_id = song.movie_id
LEFT JOIN songs as s ON song.song_id = s.song_id
LEFT JOIN movie_people as mp ON mp.movie_id = movies.movie_id
LEFT JOIN people as p ON mp.people_id = p.people_id
LEFT JOIN people_actors AS actors ON p.people_id = actors.people_id
LEFT JOIN people_actresses AS actresses ON p.people_id = actresses.people_id
GROUP BY movies.movie_id
ORDER BY movies.movie_id
