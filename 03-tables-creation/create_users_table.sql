-- Create the 'users' table
CREATE TABLE auth.users (
    user_id SERIAL PRIMARY KEY,
    user_handle VARCHAR(50) NOT NULL UNIQUE,
    email_address VARCHAR(50) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone_number CHAR(10) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    birth_date DATE NOT NULL,
    gender VARCHAR(10),
    location VARCHAR(255),
    bio TEXT,
    profile_picture_url TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    password_hash TEXT NOT NULL
);
