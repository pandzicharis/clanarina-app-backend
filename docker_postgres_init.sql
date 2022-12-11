CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE USER test WITH PASSWORD 'test' CREATEDB;
SELECT 'CREATE DATABASE clanarina_db OWNER "test" ENCODING "UTF8" LC_COLLATE "en_US.utf8" LC_CTYPE "en_US.utf8" TABLESPACE pg_default CONNECTION LIMIT-1'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'clanarina_db')\gexec
ALTER USER test SUPERUSER;
