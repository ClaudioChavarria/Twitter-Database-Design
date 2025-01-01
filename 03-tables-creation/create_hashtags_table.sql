-- Create the 'hashtags' table
CREATE TABLE social.hashtags (
    hashtag_id SERIAL PRIMARY KEY,
    hashtag_name VARCHAR(100) NOT NULL UNIQUE, 
    description TEXT
);
