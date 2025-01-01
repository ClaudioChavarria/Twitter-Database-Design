-- Create the 'followers' table
CREATE TABLE social.followers (
    follower_id INT NOT NULL, 
    following_id INT NOT NULL,
    FOREIGN KEY (follower_id) REFERENCES auth.users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (following_id) REFERENCES auth.users(user_id) ON DELETE CASCADE,
    PRIMARY KEY (follower_id, following_id),
    CONSTRAINT check_follower_not_equal_following CHECK (follower_id <> following_id)
);
