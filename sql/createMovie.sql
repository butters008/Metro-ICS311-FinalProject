/*movie_id is variables for all primary keys*/
SET @movie_id = 1014;
SET @movie_media_id = 1014;
SET @keyword_id = 1014;
SET @trivia_id = 1014;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `movie_name_native`, `movie_year`, `movie_name_english`) 
VALUES (@movie_id,"testing script","testing script","testing script");

/*metadata tables has all string values*/
INSERT INTO `metadata`(`movie_id`, `language`, `country`, `plot`, `genre`) 
VALUES (@movie_id,"testing script","testing script","testing script","testing script");

/*movie_keywords - keyword_id is a primiary key, needs to be changed for every script run probs the same as movie_id*/
INSERT INTO `movie_keywords`(`keyword_id`, `movie_id`, `keyword`) 
VALUES (@keyword_id,@movie_id,"testing script");

/*movie_media tables - movie_media_id is a primary key, needs to be changed for every script run make same as movie_id*/
INSERT INTO `movie_media`(`movie_id`, `movie_media_id`) 
VALUES (@movie_id, @movie_media_id);

/*movie_numbers - all values are ints*/
INSERT INTO `movie_numbers`(`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`)
VALUES (@movie_id,1002,1002,1002,1002,1002,1002);

/*movie_quotes - String*/
INSERT INTO `movie_quotes`(`movie_id`, `quote`) 
VALUES (@movie_id,"testing script");

/*movie_anagrams - String*/
INSERT INTO `movie_anagrams`(`movie_id`, `anagram`) 
VALUES (@movie_id,"testing script");

/*movie_trivia - String*/
INSERT INTO `movie_trivia`(`trivia_id`, `movie_id`, `trivia`) 
VALUES (@trivia_id,@movie_id,"tresting scripts");

/*mutltimedia - String name must be the same as picture stored locally*/
INSERT INTO `multimedia`(`movie_media_id`, `movie_poster`, `photo_stills`) 
VALUES (@movie_media_id,"picture name test","picture name test");
