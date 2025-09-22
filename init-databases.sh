#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE user_db;
    CREATE DATABASE image_db;
    GRANT ALL PRIVILEGES ON DATABASE user_db TO postgres;
    GRANT ALL PRIVILEGES ON DATABASE image_db TO postgres;
EOSQL