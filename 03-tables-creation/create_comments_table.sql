-- Create the 'comments' table
CREATE TABLE social.comments (
    comment_id SERIAL PRIMARY KEY,
    tweet_id INT NOT NULL, 
    user_id INT NOT NULL,
    comment_text VARCHAR(280) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (tweet_id) REFERENCES social.tweets(tweet_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES auth.users(user_id) ON DELETE CASCADE
);
