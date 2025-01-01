-- Create the 'tweets' table
CREATE TABLE social.tweets (
    tweet_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    tweet_text VARCHAR(280) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES auth.users(user_id)
);
