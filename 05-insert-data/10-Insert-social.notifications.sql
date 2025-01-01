INSERT INTO social.notifications (user_id, notification_type, reference_id)
SELECT DISTINCT
    t.user_id AS user_id, 
    'like' AS notification_type,
    l.tweet_id AS reference_id
FROM social.tweets t
JOIN social.tweet_likes l ON t.tweet_id = l.tweet_id;

INSERT INTO social.notifications (user_id, notification_type, reference_id)
SELECT DISTINCT
    t.user_id AS user_id, 
    'comment' AS notification_type,
    c.tweet_id AS reference_id
FROM social.tweets t
JOIN social.comments c ON t.tweet_id = c.tweet_id
;

