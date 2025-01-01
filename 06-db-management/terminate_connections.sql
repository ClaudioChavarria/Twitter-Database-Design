-- Disconnect all active connections to the db_twitter database
DO $$ 
BEGIN
    PERFORM pg_terminate_backend(pid)        -- Terminates the connection with the selected PID.
    FROM pg_stat_activity                   -- List of active connections.
    WHERE datname = 'db_twitter'            -- Filters connections from the 'db_twitter' database.
      AND pid <> pg_backend_pid();          -- Excludes the current process.
END $$;
