/*This script will hold 5 movies, 5 people, and 5 movie_people relations*/

/*movie 1 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id = 6;
SET @people_id = 6;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id,"Butterfly Effect","Butterfly Effect", 2004);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `last_name`,`gender`) 
VALUES (@people_id,"Ashton Cutcher", "Ashton", "Cutcher","M");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id, @people_id, "Leading Actor", "Evan");

/*movie 2 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id1 = 7;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id1,"Just Married","Just Married", 2003);

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id1, @people_id,"Leading Actor", "Tom Leezak");

/*movie 3 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id2 = 8;
SET @people_id2 = 7;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id2,"Jennifer's Body","Jennifer's Body", 2009);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id2,"Megan Fox", "Megan", "-","Fox","F","-");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id2, @people_id2,"Leading Actress", "Jennifer Check");

/*movie 4 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id3 = 9;
SET @people_id3 = 8;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id3,"Lovelace","Lovelace", 2013);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id3,"Amanda Seyfried", "Amanda", "-","Seyfried","F","-");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id3, @people_id3,"Leading Actress", "Linda Lovelace");

/*movie 5 ---------------------------------------------------------------*/
/*variables for all primary keys*/
SET @movie_id4 = 10;
SET @people_id4 = 9;

/*movies tables has all string values*/
INSERT INTO `movies`(`movie_id`, `native_name`, `english_name`, `year_made`) 
VALUES (@movie_id4,"Widows","Widows", 2018);

/*movies tables has all string values*/
INSERT INTO `people`(`people_id`, `stage_name`, `first_name`, `middle_name`,`last_name`,`gender`,`image_name`) 
VALUES (@people_id4,"Viola Davis", "Viola", "-","Davis","F","-");

/*movies tables has all string values*/
INSERT INTO `movie_people`(`movie_id`, `people_id`, `role`, `screen_name`) 
VALUES (@movie_id4, @people_id4,"Leading Actress", "Veronica Rawlings");
