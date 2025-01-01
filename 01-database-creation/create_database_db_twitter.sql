-- Drop the database if it exists
DROP DATABASE IF EXISTS "db_twitter";

-- Create the db_twitter database using template0 and UTF8 encoding
CREATE DATABASE "db_twitter"
    WITH
        OWNER = postgres
        ENCODING = 'UTF8'
        LC_COLLATE = 'en_US.UTF-8'  
        LC_CTYPE = 'en_US.UTF-8'    
        LOCALE_PROVIDER = 'libc'
        TABLESPACE = pg_default
        CONNECTION LIMIT = -1
        IS_TEMPLATE = False
        TEMPLATE = template0;
