https://puppet.com/docs/puppet/6.17/ssl_regenerate_certificates.html



\c pe-puppetdb
TRUNCATE reports CASCADE;

CREATE USER "pe-inventory" PASSWORD '123';
GRANT "pe-inventory" TO postgres;
CREATE DATABASE "pe-inventory" OWNER "pe-inventory"
ENCODING 'utf8' LC_CTYPE 'en_US.utf8' LC_COLLATE 'en_US.utf8' template template0;

CREATE USER "pe-puppetdb" PASSWORD '123';
GRANT "pe-puppetdb" TO postgres;
CREATE DATABASE "pe-puppetdb" OWNER "pe-puppetdb"
ENCODING 'utf8' LC_CTYPE 'en_US.utf8' LC_COLLATE 'en_US.utf8' template template0;

CREATE USER "pe-orchestrator" PASSWORD '123';
GRANT "pe-orchestrator" TO postgres;
CREATE DATABASE "pe-orchestrator" OWNER "pe-orchestrator"
ENCODING 'utf8' LC_CTYPE 'en_US.utf8' LC_COLLATE 'en_US.utf8' template template0;

CREATE USER "pe-activity" PASSWORD '123';
GRANT "pe-activity" TO postgres;
CREATE DATABASE "pe-activity" OWNER "pe-activity"
ENCODING 'utf8' LC_CTYPE 'en_US.utf8' LC_COLLATE 'en_US.utf8' template template0;

CREATE USER "pe-classifier" PASSWORD '123';
GRANT "pe-classifier" TO postgres;
CREATE DATABASE "pe-classifier" OWNER "pe-classifier"
ENCODING 'utf8' LC_CTYPE 'en_US.utf8' LC_COLLATE 'en_US.utf8' template template0;

CREATE USER "pe-rbac" PASSWORD '123';
GRANT "pe-rbac" TO postgres;
CREATE DATABASE "pe-rbac" OWNER "pe-rbac"
ENCODING 'utf8' LC_CTYPE 'en_US.utf8' LC_COLLATE 'en_US.utf8' template template0;

\c "pe-rbac"
CREATE EXTENSION citext;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION plpgsql;
CREATE EXTENSION pgcrypto;

\c "pe-orchestrator"
CREATE EXTENSION citext;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION plpgsql;

\c "pe-puppetdb"
CREATE EXTENSION citext;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION plpgsql;
CREATE EXTENSION pgcrypto;

\c "pe-classifier"
CREATE EXTENSION citext;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION plpgsql;

\c "pe-activity"
CREATE EXTENSION citext;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION plpgsql;

\c "pe-inventory"
CREATE EXTENSION citext;
CREATE EXTENSION pg_trgm;
CREATE EXTENSION plpgsql;
CREATE EXTENSION pgcrypto;

CREATE ROLE "pe-activity";
ALTER ROLE "pe-activity" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-activity-read";
ALTER ROLE "pe-activity-read" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-activity-write";
ALTER ROLE "pe-activity-write" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-classifier";
ALTER ROLE "pe-classifier" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-classifier-read";
ALTER ROLE "pe-classifier-read" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-classifier-write";
ALTER ROLE "pe-classifier-write" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-ha-replication";
ALTER ROLE "pe-ha-replication" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-inventory";
ALTER ROLE "pe-inventory" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-inventory-read";
ALTER ROLE "pe-inventory-read" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-inventory-write";
ALTER ROLE "pe-inventory-write" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-orchestrator";
ALTER ROLE "pe-orchestrator" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-orchestrator-read";
ALTER ROLE "pe-orchestrator-read" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-orchestrator-write";
ALTER ROLE "pe-orchestrator-write" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-puppetdb";
ALTER ROLE "pe-puppetdb" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-puppetdb-migrator";
ALTER ROLE "pe-puppetdb-migrator" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-rbac";
ALTER ROLE "pe-rbac" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-rbac-read";
ALTER ROLE "pe-rbac-read" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-rbac-write";
ALTER ROLE "pe-rbac-write" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
ALTER DATABASE "pe-inventory" OWNER TO "postgres";

GRANT "pe-puppetdb" TO "pe-puppetdb-migrator" GRANTED BY "postgres";
GRANT "pe-puppetdb" TO "pe-inventory" GRANTED BY "postgres";
GRANT "pe-puppetdb" TO "pe-activity" GRANTED BY "postgres";
GRANT "pe-puppetdb" TO "pe-activity" GRANTED BY "postgres";
GRANT "pe-puppetdb" TO "pe-orchestrator" GRANTED BY "postgres";
GRANT "pe-puppetdb" TO "pe-rbac" GRANTED BY "postgres";
GRANT "pe-puppetdb" TO "pe-ha-replication" GRANTED BY "postgres";


REVOKE CONNECT,TEMPORARY ON DATABASE "pe-inventory" FROM PUBLIC;
GRANT TEMPORARY ON DATABASE "pe-inventory" TO PUBLIC;
GRANT CONNECT ON DATABASE "pe-inventory" TO "pe-inventory-read";
GRANT CONNECT ON DATABASE "pe-inventory" TO "pe-inventory-write";

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-puppetdb" FROM PUBLIC;
GRANT TEMPORARY ON DATABASE "pe-puppetdb" TO PUBLIC;
GRANT CREATE,TEMPORARY ON DATABASE "pe-puppetdb" TO "pe-puppetdb";
GRANT CONNECT ON DATABASE "pe-puppetdb" TO "pe-puppetdb-migrator" WITH GRANT OPTION;
SET SESSION AUTHORIZATION "pe-puppetdb-migrator";
GRANT CONNECT ON DATABASE "pe-puppetdb" TO "pe-puppetdb";
RESET SESSION AUTHORIZATION;

ALTER DATABASE "pe-puppetdb" OWNER TO "postgres";

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
ALTER DATABASE postgres OWNER TO postgres;
\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;
COMMENT ON DATABASE postgres IS 'default administrative connection database';
