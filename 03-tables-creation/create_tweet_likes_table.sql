-- Create the 'tweet_likes' table
CREATE TABLE social.tweet_likes (
    user_id INT NOT NULL,
    tweet_id INT NOT NULL,
    PRIMARY KEY (user_id, tweet_id),
    FOREIGN KEY (user_id) REFERENCES auth.users(user_id),
    FOREIGN KEY (tweet_id) REFERENCES social.tweets(tweet_id)
);
