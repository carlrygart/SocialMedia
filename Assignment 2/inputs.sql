INSERT INTO user SET first_name='John', last_name='Smith', birthday='19800101', email='john@smith.sg', sex='M', hometown='Singapore';
INSERT INTO user SET first_name='Sarah', last_name='Johnson', birthday='19890410', email='sarah@johnson.com', sex='F', hometown='New York';
INSERT INTO user SET first_name='Yang', last_name='Xing', birthday='19840212', email='yang@xing.com', sex='M', hometown='Stockholm';
INSERT INTO user SET first_name='Mona', last_name='Becker', birthday='19911220', email='mona@becker.com', sex='F', hometown='Lund';
INSERT INTO user SET first_name='Frank', last_name='Wikstrom', birthday='19751021', email='frank@Wikstrom.se', sex='M', hometown='Lund';
INSERT INTO user SET first_name='Lars', last_name='Wallman', birthday='19700921', email='lars@wallman.se', sex='M', hometown='Paris';
INSERT INTO user SET first_name='Cong', last_name='Gao', birthday='19730924', email='cong@goa.sg', sex='M', hometown='Singapore';
INSERT INTO user (first_name, last_name, email) VALUES
	('Aracely', 'Kuchta', 'Aracely@Kuchta.com'),
	('Lavonia', 'Rosenbaum', 'Lavonia@Rosenbaum.com'),
	('Toya', 'Haris', 'Toya@Haris.com'),
	('Filomena', 'Kettle', 'Filomena@Kettle.com'),
	('Lynn', 'Dickerson', 'Lynn@Dickerson.com'),
	('Williams', 'Miramontes', 'Williams@Miramontes.com'),
	('Chuck', 'Rather', 'Chuck@Rather.com'),
	('Everett', 'Hartley', 'Everett@Hartley.com'),
	('Malcom', 'Celentano', 'Malcom@Celentano.com'),
	('Nelda', 'Binder', 'Nelda@Binder.com'),
	('Otilia', 'Barley', 'Otilia@Barley.com'),
	('Britta', 'Dibble', 'Britta@Dibble.com'),
	('Linnie', 'Foutch', 'Linnie@Foutch.com'),
	('Ahmed', 'Stumbaugh', 'Ahmed@Stumbaugh.com'),
	('Cameron', 'Gennaro', 'Cameron@Gennaro.com'),
	('Jeannette', 'Marsh', 'Jeannette@Marsh.com'),
	('Elias', 'Osbourne', 'Elias@Osbourne.com'),
	('Dorethea', 'Elvira', 'Dorethea@Elvira.com'),
	('Launa', 'Alpaugh', 'Launa@Alpaugh.com'),
	('Thaddeus', 'Zanchez', 'Thaddeus@Zanchez.com'),
	('Cheyenne', 'Wagoner', 'Cheyenne@Wagoner.com'),
	('Senaida', 'Franceschi', 'Senaida@Franceschi.com'),
	('Tiana', 'Callaghan', 'Tiana@Callaghan.com'),
	('Lonny', 'Babb', 'Lonny@Babb.com'),
	('Avery', 'Kovats', 'Avery@Kovats.com'),
	('Hulda', 'Eppinger', 'Hulda@Eppinger.com'),
	('Kristy', 'Weeden', 'Kristy@Weeden.com'),
	('Hugo', 'Troyer', 'Hugo@Troyer.com'),
	('Tamiko', 'Crader', 'Tamiko@Crader.com'),
	('Domonique', 'Gathers', 'Domonique@Gathers.com'),
	('Stefan', 'Klug', 'Stefan@Klug.com'),
	('Lezlie', 'Hogan', 'Lezlie@Hogan.com'),
	('Carolina', 'Strahl', 'Carolina@Strahl.com'),
	('Jacqualine', 'Hickson', 'Jacqualine@Hickson.com'),
	('Noriko', 'Jacobson', 'Noriko@Jacobson.com'),
	('Stefany', 'Briseno', 'Stefany@Briseno.com'),
	('Brittanie', 'Killen', 'Brittanie@Killen.com'),
	('Reynaldo', 'Sipe', 'Reynaldo@Sipe.com'),
	('Dierdre', 'Beauchamp', 'Dierdre@Beauchamp.com'),
	('Pat', 'Foor', 'Pat@Foor.com'),
	('Erica', 'Crampton', 'Erica@Crampton.com'),
	('Ladonna', 'Mailman', 'Ladonna@Mailman.com'),
	('Noella', 'Leal', 'Noella@Leal.com'),
	('Alec', 'Climer', 'Alec@Climer.com'),
	('Leanne', 'Rhein', 'Leanne@Rhein.com'),
	('Gala', 'Hallahan', 'Gala@Hallahan.com'),
	('Vernie', 'Manis', 'Vernie@Manis.com'),
	('Marlys', 'Florian', 'Marlys@Florian.com'),
	('Johnathon', 'Warfel', 'Johnathon@Warfel.com'),
	('Marc', 'Nokes', 'Marc@Nokes.com');

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
INSERT INTO message SET timestamp=20150716165139, text="Lacus nonummy mattis, ante pellentesque.", sender_id=1, receiver_id=7;

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
INSERT INTO comment SET text='Testing', user_id=2, message_id=19;
INSERT INTO comment SET text='Testing again', user_id=3, message_id=19;

INSERT INTO point_of_interest SET name='Orchard Road', description=NULL, address=NULL, contact_info=NULL, longitude=0.6756387, latitude=100.35453276;
INSERT INTO point_of_interest (name, longitude, latitude) VALUES
	('Clearmaple', 1.24275, 103.059855),
	('Highbutter', 1.865609, 103.190467),
	('Strongby', 1.09863, 103.432298),
	('Icewood', 1.862024, 103.938213),
	('Deepley', 1.668619, 103.60407),
	('Marblepond', 1.324593, 103.006304),
	('Byfield', 1.291366, 103.13296),
	('Greenmarble', 1.098988, 103.706961),
	('Freyhill', 1.967882, 103.855434),
	('Bushmere', 1.321025, 103.026042),
	('Brightlake', 1.596741, 103.44658),
	('Highfair', 1.216432, 103.206073),
	('Merrowmoor', 1.343008, 103.513888),
	('Corley', 1.944219, 103.559743),
	('Mageshore', 1.74536, 103.866361),
	('Strongcourt', 1.107755, 103.820723),
	('Wildeburn', 1.853091, 103.668394),
	('Ashedge', 1.098077, 103.092979),
	('Rockshore', 1.015007, 103.587485),
	('Griffinmarsh', 1.543981, 103.295605),
	('Marshshore', 1.996391, 103.600133),
	('Springview', 1.953909, 103.699225),
	('Bushbridge', 1.70614, 103.946146),
	('Edgeham', 1.403314, 103.962502),
	('Falconmoor', 1.001527, 103.807022),
	('Westbarrow', 1.117538, 103.034399),
	('Greenby', 1.395162, 103.513787),
	('Lightash', 1.266906, 103.101693),
	('Springmeadow', 1.766022, 103.284429),
	('Freymead', 1.09829, 103.505672),
	('Highsnow', 1.896656, 103.219572),
	('Moorborough', 1.269083, 103.101641),
	('Iceland', 1.415702, 103.857765),
	('Violetfalcon', 1.796855, 103.946077),
	('Lightgrass', 1.431117, 103.51079),
	('Aelbank', 1.159397, 103.939853),
	('Dragonmill', 1.79207, 103.080556),
	('Newoak', 1.829227, 103.19316),
	('Vertmerrow', 1.046281, 103.162747),
	('Brookwyn', 1.051903, 103.76938),
	('Wellston', 1.916287, 103.003839);
UPDATE `social_network`.`point_of_interest` SET `name`='Clearmaple pizza', `description`='Delicious food' WHERE `point_of_interest_id`='2';
UPDATE `social_network`.`point_of_interest` SET `description`='Best fast food' WHERE `point_of_interest_id`='3';
UPDATE `social_network`.`point_of_interest` SET `name`='Strongby pizza' WHERE `point_of_interest_id`='4';
UPDATE `social_network`.`point_of_interest` SET `name`='Icewood burgers', `description`='Hamburgers, fast food' WHERE `point_of_interest_id`='5';
UPDATE `social_network`.`point_of_interest` SET `name`='Deepley sushi', `description`='Sushi place for everyone' WHERE `point_of_interest_id`='6';
UPDATE `social_network`.`point_of_interest` SET `description`='Delicious sushi' WHERE `point_of_interest_id`='7';
UPDATE `social_network`.`point_of_interest` SET `name`='Byfield pizza', `description`='Delicious fastfood' WHERE `point_of_interest_id`='8';
UPDATE `social_network`.`point_of_interest` SET `name`='Greenmarble pizza', `description`='Come here!' WHERE `point_of_interest_id`='9';


INSERT INTO category SET category_name='Shopping';
INSERT INTO poi_has_category SET point_of_interest_id=1, category_name='Shopping';

INSERT INTO checkin_at SET user_id=2, point_of_interest_id=1, timestamp=20160309152101, text=NULL;
INSERT INTO checkin_at (user_id, point_of_interest_id) VALUES
	(12, 23),
	(27, 9),
	(20, 11),
	(20, 27),
	(44, 5),
	(12, 34),
	(33, 35),
	(54, 4),
	(6, 32),
	(24, 28),
	(42, 38),
	(30, 15),
	(54, 37),
	(23, 9),
	(3, 35),
	(45, 29),
	(24, 24),
	(41, 33),
	(43, 20),
	(8, 11),
	(18, 7),
	(44, 11),
	(37, 3),
	(9, 6),
	(20, 29),
	(9, 3),
	(28, 12),
	(3, 20),
	(2, 23),
	(49, 36),
	(39, 38),
	(18, 39),
	(2, 4),
	(15, 28),
	(36, 21),
	(29, 34),
	(3, 36),
	(37, 17),
	(39, 7),
	(22, 23),
	(36, 35),
	(30, 11),
	(11, 26),
	(7, 5),
	(43, 6),
	(4, 10),
	(37, 20),
	(24, 31),
	(50, 25),
	(13, 23),
	(6, 4),
	(29, 23),
	(55, 21),
	(2, 30),
	(13, 34),
	(25, 36),
	(20, 16),
	(32, 39),
	(39, 16),
	(18, 25),
	(6, 37),
	(18, 1),
	(12, 36),
	(39, 2),
	(42, 15),
	(33, 23),
	(29, 19),
	(34, 37),
	(6, 23),
	(6, 34),
	(43, 3),
	(44, 32),
	(15, 30),
	(47, 7),
	(4, 35),
	(40, 16),
	(50, 19),
	(55, 18),
	(9, 23),
	(33, 26),
	(28, 20),
	(31, 34),
	(19, 31),
	(41, 37),
	(4, 39),
	(30, 7),
	(22, 3),
	(11, 20),
	(42, 28),
	(17, 16),
	(44, 30),
	(44, 34),
	(46, 13),
	(5, 20),
	(9, 12),
	(27, 22),
	(33, 37),
	(37, 3),
	(36, 12),
	(39, 12),
	(21, 8),
	(29, 40),
	(31, 26),
	(53, 17),
	(32, 3),
	(28, 31),
	(18, 16),
	(41, 15),
	(52, 20),
	(10, 8),
	(13, 37),
	(7, 9),
	(40, 38),
	(22, 35),
	(53, 33),
	(41, 8),
	(53, 1),
	(17, 15),
	(9, 5),
	(10, 18),
	(16, 21),
	(56, 5),
	(21, 40),
	(15, 12),
	(39, 10),
	(34, 27),
	(20, 28),
	(44, 38),
	(12, 28),
	(46, 5),
	(31, 4),
	(47, 27),
	(3, 37),
	(42, 10),
	(44, 36),
	(22, 18),
	(49, 4),
	(45, 9),
	(48, 24),
	(31, 21),
	(52, 36),
	(32, 18),
	(28, 25),
	(29, 12),
	(30, 33),
	(15, 32),
	(21, 23),
	(9, 8),
	(21, 26),
	(36, 32),
	(40, 28),
	(7, 26),
	(10, 37),
	(20, 17),
	(12, 35),
	(56, 20),
	(38, 8),
	(7, 29),
	(18, 12),
	(50, 2),
	(10, 30),
	(11, 9),
	(46, 7),
	(37, 22),
	(38, 39),
	(56, 4),
	(45, 8),
	(32, 36),
	(18, 27),
	(8, 24),
	(55, 33),
	(45, 28),
	(21, 21),
	(39, 12),
	(7, 12),
	(40, 39),
	(23, 14),
	(26, 5),
	(35, 17),
	(21, 18),
	(31, 14),
	(28, 5),
	(14, 22),
	(38, 31),
	(46, 8),
	(27, 3),
	(48, 16),
	(28, 15),
	(5, 24),
	(47, 21),
	(47, 23),
	(44, 15),
	(41, 19),
	(54, 1),
	(56, 38),
	(26, 27),
	(18, 24),
	(8, 39),
	(18, 32),
	(46, 3),
	(39, 32),
	(3, 26),
	(26, 30),
	(10, 2),
	(51, 9),
	(22, 29),
	(6, 18),
	(16, 25),
	(48, 24),
	(29, 17),
	(36, 39),
	(56, 8),
	(5, 21),
	(16, 11),
	(46, 20),
	(14, 9),
	(18, 38),
	(5, 3),
	(5, 4),
	(29, 3),
	(20, 8),
	(38, 25),
	(50, 7),
	(43, 37),
	(1, 5),
	(41, 3),
	(36, 19),
	(1, 27),
	(17, 25),
	(2, 15),
	(36, 6),
	(5, 39),
	(15, 16),
	(4, 4),
	(53, 16),
	(54, 13),
	(40, 2),
	(18, 2),
	(26, 26),
	(6, 29),
	(15, 19),
	(50, 29),
	(17, 33),
	(1, 30),
	(32, 21),
	(11, 8),
	(17, 40),
	(22, 26),
	(29, 15),
	(22, 17),
	(56, 33),
	(54, 40),
	(33, 14),
	(17, 9),
	(24, 6),
	(15, 11),
	(7, 10),
	(47, 11),
	(44, 29),
	(5, 7),
	(45, 32),
	(49, 13),
	(13, 31),
	(53, 12),
	(41, 38),
	(29, 8),
	(15, 5),
	(16, 29),
	(17, 39),
	(22, 13),
	(14, 14),
	(4, 37),
	(34, 11),
	(38, 16),
	(2, 22),
	(5, 21),
	(33, 22),
	(38, 30),
	(46, 5),
	(19, 37),
	(33, 14),
	(5, 18),
	(24, 27),
	(44, 10),
	(22, 16),
	(32, 30),
	(50, 5),
	(37, 21),
	(23, 1),
	(2, 18),
	(2, 29),
	(2, 7),
	(16, 26),
	(41, 14),
	(40, 37),
	(21, 21),
	(54, 36),
	(10, 33),
	(41, 17),
	(41, 5),
    (7, 14),
	(26, 35),
	(1, 16),
	(23, 34),
	(42, 17),
	(16, 38),
	(13, 6),
	(26, 36),
	(39, 23),
	(46, 17),
	(1, 26),
	(14, 25),
	(43, 30),
	(45, 30),
	(41, 14),
	(49, 4),
	(14, 17),
	(14, 37),
	(28, 37),
	(53, 23),
	(41, 12),
	(2, 30),
	(46, 29),
	(17, 27),
	(25, 28),
	(40, 3),
	(25, 35),
	(36, 10),
	(3, 26),
	(46, 1),
	(26, 35),
	(10, 32),
	(28, 19),
	(17, 5),
	(37, 36),
	(18, 36),
	(46, 2),
	(45, 33),
	(9, 36),
	(32, 27),
	(5, 20),
	(23, 25),
	(53, 2),
	(38, 38),
	(42, 11),
	(13, 15),
	(32, 25),
	(20, 33),
	(18, 39),
	(36, 6),
	(32, 28),
	(6, 20),
	(40, 32),
	(48, 24),
	(55, 34),
	(18, 37),
	(4, 30),
	(35, 7),
	(43, 5),
	(1, 24),
	(50, 21),
	(37, 4),
	(27, 6),
	(15, 27),
	(51, 26),
	(28, 30),
	(27, 12),
	(50, 12),
	(14, 35),
	(51, 21),
	(40, 3),
	(47, 30),
	(6, 16),
	(25, 1),
	(46, 17),
	(20, 21),
	(52, 14),
	(52, 21),
	(51, 40),
	(4, 15),
	(9, 11),
	(14, 10),
	(1, 36),
	(43, 17),
	(7, 12),
	(38, 19),
	(48, 32),
	(28, 30),
	(15, 13),
	(17, 25),
	(51, 5),
	(8, 11),
	(53, 15),
	(33, 38),
	(28, 3),
	(19, 34),
	(14, 39),
	(35, 5),
	(15, 10),
	(47, 21),
	(8, 6),
	(11, 34),
	(52, 9),
	(21, 40),
	(23, 10),
	(11, 10),
	(54, 33),
	(47, 10),
	(23, 14),
	(53, 23),
	(34, 26),
	(36, 29),
	(39, 18),
	(51, 21),
	(18, 19),
	(22, 38),
	(49, 27),
	(45, 37),
	(4, 24),
	(26, 21),
	(52, 29),
	(44, 40),
	(13, 38),
	(21, 16),
	(31, 6),
	(56, 23),
	(25, 34),
	(24, 20),
	(17, 36),
	(30, 2),
	(17, 32),
	(41, 28),
	(17, 33),
	(13, 19),
	(56, 3),
	(53, 25),
	(37, 2),
	(39, 33),
	(22, 4),
	(51, 32),
	(56, 29),
	(3, 10),
	(7, 15),
	(44, 28),
	(18, 38),
	(23, 20),
	(25, 29),
	(54, 13),
	(51, 18),
	(41, 1),
	(27, 9),
	(31, 35),
	(35, 15),
	(29, 28),
	(55, 18),
	(9, 7),
	(34, 7),
	(18, 6),
	(35, 9),
	(10, 24),
	(10, 15),
	(41, 34),
	(40, 23),
	(23, 12),
	(42, 15),
	(15, 13),
	(54, 15),
	(21, 5),
	(39, 14),
	(50, 37),
	(40, 22),
	(24, 4),
	(37, 39),
	(21, 13),
	(45, 27),
	(15, 22),
	(46, 6),
	(55, 18),
	(20, 36),
	(6, 12),
	(52, 36),
	(2, 6),
	(24, 15),
	(46, 37),
	(18, 40),
	(39, 3),
	(13, 30),
	(13, 31),
	(54, 16),
	(56, 2),
	(6, 34),
	(43, 34),
	(56, 10),
	(42, 29),
	(54, 16),
	(38, 13),
	(23, 12),
	(5, 34),
	(3, 10),
	(28, 40),
	(31, 8),
	(29, 25),
	(3, 26),
	(26, 31),
	(7, 6),
	(33, 11),
	(10, 8),
	(8, 30),
	(5, 29),
	(48, 28),
	(20, 18),
	(22, 12),
	(54, 36),
	(33, 21),
	(41, 32),
	(2, 14),
	(20, 32),
	(2, 21),
	(46, 25),
	(25, 11),
	(9, 23),
	(17, 2),
	(39, 11),
	(56, 2),
	(23, 6),
	(50, 33),
	(11, 3),
	(21, 40),
	(48, 26),
	(34, 40),
	(24, 28),
	(22, 7),
	(18, 19),
	(15, 14),
	(15, 39),
	(13, 24),
	(33, 26),
	(56, 16),
	(46, 14),
	(12, 10),
	(36, 36),
	(3, 9),
	(20, 19),
	(1, 10),
	(3, 2),
	(20, 17),
	(11, 14),
	(30, 21),
	(33, 20),
	(32, 10),
	(38, 10),
	(10, 28),
	(51, 6),
	(30, 15),
	(44, 26),
	(8, 10),
	(28, 17),
	(44, 10),
	(30, 39),
	(30, 2),
	(43, 16),
	(45, 5),
	(21, 36),
	(39, 2),
	(10, 30),
	(45, 12),
	(17, 26),
	(22, 4),
	(13, 11),
	(11, 39),
	(37, 35),
	(31, 32),
	(45, 38),
	(56, 13),
	(2, 18),
	(26, 32),
	(23, 39),
	(21, 5),
	(7, 23),
	(43, 34),
	(30, 10),
	(26, 30),
	(8, 34),
	(27, 34),
	(36, 20),
	(45, 36),
	(12, 14),
	(25, 14),
	(29, 30),
	(30, 31),
	(26, 20),
	(27, 38),
	(42, 39),
	(50, 20),
	(56, 33),
	(44, 22),
	(1, 27),
	(43, 40),
	(16, 16),
	(49, 29);
INSERT INTO checkin_at (user_id, point_of_interest_id) VALUES (10, 40);

INSERT INTO photo_album SET photo_album_name='Singapore2014', owner_id=1;
INSERT INTO photo SET reference='/disk/photos/singapore2014/2345jb6jv234jb5.jpg', photo_album_id=1, text_caption=NULL, assoc_poi_id=1;

INSERT INTO friendship SET user_id_1=1, user_id_2=2, approved=true;
INSERT INTO friendship SET user_id_1=2, user_id_2=3, approved=true;
INSERT INTO friendship SET user_id_1=4, user_id_2=5, approved=true;
INSERT INTO friendship SET user_id_1=4, user_id_2=6, approved=true;
INSERT INTO friendship SET user_id_1=6, user_id_2=1, approved=true;
INSERT INTO friendship SET user_id_1=2, user_id_2=4, approved=true;
INSERT INTO friendship (user_id_1, user_id_2, approved) VALUES
	('53', '17', true),
	('32', '11', true),
	('27', '44', true),
	('56', '32', true),
	('5', '50', true),
	('5', '17', true),
	('4', '56', true),
	('12', '53', true),
	('21', '41', true),
	('41', '2', true),
	('34', '52', true),
	('21', '37', true),
	('44', '47', true),
	('56', '28', true),
	('21', '15', true),
	('47', '14', true),
	('47', '35', true),
	('16', '3', true),
	('50', '37', true),
	('33', '46', true),
	('37', '44', true),
	('11', '14', true),
	('34', '9', true),
	('20', '22', true),
	('29', '4', true),
	('31', '24', true),
	('8', '47', true),
	('39', '17', true),
	('4', '14', true),
	('43', '31', true),
	('48', '8', true),
	('44', '17', true),
	('24', '28', true),
	('40', '37', true),
	('38', '11', true),
	('35', '13', true),
	('4', '27', true),
	('23', '28', true),
	('3', '36', true),
	('4', '29', true),
	('14', '49', true),
	('30', '45', true),
	('29', '16', true),
	('27', '38', true),
	('38', '35', true),
	('48', '5', true),
	('22', '53', true),
	('52', '34', true),
	('55', '52', true),
	('12', '28', true),
	('26', '55', true),
	('52', '3', true),
	('55', '43', true),
	('2', '40', true),
	('33', '24', true),
	('36', '44', true),
	('11', '21', true),
	('46', '28', true),
	('31', '8', true),
	('56', '8', true),
	('9', '30', true),
	('17', '43', true),
	('9', '54', true),
	('56', '11', true),
	('42', '51', true),
	('24', '32', true),
	('27', '34', true),
	('35', '34', true),
	('1', '21', true),
	('49', '46', true),
	('48', '35', true),
	('10', '54', true),
	('55', '23', true),
	('18', '35', true),
	('45', '2', true),
	('26', '44', true),
	('47', '4', true),
	('24', '5', true),
	('52', '48', true),
	('42', '44', true),
	('16', '6', true),
	('29', '30', true),
	('23', '40', true),
	('8', '36', true),
	('2', '22', true),
	('37', '1', true),
	('9', '24', true),
	('3', '9', true),
	('5', '56', true),
	('39', '54', true),
	('1', '29', true),
	('51', '9', true),
	('3', '30', true),
	('26', '32', true),
	('54', '34', true),
	('52', '18', true),
	('15', '46', true),
	('41', '40', true),
	('1', '49', true),
	('54', '47', true),
	('7', '41', true),
	('40', '53', true),
	('29', '13', true),
	('21', '38', true),
	('19', '10', true),
	('52', '30', true),
	('45', '43', true),
	('4', '38', true),
	('18', '23', true),
	('24', '38', true),
	('16', '55', true),
	('44', '16', true),
	('33', '16', true),
	('19', '54', true),
	('26', '38', true),
	('5', '38', true),
	('4', '18', true),
	('34', '38', true),
	('8', '20', true),
	('15', '47', true),
	('34', '47', true),
	('38', '52', true),
	('21', '2', true),
	('10', '28', true),
	('53', '5', true),
	('15', '3', true),
	('41', '5', true),
	('17', '29', true),
	('28', '17', true),
	('3', '26', true),
	('35', '22', true),
	('21', '32', true),
	('27', '19', true),
	('12', '44', true),
	('33', '52', true),
	('48', '45', true),
	('56', '36', true),
	('1', '45', true),
	('17', '24', true),
	('6', '15', true),
	('18', '8', true),
	('35', '23', true),
	('6', '5', true),
	('44', '52', true);


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

