
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



INSERT INTO `metadata` (`movie_id`, `language`, `country`, `plot`, `genre`) VALUES
(10, 'English', 'United States', 'A young farm boy, a old mystical hermit, and a duo of smugglers are caught up in a epic science fantasy adventure to save a princess and a galaxy from the evil empire.', 'Sci Fantasy');


INSERT INTO `movies` (`movie_id`, `movie_name_native`, `movie_year`, `movie_name_english`) VALUES

(10, 'Star Wars Episode IV: A New Hope', '1977', 'Star Wars Episode IV: A New Hope'),

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(10, 'Adventure');


INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(10, 10, 'Director');

INSERT INTO `movie_song` (`song_id`, `movie_id`) VALUES
(10, 10);


INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(10, 'Is this only a child\'s film?');


INSERT INTO `multimedia` (`movie_media_id`, `movie_poster`, `photo_stills`) VALUES
(10, 'poster10.jpg', 'still10.png');

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`people_id`, `director`, `producer`, `music_director`, `lead_actor`, `lead_actress`, `actors`, `actresses`) VALUES
(10, 'George Lucas', 'George Lucas', 'John Williams', 'Mark Hamill, Harrison Ford', 'Carrie Fisher', 'Kenneth Williams', NULL);

INSERT INTO `people_actors` (`people_id`, `actor`) VALUES
(10, 'test');


INSERT INTO `people_actresses` (`people_id`, `actress`) VALUES
(10, 'test');

INSERT INTO `songs` (`song_id`, `song_title`, `lyrics`, `playback_singers`, `lyricist`, `audio_link`, `video_link`) VALUES
(10, 'Battle Theme', 'No words', NULL, NULL, NULL, NULL);

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(10, 10, 'Composer');
COMMIT;

