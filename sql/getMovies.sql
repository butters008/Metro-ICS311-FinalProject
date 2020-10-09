DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMovies`(IN `mpr_id` INT(11))
    NO SQL
BEGIN
SET @TestCaseNumber = 0;
SELECT @name := native_name, 
       @year := year_made,
       @stage_name := stage_name,
       @role := role
FROM mpr_test_data 
WHERE id = mpr_id;

SELECT @movie_count := COUNT(native_name),
@movie_id := movies.movie_id
FROM movies 
WHERE native_name = @name AND 
      year_made = @year;

SELECT @person_count := COUNT(stage_name),
@person_id := people.people_id
FROM people 
WHERE stage_name = @stage_name;

SELECT @relationship_count := COUNT(role)
FROM movie_people
WHERE movie_id = @movie_id AND people_id = @person_id;

SELECT @max_people := MAX(people.people_id)
FROM people;

SELECT @max_movie := MAX(movie_id)
FROM movies;

SELECT
CASE
    WHEN @movie_count=1 AND @person_count=1 AND @relationship_count=1 THEN 1
    WHEN @movie_count=0 AND @person_count=0 AND @relationship_count=0 THEN 2
    WHEN @movie_count=1 AND @person_count=1 AND @relationship_count=0 THEN 3
    WHEN @movie_count=1 AND @person_count=0 AND @relationship_count=0 THEN 4
    WHEN @movie_count=0 AND @person_count=1 AND @relationship_count=0 THEN 5 
    WHEN @movie_count>1 THEN 7
    WHEN @person_count>1 THEN 8
    ELSE 9
END 
INTO @TestCaseNumber;

IF @TestCaseNumber = 1 THEN 
UPDATE mpr_test_data SET mpr_test_data.execution_status ="Already Exists"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 2 THEN
INSERT INTO movies(movie_id, native_name, year_made) VALUES (@max_movie+1,
@name, @year);
INSERT INTO people(people_id, stage_name) VALUES (@max_people+1, @stage_name);
INSERT INTO movie_people(movie_id, people_id, role) VALUES (@max_movie+1, @max_people+1, @role);
UPDATE mpr_test_data SET mpr_test_data.execution_status = "M, P, R created"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 3 THEN
INSERT INTO movie_people(movie_id, people_id, role) VALUES (@movie_id, @person_id, @role);
UPDATE mpr_test_data SET mpr_test_data.execution_status = "M, P exist, R created"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 4 THEN
INSERT INTO people(people_id, stage_name) VALUES (@max_people+1, @stage_name);
INSERT INTO movie_people(movie_id, people_id, role) VALUES (@movie_id, @max_people+1, @role);
UPDATE mpr_test_data SET mpr_test_data.execution_status = "M exists, P, R created"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 5 THEN 
INSERT INTO movies(movie_id, native_name, year_made) VALUES (@max_movie+1, @name, @year); 
INSERT INTO movie_people(movie_id, people_id, role) VALUES (@max_movie+1, @person_id, @role);
UPDATE mpr_test_data SET mpr_test_data.execution_status = "M created, P exists, R created"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 7 THEN 
UPDATE mpr_test_data SET mpr_test_data.execution_status = "Unique movie tuple cannot be identified"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 8 THEN
UPDATE mpr_test_data SET mpr_test_data.execution_status = "Unique person tuple cannot be identified"
WHERE mpr_test_data.id = mpr_id;
END IF;

IF @TestCaseNumber = 9 THEN
SELECT * from songs;
END IF;

END$$
DELIMITER ;