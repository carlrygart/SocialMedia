#CREATE SCHEMA `social_network` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE user3 (user_id int(15) AUTO_INCREMENT PRIMARY KEY, first_name varchar(255) NOT NULL, last_name varchar(255) NOT NULL, birthday timestamp NULL, email varchar(255) UNIQUE NOT NULL, sex char(1), hometown varchar(255));

CREATE TABLE work_experience ( work_experience_id int(15) AUTO_INCREMENT PRIMARY KEY, employee_id int(15) NOT NULL, employer varchar(255) NOT NULL, position varchar(255), city varchar(255), starting_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, ending_time timestamp NULL, FOREIGN KEY (employee_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE education (education_id int(15) AUTO_INCREMENT PRIMARY KEY, user_id int(15) NOT NULL, school_name varchar(255) NOT NULL, school_type varchar(255), class_year int(4), FOREIGN KEY (user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE message (message_id int(15) AUTO_INCREMENT PRIMARY KEY, timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, text varchar(500) NOT NULL, sender_id int(15) NOT NULL, receiver_id int(15) NOT NULL, FOREIGN KEY (sender_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (receiver_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE comment (comment_id int(15) AUTO_INCREMENT PRIMARY KEY, timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, text varchar(500) NOT NULL, user_id int(15) NOT NULL, message_id int(15) NOT NULL, FOREIGN KEY (user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (message_id) REFERENCES message(message_id) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE point_of_interest (point_of_interest_id int(15) AUTO_INCREMENT PRIMARY KEY, name varchar(255) NOT NULL, description varchar(255), address varchar(255), contact_info varchar(255), longitude float NOT NULL, latitude float NOT NULL, CONSTRAINT coo_constrain UNIQUE (latitude, longitude) );
CREATE TABLE category (category_name varchar(255) PRIMARY KEY );
CREATE TABLE poi_has_category (point_of_interest_id int(15) NOT NULL, category_name varchar(255) NOT NULL, PRIMARY KEY (point_of_interest_id, category_name), FOREIGN KEY (point_of_interest_id) REFERENCES point_of_interest(point_of_interest_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (category_name) REFERENCES category(category_name) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE checkin_at (checkin_id int(15) AUTO_INCREMENT PRIMARY KEY, user_id int(15) NOT NULL, point_of_interest_id int(15) NOT NULL, timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, text varchar(500), FOREIGN KEY (user_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (point_of_interest_id) REFERENCES point_of_interest(point_of_interest_id) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TABLE photo_album (photo_album_id int(15) AUTO_INCREMENT PRIMARY KEY, photo_album_name varchar(255) NOT NULL, owner_id int(15) NOT NULL, FOREIGN KEY (owner_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE photo (reference varchar(255) PRIMARY KEY, photo_album_id int(15) NOT NULL, text_caption varchar(255), assoc_poi_id int(15), FOREIGN KEY (photo_album_id) REFERENCES photo_album(photo_album_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (assoc_poi_id) REFERENCES point_of_interest(point_of_interest_id) ON DELETE SET NULL ON UPDATE CASCADE );

CREATE TABLE friendship (user_id_1 int(15), user_id_2 int(15), approved boolean NOT NULL, PRIMARY KEY (user_id_1, user_id_2), FOREIGN KEY (user_id_1) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (user_id_2) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE friend_list (friend_list_id int(15) AUTO_INCREMENT PRIMARY KEY, friend_list_name varchar(255), owner_id int(15) NOT NULL, FOREIGN KEY (owner_id) REFERENCES user(user_id) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE friendship_listed_in (user_id_1 int(15) NOT NULL, user_id_2 int(15) NOT NULL, friend_list_id int(15) NOT NULL, PRIMARY KEY (user_id_1, user_id_2, friend_list_id), FOREIGN KEY (user_id_1) REFERENCES friendship(user_id_1) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (user_id_2) REFERENCES friendship(user_id_2) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (friend_list_id) REFERENCES friend_list(friend_list_id) ON DELETE CASCADE ON UPDATE CASCADE );
CREATE TABLE album_visible_to_friend_list (friend_list_id int(15), photo_album_id int(15), PRIMARY KEY (friend_list_id, photo_album_id), FOREIGN KEY (friend_list_id) REFERENCES friend_list(friend_list_id) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (photo_album_id) REFERENCES photo_album(photo_album_id) ON DELETE CASCADE ON UPDATE CASCADE );

CREATE TRIGGER AddFriendsList
AFTER INSERT ON user
FOR EACH ROW
INSERT INTO friend_list (friend_list_name, owner_id) VALUES ('Friends', NEW.user_id), ('News Feed', NEW.user_id);

CREATE TRIGGER PutFriendshipInList
AFTER INSERT ON friendship
FOR EACH ROW
INSERT INTO friendship_listed_in (user_id_1, user_id_2, friend_list_id) VALUES
	(NEW.user_id_1, NEW.user_id_2, 
		(SELECT friend_list_id
		FROM friend_list
		WHERE owner_id = NEW.user_id_1 AND friend_list_name = 'Friends')
	),
	(NEW.user_id_1, NEW.user_id_2,
		(SELECT friend_list_id
		FROM friend_list
		WHERE owner_id = NEW.user_id_2 AND friend_list_name = 'Friends')
	);
