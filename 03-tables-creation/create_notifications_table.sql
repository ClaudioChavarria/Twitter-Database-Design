-- Create the 'notifications' table
CREATE TABLE social.notifications (
    notification_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    notification_type VARCHAR(50) NOT NULL,
    reference_id INT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    seen BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES auth.users(user_id)
);
