# 1) Find all users who have not written any message/comment.
SELECT user_id, first_name, last_name
FROM user
WHERE user_id NOT IN (
	SELECT user.user_id
    FROM user, message, comment
    WHERE user.user_id = comment.user_id OR user.user_id = message.sender_id);

# 2) Find each user whose wall contains more comments than message posts.
SELECT user_id, first_name, last_name
FROM user as U
WHERE (
	SELECT COUNT(*)
    FROM message
    WHERE message.receiver_id = U.user_id) < (
		SELECT COUNT(*)
		FROM message, comment
		WHERE message.message_id = comment.message_id AND message.receiver_id = U.user_id);

# 3) Show news feed for a user: List the latest 5 messages, each of which is either a
# status update from this user, a wall message sent from this user to a friend in the
# “News Feed” list, or a wall message sent from a friend in the “News Feed” list to this user.
SELECT DISTINCT message.*
FROM message, user, friendship, friendship_listed_in, friend_list
WHERE 	user.user_id = 2 AND
        ( 	(message.sender_id = friendship.user_id_1 AND message.receiver_id = friendship.user_id_2) OR
			(message.sender_id = friendship.user_id_2 AND message.receiver_id = friendship.user_id_1) OR
			(message.sender_id = message.receiver_id AND message.sender_id = user.user_id) ) AND
        (friendship_listed_in.user_id_1 = friendship.user_id_1 AND
         friendship_listed_in.user_id_2 = friendship.user_id_2 AND
         friendship_listed_in.friend_list_id = friend_list.friend_list_id) AND
        (friend_list.owner_id = user.user_id AND friend_list.friend_list_name = 'News Feed')
ORDER BY timestamp DESC
LIMIT 5;

# 4) Suggest friends to a given user: select top 5 users of the site who has the largest
# number of mutual friends with this user and yet to be a friend.
SELECT y.user_id_2
   FROM friendship x
   JOIN friendship y
     ON y.user_id_1 = x.user_id_2
    AND y.user_id_2 <> x.user_id_1
   LEFT
   JOIN friendship z
     ON z.user_id_2 = y.user_id_2 
    AND z.user_id_1 = x.user_id_1
  WHERE x.user_id_1 = 1
    AND z.user_id_1 IS NULL;

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
     AND b.user_id_1 = 6
    )
LEFT JOIN
    friendship c
ON
    (
     c.user_id_2 = a.user_id_2 
     AND c.approved = true
     AND c.user_id_1 = 6
    )     
WHERE 
    a.approved = true
AND
    c.user_id_1 IS NULL
AND 
    a.user_id_2 != 6
GROUP BY 
    a.user_id_2
ORDER BY 
    relevance DESC;
