-- Create the 'user_suggestions' table
CREATE TABLE social.user_suggestions (
    suggestion_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    suggested_user_id INT NOT NULL,
    similarity_reason VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES auth.users(user_id),
    FOREIGN KEY (suggested_user_id) REFERENCES auth.users(user_id)
);
