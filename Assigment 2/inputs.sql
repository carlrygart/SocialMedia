INSERT INTO user SET first_name='John', last_name='Smith', birthday='19800101', email='john@smith.sg', sex='M', hometown='Singapore';
INSERT INTO user SET first_name='Sarah', last_name='Johnson', birthday='19890410', email='sarah@johnson.com', sex='F', hometown='New York';

INSERT INTO work_experience SET employee_id=1, employer='Apple', position='Sales Manager', city=NULL, starting_time=20160101;
INSERT INTO education SET user_id=2, school_name='Nanyang Tech', school_type=NULL, class_year=NULL;

INSERT INTO message SET timestamp=20160309173031, text="Hello world!", sender_id=1, receiver_id=2;
INSERT INTO comment SET timestamp=20160309173630, text='Nice message!', user_id=2, message_id=1;

INSERT INTO point_of_interest SET name='Orchard Road', description=NULL, address=NULL, contact_info=NULL, longitude=0.6756387, latitude=100.35453276;
INSERT INTO category SET category_name='Shopping';
INSERT INTO poi_has_category SET point_of_interest_id=1, category_name='Shopping';
INSERT INTO checkin_at SET user_id=2, point_of_interest_id=1, timestamp=20160309152101, text=NULL;

INSERT INTO photo_album SET photo_album_name='Singapore2014', owner_id=1;
INSERT INTO photo SET reference='/disk/photos/singapore2014/2345jb6jv234jb5.jpg', photo_album_id=1, text_caption=NULL, assoc_poi_id=1;

INSERT INTO friendship SET user_id_1=1, user_id_2=2, approved=true;
INSERT INTO friend_list SET friend_list_name='Friends', owner_id=1;
INSERT INTO friend_list SET friend_list_name='News Feed', owner_id=1;
INSERT INTO friend_list SET friend_list_name='Friends', owner_id=2;
INSERT INTO friend_list SET friend_list_name='News Feed', owner_id=2;
INSERT INTO friendship_listed_in SET user_id_1=1, user_id_2=2, friend_list_id=2;
INSERT INTO friendship_listed_in SET user_id_1=1, user_id_2=2, friend_list_id=5;
INSERT INTO album_visible_to_friend_list SET friend_list_id=2, photo_album_id=1;

