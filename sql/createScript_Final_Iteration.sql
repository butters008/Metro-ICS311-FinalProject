/*This script will hold 5 movies, 5 people, and 5 movie_people relations*/

/*movie 1 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id = 1;
SET @people_id = 1;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id,"testing script","testing script", 2002);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id,"stage_name", "first name", "middle_name","last_name","gender","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id, @people_id,"role", "screen name");

/*movie 2 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id1 = 2;
SET @people_id1 = 2;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id1,"testing script","testing script", 2002);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id1,"stage_name", "first name", "middle_name","last_name","gender","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id1, @people_id1,"role", "screen name");

/*movie 3 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id2 = 3;
SET @people_id2 = 3;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id2,"testing script","testing script", 2002);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id2,"stage_name", "first name", "middle_name","last_name","gender","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id2, @people_id2,"role", "screen name");

/*movie 4 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id3 = 4;
SET @people_id3 = 4;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id3,"testing script","testing script", 2002);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id3,"stage_name", "first name", "middle_name","last_name","gender","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id3, @people_id3,"role", "screen name");

/*movie 5 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id4 = 5;
SET @people_id4 = 5;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id4,"testing script","testing script", 2002);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id4,"stage_name", "first name", "middle_name","last_name","gender","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id4, @people_id4,"role", "screen name");