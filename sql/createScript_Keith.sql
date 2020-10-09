/*This script will hold 5 movies, 5 people, and 5 movie_people relations*/

/*movie 1 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id = 1;
SET @people_id = 1;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id,"Star Wars Episode IV: A New Hope","Star Wars Episode IV: A New Hope", 1977);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id,"Mark Hamill", "Mark", "","Hamill","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id, @people_id,"Lead Actor", "Luke Skywalker");

/*movie 2 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id1 = 2;
SET @people_id1 = 2;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id1,"The Hobbit","The Hobbit", 2012);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id1,"Martin Freeman", "Martin", "","Freeman","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id1, @people_id1,"Lead Actor", "Bilbo Bagins");

/*movie 3 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id2 = 3;
SET @people_id2 = 3;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id2,"Spaceballs","Spaceballs", 1987);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id2,"John Candy", "John", "","Candy","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id2, @people_id2,"Supporting Actor", "Barf");

/*movie 4 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id3 = 4;
SET @people_id3 = 4;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id3,"Robin Hood: Men in Tights","Robin Hood: Men in Tights", 1993);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id3,"Mel Brooks", "Mel", "","Brooks","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id3, @people_id3,"Director", "Mel Brooks");

/*movie 5 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id4 = 5;
SET @people_id4 = 5;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id4,"Terminator","Terminator", 1984);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id4,"Linda Hamilton", "Linda", "","Hamilton","Female","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id4, @people_id4,"Lead Actress", "Sarah Connor");