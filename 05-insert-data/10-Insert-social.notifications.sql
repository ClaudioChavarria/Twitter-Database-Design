INSERT INTO social.notifications (user_id, notification_type, reference_id)
SELECT DISTINCT
    t.user_id AS user_id, -- El autor del tweet
    'like' AS notification_type,
    l.tweet_id AS reference_id
FROM social.tweets t
JOIN social.tweet_likes l ON t.tweet_id = l.tweet_id;

-- Notificaciones basadas en comentarios
INSERT INTO social.notifications (user_id, notification_type, reference_id)
SELECT DISTINCT
    t.user_id AS user_id, -- El autor del tweet
    'comment' AS notification_type,
    c.tweet_id AS reference_id
FROM social.tweets t
JOIN social.comments c ON t.tweet_id = c.tweet_id;

