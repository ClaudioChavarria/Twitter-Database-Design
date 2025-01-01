-- Create the 'blocked_users' table
CREATE TABLE social.blocked_users
(
    blocker_id INT NOT NULL, 
    blocked_id INT NOT NULL,
    blocked_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (blocker_id, blocked_id),
    FOREIGN KEY (blocker_id) REFERENCES auth.users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (blocked_id) REFERENCES auth.users(user_id) ON DELETE CASCADE,
    CONSTRAINT check_not_block_self CHECK (blocker_id <> blocked_id)
);