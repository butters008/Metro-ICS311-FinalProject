/*This script will hold 5 movies, 5 people, and 5 movie_people relations*/

/*movie 1 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id = 11;
SET @people_id = 11;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id,"Uncut Gems","Uncut Gems", 2019);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id,"Adam Sandler", "Adam", "Richard","Sandler","male","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id, @people_id,"Lead Actor", "Howard Ratner");

/*movie 2 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id1 = 12;
SET @people_id1 = 12;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id1,"Beauty and the Beast","Beauty and the Beast", 2017);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id1,"Emma Watson", "Emma", "Charlotte Duerre","Watson","female","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id1, @people_id1,"Lead Actress", "Belle");

/*movie 3 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id2 = 13;
SET @people_id2 = 13;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id2,"The Social Network","The Social Network", 2010);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id2,"Jesse Eisenberg", "Jesse", "Adam","Eisenberg","male","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id2, @people_id2,"Lead Actor", "Mark Zuckerberg");

/*movie 4 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id3 = 14;
SET @people_id3 = 14;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id3,"Boyz n the Hood","Boyz n the Hood", 1991);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id3,"Ice Cube", "O'Shea", "A","lJackson","male","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id3, @people_id3,"Lead Actor", "Doughboy");

/*movie 5 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id4 = 15;
SET @people_id4 = 15;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id4,"기생충","Parasite", 2019);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id4,"Cho Yeo-jeong", "Yeo-jeong", "A","Cho","female","image_name");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id4, @people_id4,"Lead Actress", "Yeon-kyo");