# Some of the queries has also queries to test the statements.

#-------------------------------------------------------------------------------------
# 1) Find all users who have not written any message/comment.
SELECT user_id, first_name, last_name
FROM user
WHERE user_id NOT IN (
	SELECT user.user_id
    FROM user, message, comment
    WHERE user.user_id = comment.user_id OR user.user_id = message.sender_id);


#-------------------------------------------------------------------------------------
# 2) Find each user whose wall contains more comments than message posts.
SELECT user_id, first_name, last_name
FROM user u
WHERE (
	SELECT COUNT(*)
    FROM message m
    WHERE m.receiver_id = u.user_id) < (
		SELECT COUNT(*)
		FROM message m, comment c
		WHERE m.message_id = c.message_id AND m.receiver_id = u.user_id);


#-------------------------------------------------------------------------------------
# 3) Show news feed for a user: List the latest 5 messages, each of which is either a
# status update from this user, a wall message sent from this user to a friend in the
# “News Feed” list, or a wall message sent from a friend in the “News Feed” list to this user.
SELECT DISTINCT m.*
FROM message m, user u, friendship f, friendship_listed_in fli, friend_list fl
WHERE 	u.user_id = 2
		AND (
			(m.sender_id = f.user_id_1 AND m.receiver_id = f.user_id_2) OR
			(m.sender_id = f.user_id_2 AND m.receiver_id = f.user_id_1) OR
			(m.sender_id = m.receiver_id AND m.sender_id = u.user_id) )
		AND (
			fli.user_id_1 = f.user_id_1 AND
			fli.user_id_2 = f.user_id_2 AND
			fli.friend_list_id = fl.friend_list_id)
		AND (
			fl.owner_id = u.user_id AND
            fl.friend_list_name = 'News Feed')
ORDER BY timestamp DESC
LIMIT 5;

# Find user = 2 friends
SELECT f1.user_id_2 as friends
FROM friendship f1
WHERE f1.user_id_1 = 2
UNION ALL
SELECT f2.user_id_1 as friends
FROM friendship f2
WHERE f2.user_id_2 = 2
ORDER BY friends;

SELECT f.*
FROM friendship f, user u
WHERE u.user_id = 2 AND (f.user_id_1 = u.user_id OR f.user_id_2 = u.user_id);

# Find messages from or to user = 2
SELECT m.*
FROM user u, message m
WHERE u.user_id = 2
	AND (m.sender_id = u.user_id OR m.receiver_id = u.user_id);

# Find News Feed lists
SELECT * FROM friendship_listed_in
WHERE friend_list_id % 2 = 0;


#-------------------------------------------------------------------------------------
# 4) Suggest friends to a given user: select top 5 users of the site who has the largest
# number of mutual friends with this user and yet to be a friend.
SELECT subq.*, COUNT(*) as relevance
FROM (
	SELECT fr1.user_id_2 as suggestion
	FROM friendship fr1
	WHERE fr1.user_id_1 IN (
		SELECT f1.user_id_2 as friends
		FROM friendship f1
		WHERE f1.user_id_1 = 2
		UNION ALL
		SELECT f2.user_id_1 as friends
		FROM friendship f2
		WHERE f2.user_id_2 = 2)
	UNION ALL
	SELECT fr2.user_id_1 as suggestion
	FROM friendship fr2
	WHERE fr2.user_id_2 IN (
		SELECT f1.user_id_2 as friends
		FROM friendship f1
		WHERE f1.user_id_1 = 2
		UNION ALL
		SELECT f2.user_id_1 as friends
		FROM friendship f2
		WHERE f2.user_id_2 = 2)) as subq
WHERE subq.suggestion != 2
GROUP BY suggestion
ORDER BY relevance DESC;

# Another approach, not really working
SELECT
	subq.suggestion,
	COUNT(*) as relevance,
	GROUP_CONCAT(subq.mutual_friend ORDER BY subq.mutual_friend) as list_mutual_friends
FROM (
	SELECT a.user_id_2 as suggestion, a.user_id_1 as mutual_friend
	FROM friendship a
	JOIN friendship b
	ON (
		 b.user_id_2 = a.user_id_1
		 AND b.approved = true
		 AND b.user_id_1 = 2
		)
	LEFT JOIN friendship c
	ON (
		 c.user_id_2 = a.user_id_2 AND
		 c.approved = true AND
		 c.user_id_1 = 2
		)
	WHERE
		a.approved = true AND
		c.user_id_1 IS NULL AND 
		a.user_id_2 != 2
UNION ALL
	SELECT a.user_id_1 as suggestion, a.user_id_2 as mutual_friend
	FROM friendship a
	JOIN friendship b
	ON (
		 b.user_id_1 = a.user_id_2
		 AND b.approved = true
		 AND b.user_id_2 = 2
		)
	LEFT JOIN friendship c
	ON  (
		 c.user_id_1 = a.user_id_1 AND
		 c.approved = true AND
		 c.user_id_2 = 2
		)     
	WHERE 
		a.approved = true AND
		c.user_id_2 IS NULL AND 
		a.user_id_1 != 2) as subq
GROUP BY
    suggestion
ORDER BY 
    relevance DESC;

# Good formula, used twice in the query before.
SELECT
    a.user_id_2,
    COUNT(*) as relevance,
    GROUP_CONCAT(a.user_id_1 ORDER BY a.user_id_1) as list_mutual_friends
FROM 
    friendship a
JOIN 
    friendship b
ON  (
     b.user_id_2 = a.user_id_1
     AND b.approved = true
     AND b.user_id_1 = 10
    )
LEFT JOIN
    friendship c
ON
    (
     c.user_id_2 = a.user_id_2 AND
     c.approved = true AND
     c.user_id_1 = 10
    )     
WHERE 
    a.approved = true AND
    c.user_id_1 IS NULL AND 
    a.user_id_2 != 10
GROUP BY 
    a.user_id_2
ORDER BY 
    relevance DESC;

# Find friend of user_id = 10
SELECT f1.user_id_2 as friends
FROM friendship f1
WHERE f1.user_id_1 = 2
UNION ALL
SELECT f2.user_id_1 as friends
FROM friendship f2
WHERE f2.user_id_2 = 2
ORDER BY friends;

# Find friends of user_id = 10 in two columns.
SELECT f.*
FROM friendship f
WHERE f.user_id_1 = 2 OR f.user_id_2 = 2;

SELECT f.*
FROM friendship f
WHERE f.user_id_1 = 23 OR f.user_id_2 = 23;


#-------------------------------------------------------------------------------------
# 5) Suggest points of interest to a user: select top 5 points of interest
# that are mostly visited by the user’s friends, and have not yet been
# visited by the user.
SELECT COUNT(*) visited_times, poi.*, f.user_id_1, GROUP_CONCAT(f.user_id_2 ORDER BY f.user_id_2) visited_by
FROM point_of_interest poi, checkin_at c, user u, friendship f
WHERE 	(u.user_id = 10 AND
		f.user_id_1 = u.user_id AND
        f.user_id_2 = c.user_id AND
        poi.point_of_interest_id = c.point_of_interest_id) AND poi.point_of_interest_id NOT IN (
			SELECT poi.point_of_interest_id
			FROM point_of_interest poi, checkin_at c
			WHERE c.user_id = 10 AND poi.point_of_interest_id = c.point_of_interest_id)
GROUP BY point_of_interest_id
ORDER BY visited_times DESC
LIMIT 5;

# Find top 5 poi that has been visited by user_id = 10 friends.
SELECT COUNT(*) visited_times, poi.*, f.user_id_1, f.user_id_2
FROM point_of_interest poi, checkin_at c, user u, friendship f
WHERE 	(u.user_id = 10 AND
		f.user_id_1 = u.user_id AND
        f.user_id_2 = c.user_id AND
        poi.point_of_interest_id = c.point_of_interest_id)
GROUP BY point_of_interest_id
ORDER BY visited_times DESC
LIMIT 5;

# Find all poi user_id = 10 has visited.
SELECT DISTINCT poi.*
FROM point_of_interest poi, checkin_at c
WHERE c.user_id = 10 AND poi.point_of_interest_id = c.point_of_interest_id;


#-------------------------------------------------------------------------------------
# 6) Find nearby Points of Interest of a given point of interest: Given a point of interest,
# find the nearest points of interest such that its description contains word “delicious”
# and its name contains word “pizza”.
SELECT dest_poi.*
FROM point_of_interest curr_poi, point_of_interest dest_poi
WHERE curr_poi.point_of_interest_id = 3
	AND ABS(curr_poi.latitude - dest_poi.latitude) < 0.2
    AND ABS(curr_poi.longitude - dest_poi.longitude) < 0.2
    AND curr_poi.point_of_interest_id != dest_poi.point_of_interest_id
    AND dest_poi.name LIKE '%pizza%'
	AND dest_poi.description LIKE '%delicious%';

# FOR TESTING: Find all POI that are close to point_of_interest_id = 3.
SELECT dest_poi.*
FROM point_of_interest curr_poi, point_of_interest dest_poi
WHERE curr_poi.point_of_interest_id = 3
	AND ABS(curr_poi.latitude - dest_poi.latitude) < 1
    AND ABS(curr_poi.longitude - dest_poi.longitude) < 1
    AND curr_poi.point_of_interest_id != dest_poi.point_of_interest_id;


#-------------------------------------------------------------------------------------
# 7) Find the most popular POI with the most number of check-ins. And find the POI that has
# been checked in by the most number of distinct users.
SELECT DISTINCT COUNT(*) visited_times, poi.*, u.user_id, GROUP_CONCAT(u.user_id ORDER BY u.user_id) visited_by
FROM point_of_interest poi, checkin_at c, user u
WHERE poi.point_of_interest_id = c.point_of_interest_id
AND u.user_id = c.user_id
GROUP BY poi.point_of_interest_id
ORDER BY visited_times DESC
LIMIT 1;

# Second part (DISTINCT)
SELECT COUNT(*) visited_times, subquery.*, GROUP_CONCAT(subquery.user_id ORDER BY subquery.user_id) visited_by
FROM (
	SELECT DISTINCT poi.*, u.user_id
	FROM point_of_interest poi, checkin_at c, user u
	WHERE poi.point_of_interest_id = c.point_of_interest_id
	AND u.user_id = c.user_id) as subquery
GROUP BY subquery.point_of_interest_id
ORDER BY visited_times DESC
LIMIT 1;

# For testing: Check how many distinct users have checked in at point_of_interest_id = 22.
SELECT DISTINCT poi.*, u.user_id
FROM point_of_interest poi, checkin_at c, user u
WHERE poi.point_of_interest_id = c.point_of_interest_id
	AND u.user_id = c.user_id
    AND poi.point_of_interest_id = 22;
