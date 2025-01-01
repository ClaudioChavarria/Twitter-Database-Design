-- Create the 'tweet_hashtags' table (intermediate table to associate hashtags with tweets)
CREATE TABLE social.tweet_hashtags (
    tweet_id INT NOT NULL, 
    hashtag_id INT NOT NULL,
    PRIMARY KEY (tweet_id, hashtag_id),
    FOREIGN KEY (tweet_id) REFERENCES social.tweets(tweet_id) ON DELETE CASCADE,
    FOREIGN KEY (hashtag_id) REFERENCES social.hashtags(hashtag_id) ON DELETE CASCADE
);
