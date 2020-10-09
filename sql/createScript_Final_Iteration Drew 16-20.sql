/*This script will hold 5 movies, 5 people, and 5 movie_people relations*/

/*movie 16 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id = 16;
SET @people_id = 16;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id,"Tenkû no shiro Rapyuta","Castle in the Sky", 1986);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id,"Mayumi Tanaka", "Mayumi", "","Tanaka","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id, @people_id,"Lead Actor", "Pazu");

/*movie 17 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id1 = 17;
SET @people_id1 = 17;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id1,"Van Helsing","Van Helsing", 2004);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id1,"Hugh Jackman", "Hugh", "","Jackman","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id1, @people_id1,"Lead Actor", "Van Helsing");

/*movie 18 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id2 = 18;
SET @people_id2 = 18;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id2,"Avatar","Avatar", 2009);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id2,"Sam Worthington", "Sam", "","Worthington","gender","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id2, @people_id2,"Lead Actor", "Jake Sully");

/*movie 19 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id3 = 19;
SET @people_id3 = 19;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id3,"The Lord of the Rings: The Fellowship of the Ring","The Lord of the Rings: The Fellowship of the Ring", 2001);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id3,"Elijah Wood", "Elijah", "","Wood","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id3, @people_id3,"Lead Actor", "Frodo");

/*movie 20 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id4 = 20;
SET @people_id4 = 20;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id4,"The Matrix","The Matrix", 1999);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id4,"Keanu Reeves", "Keanu", "","Reeves","Male","");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id4, @people_id4,"Lead Actor", "Neo");