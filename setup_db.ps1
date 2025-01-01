# Change the Project Path and define as an environment variable
$BASE_PATH = "C:\Users\claud\Desktop\Twitter-database-design"

# Change the PostgreSQL password and define as an environment variable
$env:PGPASSWORD = "123"

# Change the version and PostgreSQL path and define as an environment variable
$PSQL_PATH = "C:\Program Files\PostgreSQL\VERSION\bin\psql.exe"





$DB_NAME = "db_twitter"
$DB_USER = "postgres"
$CREATE_PATH = "$BASE_PATH\01-database-creation"
$SCHEMA_PATH = "$BASE_PATH\02-schema-creation"
$TABLE_PATH = "$BASE_PATH\03-tables-creation"
$INSERT_PATH = "$BASE_PATH\05-insert-data"

# Run the script to create the database
& $PSQL_PATH -U $DB_USER -f "$CREATE_PATH\create_database_db_twitter.sql"

# Connect to the db_twitter database
& $PSQL_PATH -U $DB_USER -d $DB_NAME -c "\c $DB_NAME"

# Run the schema creation scripts
& $PSQL_PATH -U $DB_USER -d $DB_NAME -f "$SCHEMA_PATH\create_auth_schema.sql"
& $PSQL_PATH -U $DB_USER -d $DB_NAME -f "$SCHEMA_PATH\create_social_schema.sql"

# Run the table creation scripts
$tables = @(
    "create_users_table.sql",
    "create_followers_table.sql",
    "create_tweets_table.sql",
    "create_tweet_likes_table.sql",
    "create_blocked_users_table.sql",
    "create_hashtags_table.sql",
    "create_comments_table.sql",
    "create_tweet_hashtags_table.sql",
    "create_user_suggestions_table.sql",
    "create_notifications_table.sql"
)

# Iterate through and execute each table creation script
foreach ($table in $tables) {
    & $PSQL_PATH -U $DB_USER -d $DB_NAME -f "$TABLE_PATH\$table"
}

# Run the data insertion scripts
$inserts = @(
    "01-Insert-auth.users.sql",
    "02-Insert-social.followers.sql",
    "03-Insert-social.tweets.sql",
    "04-Insert-social.tweet_likes.sql",
    "05-Insert-social.blocked_users.sql",
    "06-Insert-social.hashtags.sql",
    "07-Insert-social.comments.sql",
    "08-Insert-social.tweet_hashtags.sql",
    "09-Insert-social.user_suggestions.sql",
    "10-Insert-social.notifications.sql"
)

# Iterate through and execute each data insertion script
foreach ($insert in $inserts) {
    & $PSQL_PATH -U $DB_USER -d $DB_NAME -f "$INSERT_PATH\$insert"
}

# Confirmation message
Write-Host "All scripts have been executed successfully."

# Pause to check the result
Pause



