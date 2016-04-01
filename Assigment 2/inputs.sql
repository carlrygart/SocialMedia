INSERT INTO user SET first_name='John', last_name='Smith', birthday='19800101', email='john@smith.sg', sex='M', hometown='Singapore';
INSERT INTO user SET first_name='Sarah', last_name='Johnson', birthday='19890410', email='sarah@johnson.com', sex='F', hometown='New York';
INSERT INTO user SET first_name='Yang', last_name='Xing', birthday='19840212', email='yang@xing.com', sex='M', hometown='Stockholm';
INSERT INTO user SET first_name='Mona', last_name='Becker', birthday='19911220', email='mona@becker.com', sex='F', hometown='Lund';
INSERT INTO user SET first_name='Frank', last_name='Wikstrom', birthday='19751021', email='frank@Wikstrom.se', sex='M', hometown='Lund';
INSERT INTO user SET first_name='Lars', last_name='Wallman', birthday='19700921', email='lars@wallman.se', sex='M', hometown='Paris';

INSERT INTO work_experience SET employee_id=1, employer='Apple', position='Sales Manager', city=NULL, starting_time=20160101;
INSERT INTO education SET user_id=2, school_name='Nanyang Tech', school_type=NULL, class_year=NULL;

INSERT INTO message SET timestamp=20150309173031, text="Hello world!", sender_id=1, receiver_id=2;
INSERT INTO message SET timestamp=20150310183031, text="I like candy.", sender_id=2, receiver_id=3;
INSERT INTO message SET timestamp=20150411183036, text="How are you doing?", sender_id=1, receiver_id=3;
INSERT INTO message SET timestamp=20150411183036, text="What are you doing?", sender_id=4, receiver_id=2;
INSERT INTO message SET timestamp=20150516104636, text="My first status update.", sender_id=2, receiver_id=2;
INSERT INTO message SET timestamp=20150516104637, text="This is a message.", sender_id=6, receiver_id=3;
INSERT INTO message SET timestamp=20150516103637, text="This is another message.", sender_id=6, receiver_id=2;
INSERT INTO message SET timestamp=20150516103638, text="This is a third message.", sender_id=1, receiver_id=6;
INSERT INTO message SET timestamp=20150516165039, text="Lorem ipsum dolor sit amet, lacus nonummy mattis, ante pellentesque.", sender_id=1, receiver_id=2;

INSERT INTO message SET text="Lorem ipsum dolor sit amet, aliquam tellus, amet eget quisque.", sender_id=3, receiver_id=2;
INSERT INTO message SET text="felis libero placerat et malesuada malesuada", sender_id=5, receiver_id=2;
INSERT INTO message SET text="vitae nullam neque in purus tincidunt", sender_id=2, receiver_id=2;
INSERT INTO message SET text="a facilisis a sodales sem volutpat", sender_id=2, receiver_id=4;
INSERT INTO message SET text="vel ut enim augue tempus posuere", sender_id=3, receiver_id=2;
INSERT INTO message SET text="turpis tristique habitasse nisl magna porta", sender_id=4, receiver_id=2;
INSERT INTO message SET text="consectetuer lacinia condimentum donec cumque volutpat", sender_id=6, receiver_id=4;

INSERT INTO comment SET timestamp=20160309173630, text='Nice message!', user_id=2, message_id=1;
INSERT INTO comment SET timestamp=20160309183131, text='Agree!', user_id=3, message_id=1;
INSERT INTO comment SET timestamp=20160409183132, text='Me too..', user_id=4, message_id=2;
INSERT INTO comment SET timestamp=20160409183133, text='Hello there!', user_id=4, message_id=1;

INSERT INTO point_of_interest SET name='Orchard Road', description=NULL, address=NULL, contact_info=NULL, longitude=0.6756387, latitude=100.35453276;
INSERT INTO category SET category_name='Shopping';
INSERT INTO poi_has_category SET point_of_interest_id=1, category_name='Shopping';
INSERT INTO checkin_at SET user_id=2, point_of_interest_id=1, timestamp=20160309152101, text=NULL;

INSERT INTO photo_album SET photo_album_name='Singapore2014', owner_id=1;
INSERT INTO photo SET reference='/disk/photos/singapore2014/2345jb6jv234jb5.jpg', photo_album_id=1, text_caption=NULL, assoc_poi_id=1;

INSERT INTO friendship SET user_id_1=1, user_id_2=2, approved=true;
INSERT INTO friendship SET user_id_1=2, user_id_2=3, approved=true;
INSERT INTO friendship SET user_id_1=4, user_id_2=5, approved=true;
INSERT INTO friendship SET user_id_1=4, user_id_2=6, approved=true;
INSERT INTO friendship SET user_id_1=6, user_id_2=1, approved=true;
INSERT INTO friendship SET user_id_1=2, user_id_2=4, approved=true;

# Not needed. Created with trigger.
#INSERT INTO friend_list SET friend_list_name='Friends', owner_id=1;
#INSERT INTO friend_list SET friend_list_name='News Feed', owner_id=1;
#INSERT INTO friend_list SET friend_list_name='Friends', owner_id=2;
#INSERT INTO friend_list SET friend_list_name='News Feed', owner_id=2;
#INSERT INTO friendship_listed_in SET user_id_1=1, user_id_2=2, friend_list_id=1;
#INSERT INTO friendship_listed_in SET user_id_1=1, user_id_2=2, friend_list_id=3;
INSERT INTO friendship_listed_in SET user_id_1=6, user_id_2=1, friend_list_id=12;
INSERT INTO friendship_listed_in SET user_id_1=2, user_id_2=4, friend_list_id=4;
INSERT INTO friendship_listed_in SET user_id_1=2, user_id_2=3, friend_list_id=4;
INSERT INTO friendship_listed_in SET user_id_1=4, user_id_2=6, friend_list_id=8;

INSERT INTO album_visible_to_friend_list SET friend_list_id=1, photo_album_id=1;

