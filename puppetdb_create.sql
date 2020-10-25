--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE "pe-activity";
DROP DATABASE "pe-classifier";
DROP DATABASE "pe-inventory";
DROP DATABASE "pe-orchestrator";
DROP DATABASE "pe-postgres";
DROP DATABASE "pe-puppetdb";
DROP DATABASE "pe-rbac";




--
-- Drop roles
--

DROP ROLE "pe-activity";
DROP ROLE "pe-activity-read";
DROP ROLE "pe-activity-write";
DROP ROLE "pe-classifier";
DROP ROLE "pe-classifier-read";
DROP ROLE "pe-classifier-write";
DROP ROLE "pe-ha-replication";
DROP ROLE "pe-inventory";
DROP ROLE "pe-inventory-read";
DROP ROLE "pe-inventory-write";
DROP ROLE "pe-orchestrator";
DROP ROLE "pe-orchestrator-read";
DROP ROLE "pe-orchestrator-write";
DROP ROLE "pe-postgres";
DROP ROLE "pe-puppetdb";
DROP ROLE "pe-puppetdb-migrator";
DROP ROLE "pe-rbac";
DROP ROLE "pe-rbac-read";
DROP ROLE "pe-rbac-write";
DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE "pe-activity";
ALTER ROLE "pe-activity" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md553059157ec1b80534eeb29b99b958018';
CREATE ROLE "pe-activity-read";
ALTER ROLE "pe-activity-read" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-activity-write";
ALTER ROLE "pe-activity-write" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-classifier";
ALTER ROLE "pe-classifier" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md520cbd14efb2107d25cc8338d9cf4d0df';
CREATE ROLE "pe-classifier-read";
ALTER ROLE "pe-classifier-read" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-classifier-write";
ALTER ROLE "pe-classifier-write" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-ha-replication";
ALTER ROLE "pe-ha-replication" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-inventory";
ALTER ROLE "pe-inventory" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md58ec7f0ccb0c73e4a2412e513b192cbf7';
CREATE ROLE "pe-inventory-read";
ALTER ROLE "pe-inventory-read" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-inventory-write";
ALTER ROLE "pe-inventory-write" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-orchestrator";
ALTER ROLE "pe-orchestrator" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5fa60cd91cbc2f57f666db1dba54ed657';
CREATE ROLE "pe-orchestrator-read";
ALTER ROLE "pe-orchestrator-read" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-orchestrator-write";
ALTER ROLE "pe-orchestrator-write" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-postgres";
ALTER ROLE "pe-postgres" WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
CREATE ROLE "pe-puppetdb";
ALTER ROLE "pe-puppetdb" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5d26517c2acd811a1635acbfdfdf92863';
CREATE ROLE "pe-puppetdb-migrator";
ALTER ROLE "pe-puppetdb-migrator" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-rbac";
ALTER ROLE "pe-rbac" WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md56eadccedb2fff3b93db6f964356d1bf9';
CREATE ROLE "pe-rbac-read";
ALTER ROLE "pe-rbac-read" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE "pe-rbac-write";
ALTER ROLE "pe-rbac-write" WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;


--
-- Role memberships
--

GRANT "pe-activity" TO "pe-puppetdb" GRANTED BY postgres;
GRANT "pe-classifier" TO "pe-puppetdb" GRANTED BY postgres;
GRANT "pe-inventory" TO "pe-puppetdb" GRANTED BY postgres;
GRANT "pe-orchestrator" TO "pe-puppetdb" GRANTED BY postgres;
GRANT "pe-puppetdb" TO "pe-puppetdb-migrator" GRANTED BY postgres;
GRANT "pe-rbac" TO "pe-puppetdb" GRANTED BY postgres;




--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-activity; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-activity" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE "pe-activity" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-activity'"

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

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: backup_activity_events(timestamp with time zone, text); Type: FUNCTION; Schema: public; Owner: pe-activity
--

CREATE FUNCTION public.backup_activity_events(threshold timestamp with time zone, filename text) RETURNS void
    LANGUAGE plpgsql
    AS $_$
DECLARE
threshold_time timestamp with time zone;

BEGIN

-- threshold_time is used to make sure that the same records are stored and removed
EXECUTE '
SELECT max(submit_time)
FROM event_commits
WHERE submit_time < $1'
INTO threshold_time
USING threshold;

IF threshold_time is null THEN return;
END IF;

EXECUTE '
COPY
(SELECT ec.submit_time        AS "Submit Time",
ec.service_id         AS "Service Id",
sd.subject_type       AS "Subject Type",
sd.subject_id         AS "Subject Id",
sd.subject_name       AS "Subject Name",
od.object_type        AS "Object Type",
od.object_id          AS "Object Id",
od.object_name        AS "Object Name",
ev.action_type        AS "Type",
ev.action_what        AS "What",
ev.action_description AS "Description",
ev.message            AS "Message"
FROM event_commits AS ec
JOIN events AS ev ON ev.commit_id = ec.id
JOIN subject_digests AS sd ON sd.id = ec.subject_digest_id
JOIN object_digests AS od ON od.id = ec.object_digest_id
WHERE ec.submit_time <= ''' || threshold_time || '''
ORDER BY ec.submit_time, ev.action_type, ev.action_what)
TO ''' || filename || '''
WITH CSV HEADER';

-- DELETE command could be called directly (without EXECUTE), however, it's better to call it the same way as the COPY TO command above
EXECUTE '
DELETE FROM event_commits
WHERE submit_time <= ''' || threshold_time || '''';

END
$_$;


ALTER FUNCTION public.backup_activity_events(threshold timestamp with time zone, filename text) OWNER TO "pe-activity";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: event_commits; Type: TABLE; Schema: public; Owner: pe-activity
--

CREATE TABLE public.event_commits (
    id character(40) NOT NULL,
    service_id text NOT NULL,
    subject_digest_id text NOT NULL,
    object_digest_id text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    service_commit_time timestamp with time zone
);


ALTER TABLE public.event_commits OWNER TO "pe-activity";

--
-- Name: events; Type: TABLE; Schema: public; Owner: pe-activity
--

CREATE TABLE public.events (
    id character(40) NOT NULL,
    commit_id text NOT NULL,
    action_type text NOT NULL,
    action_what text NOT NULL,
    action_description text NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.events OWNER TO "pe-activity";

--
-- Name: object_digests; Type: TABLE; Schema: public; Owner: pe-activity
--

CREATE TABLE public.object_digests (
    id character(40) NOT NULL,
    object_type text NOT NULL,
    object_id text NOT NULL,
    object_name text NOT NULL
);


ALTER TABLE public.object_digests OWNER TO "pe-activity";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pe-activity
--

CREATE TABLE public.schema_migrations (
    id bigint NOT NULL,
    applied timestamp without time zone,
    description character varying(1024)
);


ALTER TABLE public.schema_migrations OWNER TO "pe-activity";

--
-- Name: subject_digests; Type: TABLE; Schema: public; Owner: pe-activity
--

CREATE TABLE public.subject_digests (
    id character(40) NOT NULL,
    subject_type text NOT NULL,
    subject_id text NOT NULL,
    subject_name text NOT NULL
);


ALTER TABLE public.subject_digests OWNER TO "pe-activity";

--
-- Data for Name: event_commits; Type: TABLE DATA; Schema: public; Owner: pe-activity
--

COPY public.event_commits (id, service_id, subject_digest_id, object_digest_id, submit_time, service_commit_time) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: pe-activity
--

COPY public.events (id, commit_id, action_type, action_what, action_description, message) FROM stdin;
\.


--
-- Data for Name: object_digests; Type: TABLE DATA; Schema: public; Owner: pe-activity
--

COPY public.object_digests (id, object_type, object_id, object_name) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pe-activity
--

COPY public.schema_migrations (id, applied, description) FROM stdin;
\.


--
-- Data for Name: subject_digests; Type: TABLE DATA; Schema: public; Owner: pe-activity
--

COPY public.subject_digests (id, subject_type, subject_id, subject_name) FROM stdin;
\.


--
-- Name: event_commits event_commits_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.event_commits
    ADD CONSTRAINT event_commits_pkey PRIMARY KEY (id);


--
-- Name: events events_commit_id_action_type_action_what_action_description_key; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_commit_id_action_type_action_what_action_description_key UNIQUE (commit_id, action_type, action_what, action_description);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: object_digests object_digests_object_type_object_id_object_name_key; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.object_digests
    ADD CONSTRAINT object_digests_object_type_object_id_object_name_key UNIQUE (object_type, object_id, object_name);


--
-- Name: object_digests object_digests_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.object_digests
    ADD CONSTRAINT object_digests_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_id_key; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_id_key UNIQUE (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (id);


--
-- Name: subject_digests subject_digests_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.subject_digests
    ADD CONSTRAINT subject_digests_pkey PRIMARY KEY (id);


--
-- Name: subject_digests subject_digests_subject_type_subject_id_subject_name_key; Type: CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.subject_digests
    ADD CONSTRAINT subject_digests_subject_type_subject_id_subject_name_key UNIQUE (subject_type, subject_id, subject_name);


--
-- Name: event_commits_service_id_object_digest_id_submit_time_idx; Type: INDEX; Schema: public; Owner: pe-activity
--

CREATE INDEX event_commits_service_id_object_digest_id_submit_time_idx ON public.event_commits USING btree (service_id, object_digest_id, submit_time);


--
-- Name: event_commits_service_id_subject_digest_id_submit_time_idx; Type: INDEX; Schema: public; Owner: pe-activity
--

CREATE INDEX event_commits_service_id_subject_digest_id_submit_time_idx ON public.event_commits USING btree (service_id, subject_digest_id, submit_time);


--
-- Name: event_commits_submit_time_idx; Type: INDEX; Schema: public; Owner: pe-activity
--

CREATE INDEX event_commits_submit_time_idx ON public.event_commits USING btree (submit_time);


--
-- Name: events_commit_id_action_type_action_what_idx; Type: INDEX; Schema: public; Owner: pe-activity
--

CREATE INDEX events_commit_id_action_type_action_what_idx ON public.events USING btree (commit_id, action_type, action_what);


--
-- Name: object_digests_object_type_object_id_idx; Type: INDEX; Schema: public; Owner: pe-activity
--

CREATE INDEX object_digests_object_type_object_id_idx ON public.object_digests USING btree (object_type, object_id);


--
-- Name: subject_digests_subject_type_subject_id_idx; Type: INDEX; Schema: public; Owner: pe-activity
--

CREATE INDEX subject_digests_subject_type_subject_id_idx ON public.subject_digests USING btree (subject_type, subject_id);


--
-- Name: event_commits event_commits_object_digest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.event_commits
    ADD CONSTRAINT event_commits_object_digest_id_fkey FOREIGN KEY (object_digest_id) REFERENCES public.object_digests(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: event_commits event_commits_subject_digest_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.event_commits
    ADD CONSTRAINT event_commits_subject_digest_id_fkey FOREIGN KEY (subject_digest_id) REFERENCES public.subject_digests(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: events events_commit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-activity
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_commit_id_fkey FOREIGN KEY (commit_id) REFERENCES public.event_commits(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DATABASE "pe-activity"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-activity" FROM PUBLIC;
GRANT TEMPORARY ON DATABASE "pe-activity" TO PUBLIC;
GRANT CONNECT ON DATABASE "pe-activity" TO "pe-activity-read";
GRANT CONNECT ON DATABASE "pe-activity" TO "pe-activity-write";


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: FUNCTION backup_activity_events(threshold timestamp with time zone, filename text); Type: ACL; Schema: public; Owner: pe-activity
--

GRANT ALL ON FUNCTION public.backup_activity_events(threshold timestamp with time zone, filename text) TO "pe-activity-write";


--
-- Name: TABLE event_commits; Type: ACL; Schema: public; Owner: pe-activity
--

GRANT SELECT ON TABLE public.event_commits TO "pe-activity-read";
GRANT ALL ON TABLE public.event_commits TO "pe-activity-write";


--
-- Name: TABLE events; Type: ACL; Schema: public; Owner: pe-activity
--

GRANT SELECT ON TABLE public.events TO "pe-activity-read";
GRANT ALL ON TABLE public.events TO "pe-activity-write";


--
-- Name: TABLE object_digests; Type: ACL; Schema: public; Owner: pe-activity
--

GRANT SELECT ON TABLE public.object_digests TO "pe-activity-read";
GRANT ALL ON TABLE public.object_digests TO "pe-activity-write";


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: public; Owner: pe-activity
--

GRANT SELECT ON TABLE public.schema_migrations TO "pe-activity-read";
GRANT ALL ON TABLE public.schema_migrations TO "pe-activity-write";


--
-- Name: TABLE subject_digests; Type: ACL; Schema: public; Owner: pe-activity
--

GRANT SELECT ON TABLE public.subject_digests TO "pe-activity-read";
GRANT ALL ON TABLE public.subject_digests TO "pe-activity-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-activity
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-activity";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-activity-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-activity-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-activity
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-activity";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-activity-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-activity-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-activity
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-activity";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-activity-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-activity" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-activity-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-activity-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-activity-write";


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-classifier; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-classifier" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE "pe-classifier" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-classifier'"

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

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: create_environment(text); Type: FUNCTION; Schema: public; Owner: pe-classifier
--

CREATE FUNCTION public.create_environment(environment text) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
INSERT INTO environments ( name ) VALUES ( environment );
RETURN;
EXCEPTION
WHEN unique_violation THEN
UPDATE environments SET deleted = false WHERE name = environment;
RETURN;
END;
$$;


ALTER FUNCTION public.create_environment(environment text) OWNER TO "pe-classifier";

--
-- Name: delete_environment(text); Type: FUNCTION; Schema: public; Owner: pe-classifier
--

CREATE FUNCTION public.delete_environment(environment text) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
DELETE FROM environments WHERE name = environment;
RETURN;
EXCEPTION
WHEN foreign_key_violation THEN
UPDATE environments SET deleted = true WHERE name = environment;
RETURN;
END;
$$;


ALTER FUNCTION public.delete_environment(environment text) OWNER TO "pe-classifier";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: environment_class_parameters; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.environment_class_parameters (
    parameter text NOT NULL,
    default_value text,
    environment_name text NOT NULL,
    class_name text NOT NULL,
    deleted boolean DEFAULT false NOT NULL
);


ALTER TABLE public.environment_class_parameters OWNER TO "pe-classifier";

--
-- Name: environment_classes; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.environment_classes (
    name text NOT NULL,
    environment_name text NOT NULL,
    deleted boolean DEFAULT false NOT NULL
);


ALTER TABLE public.environment_classes OWNER TO "pe-classifier";

--
-- Name: environments; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.environments (
    name text NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    sync_succeeded boolean DEFAULT true,
    etag text
);


ALTER TABLE public.environments OWNER TO "pe-classifier";

--
-- Name: group_class_parameters; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.group_class_parameters (
    parameter text NOT NULL,
    class_name text NOT NULL,
    environment_name text NOT NULL,
    group_id uuid NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.group_class_parameters OWNER TO "pe-classifier";

--
-- Name: group_classes; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.group_classes (
    group_id uuid NOT NULL,
    class_name text NOT NULL,
    environment_name text NOT NULL
);


ALTER TABLE public.group_classes OWNER TO "pe-classifier";

--
-- Name: group_hiera_data; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.group_hiera_data (
    group_id uuid NOT NULL,
    scope text NOT NULL,
    key text NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.group_hiera_data OWNER TO "pe-classifier";

--
-- Name: group_variables; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.group_variables (
    variable text NOT NULL,
    group_id uuid NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.group_variables OWNER TO "pe-classifier";

--
-- Name: groups; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.groups (
    id uuid NOT NULL,
    name text,
    environment_name text NOT NULL,
    parent_id uuid NOT NULL,
    description text,
    environment_trumps boolean DEFAULT false NOT NULL,
    last_edited timestamp with time zone DEFAULT now(),
    serial_number integer DEFAULT 1
);


ALTER TABLE public.groups OWNER TO "pe-classifier";

--
-- Name: last_sync; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.last_sync (
    "time" timestamp with time zone NOT NULL,
    id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.last_sync OWNER TO "pe-classifier";

--
-- Name: node_check_ins; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.node_check_ins (
    node text NOT NULL,
    "time" timestamp with time zone NOT NULL,
    explanation text NOT NULL,
    transaction_uuid uuid,
    classification text,
    idx bigint NOT NULL
);


ALTER TABLE public.node_check_ins OWNER TO "pe-classifier";

--
-- Name: node_check_ins_idx_seq; Type: SEQUENCE; Schema: public; Owner: pe-classifier
--

CREATE SEQUENCE public.node_check_ins_idx_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.node_check_ins_idx_seq OWNER TO "pe-classifier";

--
-- Name: node_check_ins_idx_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-classifier
--

ALTER SEQUENCE public.node_check_ins_idx_seq OWNED BY public.node_check_ins.idx;


--
-- Name: rules; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.rules (
    id bigint NOT NULL,
    match text NOT NULL,
    group_id uuid
);


ALTER TABLE public.rules OWNER TO "pe-classifier";

--
-- Name: rules_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-classifier
--

CREATE SEQUENCE public.rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rules_id_seq OWNER TO "pe-classifier";

--
-- Name: rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-classifier
--

ALTER SEQUENCE public.rules_id_seq OWNED BY public.rules.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pe-classifier
--

CREATE TABLE public.schema_migrations (
    id bigint NOT NULL,
    applied timestamp without time zone,
    description character varying(1024)
);


ALTER TABLE public.schema_migrations OWNER TO "pe-classifier";

--
-- Name: node_check_ins idx; Type: DEFAULT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.node_check_ins ALTER COLUMN idx SET DEFAULT nextval('public.node_check_ins_idx_seq'::regclass);


--
-- Name: rules id; Type: DEFAULT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.rules ALTER COLUMN id SET DEFAULT nextval('public.rules_id_seq'::regclass);


--
-- Data for Name: environment_class_parameters; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.environment_class_parameters (parameter, default_value, environment_name, class_name, deleted) FROM stdin;
use_meep_for_classification	false	production	pe_infrastructure	f
timeout	600	production	pe_infrastructure::agent::meep	f
timeout	null	production	pe_infrastructure::agent::meep::run	f
ca_certname	"$::puppet_enterprise::certificate_authority_host"	production	pe_install	f
bootstrap_to	"undef"	production	pe_install	f
repairing	false	production	pe_install	f
puppet_master_dnsaltnames	["puppet"]	production	pe_install	f
database_certname	"$::puppet_enterprise::database_host"	production	pe_install	f
puppetdb_certname	"$::puppet_enterprise::puppetdb_host"	production	pe_install	f
master_certname	"$::puppet_enterprise::puppet_master_host"	production	pe_install	f
console_certname	"$::puppet_enterprise::console_host"	production	pe_install	f
console_admin_password	"lookup('console_admin_password', {'default_value' => undef })"	production	pe_install	f
signing_ca	"undef"	production	pe_install	f
enforce_pe_master_rule	false	production	pe_install	f
upgrade_from	"undef"	production	pe_install	f
pe_node_group_environment	"production"	production	pe_install::install::classification	f
manage_pe_database_pinned_nodes	true	production	pe_install::install::classification	f
clear_cache	"$pe_install::is_upgrade"	production	pe_install::upgrade::clear_cached_catalogs	f
old_postgres_version	null	production	pe_install::upgrade::postgres	f
new_postgres_version	null	production	pe_install::upgrade::postgres	f
pg_upgrade_timeout	0	production	pe_install::upgrade::postgres	f
require_pglogical	true	production	pe_install::upgrade::postgres	f
replica_migration	false	production	pe_install::upgrade::postgres	f
is_upgrade	"$::pe_install::is_upgrade"	production	pe_install::upgrade::puppetdb	f
upgrade_from	"$pe_install::upgrade_from"	production	pe_install::upgrade::remove_logrotate_config_for_tk_services	f
new_postgres_version	null	production	pe_install::upgrade::rollback_postgres_migration	f
delete_datastore	false	production	pe_install::upgrade::rollback_postgres_migration	f
force_service_halt	"$::pe_install::is_upgrade"	production	pe_install::upgrade::stop_services	f
ensure	"running"	production	pe_nginx	f
enable	true	production	pe_nginx	f
manage_delta_rpm	false	production	pe_patch	f
patch_data_group	"root"	production	pe_patch	f
block_patching_on_warnings	false	production	pe_patch	f
patch_data_owner	"root"	production	pe_patch	f
patch_group	"undef"	production	pe_patch	f
apt_autoremove	false	production	pe_patch	f
initial_fact_timeout	900	production	pe_patch	f
patch_cron_min	"fqdn_rand(59)"	production	pe_patch	f
manage_yum_plugin_security	false	production	pe_patch	f
patch_cron_weekday	"absent"	production	pe_patch	f
yum_utils	"installed"	production	pe_patch	f
patch_cron_monthday	"absent"	production	pe_patch	f
patch_cron_hour	"absent"	production	pe_patch	f
delta_rpm	"installed"	production	pe_patch	f
blackout_windows	"undef"	production	pe_patch	f
patch_cron_month	"absent"	production	pe_patch	f
ensure	"present"	production	pe_patch	f
patch_cron_user	"$patch_data_owner"	production	pe_patch	f
fact_upload	true	production	pe_patch	f
reboot_override	"default"	production	pe_patch	f
pre_patching_command	"undef"	production	pe_patch	f
manage_yum_utils	false	production	pe_patch	f
yum_plugin_security	"installed"	production	pe_patch	f
package_name	"$pe_postgresql::params::client_package_name"	production	pe_postgresql::client	f
package_ensure	"present"	production	pe_postgresql::client	f
bindir	"$pe_postgresql::params::bindir"	production	pe_postgresql::client	f
encoding	"undef"	production	pe_postgresql::globals	f
service_status	"undef"	production	pe_postgresql::globals	f
confdir	"undef"	production	pe_postgresql::globals	f
postgis_version	"undef"	production	pe_postgresql::globals	f
client_package_name	"undef"	production	pe_postgresql::globals	f
group	"undef"	production	pe_postgresql::globals	f
manage_package_repo	"undef"	production	pe_postgresql::globals	f
server_package_name	"undef"	production	pe_postgresql::globals	f
service_name	"undef"	production	pe_postgresql::globals	f
locale	"undef"	production	pe_postgresql::globals	f
perl_package_name	"undef"	production	pe_postgresql::globals	f
pg_hba_conf_path	"undef"	production	pe_postgresql::globals	f
xlogdir	"undef"	production	pe_postgresql::globals	f
needs_initdb	"undef"	production	pe_postgresql::globals	f
plperl_package_name	"undef"	production	pe_postgresql::globals	f
default_database	"undef"	production	pe_postgresql::globals	f
devel_package_name	"undef"	production	pe_postgresql::globals	f
contrib_package_name	"undef"	production	pe_postgresql::globals	f
initdb_path	"undef"	production	pe_postgresql::globals	f
postgis_package_name	"undef"	production	pe_postgresql::globals	f
service_provider	"undef"	production	pe_postgresql::globals	f
java_package_name	"undef"	production	pe_postgresql::globals	f
ctype	"undef"	production	pe_postgresql::globals	f
datadir	"undef"	production	pe_postgresql::globals	f
manage_pg_hba_conf	"undef"	production	pe_postgresql::globals	f
python_package_name	"undef"	production	pe_postgresql::globals	f
createdb_path	"undef"	production	pe_postgresql::globals	f
data_checksums	"undef"	production	pe_postgresql::globals	f
ensure	"undef"	production	pe_postgresql::globals	f
version	"undef"	production	pe_postgresql::globals	f
user	"undef"	production	pe_postgresql::globals	f
bindir	"undef"	production	pe_postgresql::globals	f
psql_path	"undef"	production	pe_postgresql::globals	f
postgresql_conf_path	"undef"	production	pe_postgresql::globals	f
collate	"undef"	production	pe_postgresql::globals	f
pg_hba_conf_defaults	"undef"	production	pe_postgresql::globals	f
package_name	"$pe_postgresql::params::devel_package_name"	production	pe_postgresql::lib::devel	f
package_ensure	"present"	production	pe_postgresql::lib::devel	f
package_name	"$pe_postgresql::params::java_package_name"	production	pe_postgresql::lib::java	f
package_ensure	"present"	production	pe_postgresql::lib::java	f
package_name	"$pe_postgresql::params::perl_package_name"	production	pe_postgresql::lib::perl	f
package_ensure	"present"	production	pe_postgresql::lib::perl	f
package_name	"$pe_postgresql::params::python_package_name"	production	pe_postgresql::lib::python	f
package_ensure	"present"	production	pe_postgresql::lib::python	f
ensure	"$pe_postgresql::params::ensure"	production	pe_postgresql::repo	f
version	"undef"	production	pe_postgresql::repo	f
encoding	"$pe_postgresql::params::encoding"	production	pe_postgresql::server	f
service_status	"$pe_postgresql::params::service_status"	production	pe_postgresql::server	f
package_name	"$pe_postgresql::params::server_package_name"	production	pe_postgresql::server	f
ipv6acls	"$pe_postgresql::params::ipv6acls"	production	pe_postgresql::server	f
package_ensure	"$ensure"	production	pe_postgresql::server	f
client_package_name	"$pe_postgresql::params::client_package_name"	production	pe_postgresql::server	f
group	"$pe_postgresql::params::group"	production	pe_postgresql::server	f
service_name	"$pe_postgresql::params::service_name"	production	pe_postgresql::server	f
locale	"$pe_postgresql::params::locale"	production	pe_postgresql::server	f
ip_mask_allow_all_users	"$pe_postgresql::params::ip_mask_allow_all_users"	production	pe_postgresql::server	f
pg_hba_conf_path	"$pe_postgresql::params::pg_hba_conf_path"	production	pe_postgresql::server	f
xlogdir	"$pe_postgresql::params::xlogdir"	production	pe_postgresql::server	f
needs_initdb	"$pe_postgresql::params::needs_initdb"	production	pe_postgresql::server	f
plperl_package_name	"$pe_postgresql::params::plperl_package_name"	production	pe_postgresql::server	f
default_database	"$pe_postgresql::params::default_database"	production	pe_postgresql::server	f
port	"$pe_postgresql::params::port"	production	pe_postgresql::server	f
initdb_path	"$pe_postgresql::params::initdb_path"	production	pe_postgresql::server	f
service_provider	"$pe_postgresql::params::service_provider"	production	pe_postgresql::server	f
service_ensure	"$pe_postgresql::params::service_ensure"	production	pe_postgresql::server	f
ctype	"$pe_postgresql::params::ctype"	production	pe_postgresql::server	f
datadir	"$pe_postgresql::params::datadir"	production	pe_postgresql::server	f
manage_pg_hba_conf	"$pe_postgresql::params::manage_pg_hba_conf"	production	pe_postgresql::server	f
createdb_path	"$pe_postgresql::params::createdb_path"	production	pe_postgresql::server	f
data_checksums	"$pe_postgresql::params::data_checksums"	production	pe_postgresql::server	f
ensure	"$pe_postgresql::params::ensure"	production	pe_postgresql::server	f
ip_mask_deny_postgres_user	"$pe_postgresql::params::ip_mask_deny_postgres_user"	production	pe_postgresql::server	f
version	"$pe_postgresql::params::version"	production	pe_postgresql::server	f
user	"$pe_postgresql::params::user"	production	pe_postgresql::server	f
psql_path	"$pe_postgresql::params::psql_path"	production	pe_postgresql::server	f
postgres_password	"undef"	production	pe_postgresql::server	f
postgresql_conf_path	"$pe_postgresql::params::postgresql_conf_path"	production	pe_postgresql::server	f
collate	"$pe_postgresql::params::collate"	production	pe_postgresql::server	f
listen_addresses	"$pe_postgresql::params::listen_addresses"	production	pe_postgresql::server	f
ipv4acls	"$pe_postgresql::params::ipv4acls"	production	pe_postgresql::server	f
pg_hba_conf_defaults	"$pe_postgresql::params::pg_hba_conf_defaults"	production	pe_postgresql::server	f
package_name	"$pe_postgresql::params::contrib_package_name"	production	pe_postgresql::server::contrib	f
package_ensure	"present"	production	pe_postgresql::server::contrib	f
package_ensure	"present"	production	pe_postgresql::server::plperl	f
package_name	"$pe_postgresql::server::plperl_package_name"	production	pe_postgresql::server::plperl	f
package_name	"$pe_postgresql::params::postgis_package_name"	production	pe_postgresql::server::postgis	f
package_ensure	"present"	production	pe_postgresql::server::postgis	f
forge_settings	"$pe_r10k::params::forge_settings"	production	pe_r10k	f
deploy_settings	"$pe_r10k::params::deploy_settings"	production	pe_r10k	f
remote	"$pe_r10k::params::remote"	production	pe_r10k	f
r10k_group	"$pe_r10k::params::r10k_group"	production	pe_r10k	f
sources	"$pe_r10k::params::sources"	production	pe_r10k	f
postrun	"$pe_r10k::params::postrun"	production	pe_r10k	f
proxy	"$pe_r10k::params::proxy"	production	pe_r10k	f
cachedir	"$pe_r10k::params::cachedir"	production	pe_r10k	f
r10k_basedir	"$pe_r10k::params::r10k_basedir"	production	pe_r10k	f
git_settings	"$pe_r10k::params::git_settings"	production	pe_r10k	f
r10k_user	"$pe_r10k::params::r10k_user"	production	pe_r10k	f
configfile	"$pe_r10k::params::configfile"	production	pe_r10k	f
forge_settings	null	production	pe_r10k::config	f
deploy_settings	null	production	pe_r10k::config	f
remote	null	production	pe_r10k::config	f
r10k_group	null	production	pe_r10k::config	f
sources	null	production	pe_r10k::config	f
postrun	null	production	pe_r10k::config	f
proxy	null	production	pe_r10k::config	f
cachedir	null	production	pe_r10k::config	f
r10k_basedir	null	production	pe_r10k::config	f
git_settings	null	production	pe_r10k::config	f
r10k_user	null	production	pe_r10k::config	f
configfile	null	production	pe_r10k::config	f
dbpassword	"razor"	production	pe_razor	f
protect_new_nodes	true	production	pe_razor	f
auth_config	""	production	pe_razor	f
facts_blacklist	["domain","filesystems","fqdn","hostname","id","/kernel.*/","memoryfree","memorysize","memorytotal","/operatingsystem.*/","osfamily","path","ps","rubysitedir","rubyversion","selinux","sshdsakey","/sshfp_[dr]sa/","sshrsakey","/swap.*/","timezone","/uptime.*/"]	production	pe_razor	f
server_https_port	8151	production	pe_razor	f
microkernel_kernel_args	""	production	pe_razor	f
store_hook_input	false	production	pe_razor	f
facts_match_on	[]	production	pe_razor	f
enable_windows_smb	false	production	pe_razor	f
auth_enabled	false	production	pe_razor	f
hook_path	""	production	pe_razor	f
database_url	"undef"	production	pe_razor	f
pe_tarball_base_url	"https://pm.puppetlabs.com/puppet-enterprise"	production	pe_razor	f
hook_execution_path	"undef"	production	pe_razor	f
microkernel_url	""	production	pe_razor	f
auth_allow_localhost	false	production	pe_razor	f
microkernel_debug_level	"quiet"	production	pe_razor	f
match_nodes_on	["mac"]	production	pe_razor	f
checkin_interval	15	production	pe_razor	f
default_postgresql_database	"undef"	production	pe_razor	f
store_hook_output	false	production	pe_razor	f
api_config_blacklist	["database_url","facts.blacklist"]	production	pe_razor	f
server_http_port	8150	production	pe_razor	f
microkernel_extension_zip	""	production	pe_razor	f
secure_api	true	production	pe_razor	f
repo_store_root	"undef"	production	pe_razor	f
task_path	""	production	pe_razor	f
broker_path	""	production	pe_razor	f
repo_dir	"/opt/puppetlabs/server/data/packages"	production	pe_repo	f
http_proxy_host	"undef"	production	pe_repo	f
enable_bulk_pluginsync	true	production	pe_repo	f
prefix	"/packages"	production	pe_repo	f
enable_windows_bulk_pluginsync	true	production	pe_repo	f
http_proxy_user	"undef"	production	pe_repo	f
http_proxy_password	"undef"	production	pe_repo	f
http_proxy_port	3128	production	pe_repo	f
master	"pe_compile_master() ? {\\n      true  => pe_pick($compile_master_pool_address, $::settings::certname),\\n      false => $::settings::certname"	production	pe_repo	f
base_path	"https://pm.puppetlabs.com/puppet-agent"	production	pe_repo	f
compile_master_pool_address	"undef"	production	pe_repo	f
compile_master_pool_address	"pe_pick($pe_repo::compile_master_pool_address,\\n                                         $pe_repo::master)"	production	pe_repo::bulk_pluginsync	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::aix_61_power	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::aix_71_power	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::aix_power	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::debian_10_amd64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::debian_8_amd64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::debian_8_i386	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::debian_9_amd64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::debian_9_i386	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::el_4_i386	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::el_4_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_5_i386	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_5_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_6_i386	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::el_6_s390x	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_6_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_7_aarch64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_7_ppc64le	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_7_s390x	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_7_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::el_8_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::fedora_26_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::fedora_27_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::fedora_28_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::fedora_29_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::fedora_30_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::fedora_31_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::osx_1012_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::osx_1013_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::osx_1014_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::osx_1015_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::osx_109_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::redhatfips_7_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_11_i386	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_11_s390x	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_11_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_12_ppc64le	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_12_s390x	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_12_x86_64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::sles_15_x86_64	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::solaris_10_i386	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::solaris_10_sparc	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::solaris_11_i386	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::solaris_11_sparc	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_1404_amd64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_1404_i386	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_1604_amd64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_1604_i386	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_1604_ppc64el	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_1804_amd64	f
agent_version	"$::aio_agent_build"	production	pe_repo::platform::ubuntu_2004_amd64	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::windows_i386	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::windows_x86_64	f
agent_version	"$::aio_agent_version"	production	pe_repo::platform::windowsfips_x86_64	f
path	"/opt/puppetlabs/server/data/staging"	production	pe_staging	f
owner	"0"	production	pe_staging	f
group	"0"	production	pe_staging	f
mode	"0755"	production	pe_staging	f
rbac_database_read_user	"pe-rbac-read"	production	puppet_enterprise	f
orchestrator_port	8143	production	puppet_enterprise	f
puppetdb_database_password	"undef"	production	puppet_enterprise	f
inventory_database_password	"undef"	production	puppet_enterprise	f
rbac_database_name	"pe-rbac"	production	puppet_enterprise	f
pglogical_keepalives_interval	"undef"	production	puppet_enterprise	f
inventory_service_migration_db_user	"$inventory_database_super_user"	production	puppet_enterprise	f
inventory_url_prefix	"/inventory"	production	puppet_enterprise	f
orchestrator_database_read_user	"pe-orchestrator-read"	production	puppet_enterprise	f
use_application_services	"undef"	production	puppet_enterprise	f
puppet_master_port	8140	production	puppet_enterprise	f
classifier_database_write_user	"pe-classifier-write"	production	puppet_enterprise	f
inventory_database_write_user	"pe-inventory-write"	production	puppet_enterprise	f
database_host	"pe_any2array($puppetdb_host)[0]"	production	puppet_enterprise	f
puppetdb_host	"$puppet_master_host"	production	puppet_enterprise	f
classifier_database_name	"pe-classifier"	production	puppet_enterprise	f
activity_url_prefix	"$puppet_enterprise::params::activity_url_prefix"	production	puppet_enterprise	f
inventory_database_name	"pe-inventory"	production	puppet_enterprise	f
orchestrator_database_host	"$database_host"	production	puppet_enterprise	f
orchestrator_database_super_user	"pe-orchestrator"	production	puppet_enterprise	f
inventory_database_super_user	"pe-inventory"	production	puppet_enterprise	f
activity_database_name	"pe-activity"	production	puppet_enterprise	f
ace_server_concurrency	10	production	puppet_enterprise	f
license_key_path	"$puppet_enterprise::params::dest_license_key_path"	production	puppet_enterprise	f
database_port	5432	production	puppet_enterprise	f
ssl_protocols	["TLSv1.2"]	production	puppet_enterprise	f
puppetdb_sync_interval_minutes	5	production	puppet_enterprise	f
allow_unauthenticated_status	true	production	puppet_enterprise	f
rbac_service_regular_db_user	"$rbac_database_write_user"	production	puppet_enterprise	f
activity_database_write_user	"pe-activity-write"	production	puppet_enterprise	f
database_ssl	true	production	puppet_enterprise	f
inventory_database_read_user	"pe-inventory-read"	production	puppet_enterprise	f
puppetdb_database_host	"$database_host"	production	puppet_enterprise	f
orchestrator_database_password	"undef"	production	puppet_enterprise	f
puppet_master_host	null	production	puppet_enterprise	f
plan_executor_port	62659	production	puppet_enterprise	f
api_port	"$puppet_enterprise::params::console_services_api_ssl_listen_port"	production	puppet_enterprise	f
certificate_authority_host	"$puppet_master_host"	production	puppet_enterprise	f
orchestrator_database_name	"pe-orchestrator"	production	puppet_enterprise	f
rbac_database_write_user	"pe-rbac-write"	production	puppet_enterprise	f
console_port	443	production	puppet_enterprise	f
pcp_broker_port	8142	production	puppet_enterprise	f
activity_database_read_user	"pe-activity-read"	production	puppet_enterprise	f
classifier_database_password	"undef"	production	puppet_enterprise	f
ssl_cipher_suites	[]	production	puppet_enterprise	f
puppetdb_database_name	"pe-puppetdb"	production	puppet_enterprise	f
certificate_authority_port	8140	production	puppet_enterprise	f
console_database_host	"$database_host"	production	puppet_enterprise	f
orchestrator_service_regular_db_user	"$orchestrator_database_write_user"	production	puppet_enterprise	f
activity_database_super_user	"pe-activity"	production	puppet_enterprise	f
orchestrator_database_write_user	"pe-orchestrator-write"	production	puppet_enterprise	f
classifier_service_migration_db_user	"$classifier_database_super_user"	production	puppet_enterprise	f
classifier_database_super_user	"pe-classifier"	production	puppet_enterprise	f
manage_symlinks	"$facts['platform_symlink_writable']"	production	puppet_enterprise	f
puppetdb_database_user	"pe-puppetdb"	production	puppet_enterprise	f
bolt_server_concurrency	100	production	puppet_enterprise	f
activity_service_migration_db_user	"$activity_database_super_user"	production	puppet_enterprise	f
orchestrator_service_migration_db_user	"$orchestrator_database_super_user"	production	puppet_enterprise	f
classifier_service_regular_db_user	"$classifier_database_write_user"	production	puppet_enterprise	f
activity_service_regular_db_user	"$activity_database_write_user"	production	puppet_enterprise	f
orchestrator_url_prefix	"/orchestrator"	production	puppet_enterprise	f
rbac_database_password	"undef"	production	puppet_enterprise	f
pcp_broker_host	"$puppet_master_host"	production	puppet_enterprise	f
replicating	true	production	puppet_enterprise	f
pglogical_keepalives_idle	30	production	puppet_enterprise	f
jdk_ephemeral_dh_key_size	2048	production	puppet_enterprise	f
rbac_service_migration_db_user	"$rbac_database_super_user"	production	puppet_enterprise	f
rbac_database_super_user	"pe-rbac"	production	puppet_enterprise	f
activity_database_password	"undef"	production	puppet_enterprise	f
ace_server_port	44633	production	puppet_enterprise	f
plan_executor_workers	1	production	puppet_enterprise	f
pglogical_keepalives_count	2	production	puppet_enterprise	f
ha_enabled_replicas	[]	production	puppet_enterprise	f
classifier_url_prefix	"$puppet_enterprise::params::classifier_url_prefix"	production	puppet_enterprise	f
inventory_database_host	"$orchestrator_database_host"	production	puppet_enterprise	f
inventory_service_regular_db_user	"$inventory_database_write_user"	production	puppet_enterprise	f
rbac_url_prefix	"$puppet_enterprise::params::rbac_url_prefix"	production	puppet_enterprise	f
bolt_server_port	62658	production	puppet_enterprise	f
classifier_database_read_user	"pe-classifier-read"	production	puppet_enterprise	f
puppetdb_port	8081	production	puppet_enterprise	f
send_analytics_data	true	production	puppet_enterprise	f
database_cert_auth	true	production	puppet_enterprise	f
console_host	"$puppet_master_host"	production	puppet_enterprise	f
cert_whitelist_path	"/etc/puppetlabs/puppetdb/certificate-whitelist"	production	puppet_enterprise::certs::puppetdb_whitelist	f
certnames	[]	production	puppet_enterprise::certs::puppetdb_whitelist	f
path	null	production	puppet_enterprise::cli_config	f
user	null	production	puppet_enterprise::cli_config	f
group	null	production	puppet_enterprise::cli_config	f
mode	null	production	puppet_enterprise::cli_config	f
additional_services	[]	production	puppet_enterprise::cli_config	f
additional_nodes	[]	production	puppet_enterprise::cli_config	f
session_timeout	"undef"	production	puppet_enterprise::console_services	f
orchestrator_port	"$puppet_enterprise::orchestrator_port"	production	puppet_enterprise::console_services	f
java_args	"$puppet_enterprise::params::console_services_java_args"	production	puppet_enterprise::console_services	f
classifier_port	"$puppet_enterprise::params::console_services_api_listen_port"	production	puppet_enterprise::console_services	f
inventory_url_prefix	"$puppet_enterprise::inventory_url_prefix"	production	puppet_enterprise::console_services	f
enable_gc_logging	"undef"	production	puppet_enterprise::console_services	f
max_connections_total	"undef"	production	puppet_enterprise::console_services	f
puppetdb_host	null	production	puppet_enterprise::console_services	f
activity_url_prefix	"$puppet_enterprise::params::activity_url_prefix"	production	puppet_enterprise::console_services	f
rbac_port	"$puppet_enterprise::params::console_services_api_listen_port"	production	puppet_enterprise::console_services	f
custom_queries_path	"$puppet_enterprise::custom_queries_path"	production	puppet_enterprise::console_services	f
query_cache_ttl	"$puppet_enterprise::params::console_services_query_cache_ttl"	production	puppet_enterprise::console_services	f
master_host	null	production	puppet_enterprise::console_services	f
service_stop_retries	60	production	puppet_enterprise::console_services	f
client_certname	null	production	puppet_enterprise::console_services	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::console_services	f
status_proxy_enabled	false	production	puppet_enterprise::console_services	f
orchestrator_host	"$master_host"	production	puppet_enterprise::console_services	f
pcp_broker_port	"$puppet_enterprise::pcp_broker_port"	production	puppet_enterprise::console_services	f
replication_mode	"none"	production	puppet_enterprise::console_services	f
display_local_time	false	production	puppet_enterprise::console_services	f
activity_port	"$puppet_enterprise::params::console_services_api_listen_port"	production	puppet_enterprise::console_services	f
agent_installer_port	"$master_port"	production	puppet_enterprise::console_services	f
pcp_timeout	5	production	puppet_enterprise::console_services	f
service_alert_timeout	5000	production	puppet_enterprise::console_services	f
session_maximum_lifetime	""	production	puppet_enterprise::console_services	f
no_longer_reporting_cutoff	"undef"	production	puppet_enterprise::console_services	f
orchestrator_url_prefix	"$puppet_enterprise::orchestrator_url_prefix"	production	puppet_enterprise::console_services	f
proxy_idle_timeout	60	production	puppet_enterprise::console_services	f
pcp_broker_host	"$puppet_enterprise::pcp_broker_host"	production	puppet_enterprise::console_services	f
agent_installer_host	"lookup('pe_repo::compile_master_pool_address', {default_value => $master_host})"	production	puppet_enterprise::console_services	f
start_timeout	300	production	puppet_enterprise::console_services	f
inventory_port	"$puppet_enterprise::orchestrator_port"	production	puppet_enterprise::console_services	f
max_connections_per_route	"undef"	production	puppet_enterprise::console_services	f
classifier_host	"localhost"	production	puppet_enterprise::console_services	f
activity_host	"localhost"	production	puppet_enterprise::console_services	f
classifier_url_prefix	"$puppet_enterprise::params::classifier_url_prefix"	production	puppet_enterprise::console_services	f
inventory_host	"$orchestrator_host"	production	puppet_enterprise::console_services	f
puppetdb_port	null	production	puppet_enterprise::console_services	f
master_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::console_services	f
rbac_host	"localhost"	production	puppet_enterprise::console_services	f
manage_license_key	true	production	puppet_enterprise::license	f
java_args	"puppet_enterprise::calculate_puppetserver_java_args()"	production	puppet_enterprise::master	f
jruby_max_requests_per_instance	"undef"	production	puppet_enterprise::master	f
ssl_listen_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::master	f
enable_future_parser	"undef"	production	puppet_enterprise::master	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::master	f
jruby_max_active_instances	"undef"	production	puppet_enterprise::master	f
puppetserver_jruby_puppet_master_code_dir	null	production	puppet_enterprise::master	f
metrics_jmx_enabled	null	production	puppet_enterprise::master	f
connect_timeout_milliseconds	"undef"	production	puppet_enterprise::master	f
manage_symlinks	true	production	puppet_enterprise::master	f
static_files	{}	production	puppet_enterprise::master	f
profiler_enabled	null	production	puppet_enterprise::master	f
environment_timeout	"undef"	production	puppet_enterprise::master	f
disable_i18n	false	production	puppet_enterprise::master	f
metrics_server_id	null	production	puppet_enterprise::master	f
metrics_puppetserver_metrics_allowed	null	production	puppet_enterprise::master	f
metrics_graphite_enabled	null	production	puppet_enterprise::master	f
certname	"$::client_cert"	production	puppet_enterprise::master	f
static_catalogs	"undef"	production	puppet_enterprise::master	f
code_manager_auto_configure	"undef"	production	puppet_enterprise::master	f
forge_settings	"undef"	production	puppet_enterprise::master::code_manager	f
environmentdir	"undef"	production	puppet_enterprise::master::code_manager	f
remote	"undef"	production	puppet_enterprise::master::code_manager	f
webserver_ssl_host	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::master::code_manager	f
hostcrl	"$puppet_enterprise::params::hostcrl"	production	puppet_enterprise::master::code_manager	f
puppet_master_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::master::code_manager	f
file_sync_auto_commit	"undef"	production	puppet_enterprise::master::code_manager	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::master::code_manager	f
authenticate_webhook	true	production	puppet_enterprise::master::code_manager	f
sources	"undef"	production	puppet_enterprise::master::code_manager	f
invalid_branches	"undef"	production	puppet_enterprise::master::code_manager	f
timeouts_hook	30	production	puppet_enterprise::master::code_manager	f
timeouts_sync	300	production	puppet_enterprise::master::code_manager	f
timeouts_wait	700	production	puppet_enterprise::master::code_manager	f
git_provider	"undef"	production	puppet_enterprise::master::code_manager	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::master::code_manager	f
purge_whitelist	[".resource_types"]	production	puppet_enterprise::master::code_manager	f
deploy_pool_size	2	production	puppet_enterprise::master::code_manager	f
webserver_ssl_port	8170	production	puppet_enterprise::master::code_manager	f
proxy	"undef"	production	puppet_enterprise::master::code_manager	f
cachedir	"/opt/puppetlabs/server/data/code-manager/cache"	production	puppet_enterprise::master::code_manager	f
datadir	"/opt/puppetlabs/server/data/code-manager/"	production	puppet_enterprise::master::code_manager	f
file_sync_repo_id	"undef"	production	puppet_enterprise::master::code_manager	f
timeouts_fetch	30	production	puppet_enterprise::master::code_manager	f
git_settings	"undef"	production	puppet_enterprise::master::code_manager	f
timeouts_deploy	600	production	puppet_enterprise::master::code_manager	f
post_environment_hooks	"undef"	production	puppet_enterprise::master::code_manager	f
timeouts_shutdown	610	production	puppet_enterprise::master::code_manager	f
certname	"$facts['clientcert']"	production	puppet_enterprise::master::code_manager	f
private_key	"undef"	production	puppet_enterprise::master::code_manager	f
versioned_deploys_codedir	null	production	puppet_enterprise::master::file_sync	f
storage_service_disabled	null	production	puppet_enterprise::master::file_sync	f
file_sync_submodules_dir	"environments"	production	puppet_enterprise::master::file_sync	f
file_sync_stream_file_threshold	1024	production	puppet_enterprise::master::file_sync	f
provisioned_replicas	[]	production	puppet_enterprise::master::file_sync	f
clean_lock_files_at_startup	true	production	puppet_enterprise::master::file_sync	f
puppet_default_codedir	null	production	puppet_enterprise::master::file_sync	f
puppet_master_host	null	production	puppet_enterprise::master::file_sync	f
file_sync_preserve_deleted_submodules	false	production	puppet_enterprise::master::file_sync	f
localcacert	null	production	puppet_enterprise::master::file_sync	f
puppetserver_jruby_puppet_master_code_dir	null	production	puppet_enterprise::master::file_sync	f
file_sync_locking_enabled	true	production	puppet_enterprise::master::file_sync	f
replication_mode	"none"	production	puppet_enterprise::master::file_sync	f
file_sync_enable_forceful_sync	true	production	puppet_enterprise::master::file_sync	f
file_sync_staging_dir	"/etc/puppetlabs/code-staging"	production	puppet_enterprise::master::file_sync	f
puppetserver_webserver_ssl_port	null	production	puppet_enterprise::master::file_sync	f
whitelisted_certnames	[]	production	puppet_enterprise::master::file_sync	f
master_of_masters_certname	null	production	puppet_enterprise::master::file_sync	f
certname	"$facts['clientcert']"	production	puppet_enterprise::master::file_sync	f
file_sync_poll_interval	5	production	puppet_enterprise::master::file_sync	f
versioned_deploys	false	production	puppet_enterprise::master::file_sync	f
code_id_command	"undef"	production	puppet_enterprise::master::file_sync_disabled	f
code_content_command	"undef"	production	puppet_enterprise::master::file_sync_disabled	f
key	"\\"${puppet_enterprise::params::ssl_dir}/private_keys/${certname}.pem\\""	production	puppet_enterprise::master::installer_bolt	f
bolt_log_level	"info"	production	puppet_enterprise::master::installer_bolt	f
cacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::master::installer_bolt	f
bolt_log_file	"/var/log/puppetlabs/installer/bolt_info.log"	production	puppet_enterprise::master::installer_bolt	f
cert	"\\"${puppet_enterprise::params::ssl_dir}/certs/${certname}.pem\\""	production	puppet_enterprise::master::installer_bolt	f
puppetdb_ports	"$puppet_enterprise::puppetdb_ports_array"	production	puppet_enterprise::master::installer_bolt	f
bolt_modulepath	"/opt/puppetlabs/installer/share/Boltdir/site-modules:/opt/puppetlabs/server/data/environments/enterprise/modules:/opt/puppetlabs/installer/share/Boltdir/modules"	production	puppet_enterprise::master::installer_bolt	f
puppetdb_hosts	"$puppet_enterprise::puppetdb_hosts_array"	production	puppet_enterprise::master::installer_bolt	f
bolt_yaml_file	"/opt/puppetlabs/installer/share/Boltdir/bolt.yaml"	production	puppet_enterprise::master::installer_bolt	f
certname	"$facts['clientcert']"	production	puppet_enterprise::master::installer_bolt	f
orchestrator_hosts	null	production	puppet_enterprise::master::pcp_broker	f
orchestrator_port	"$puppet_enterprise::orchestrator_port"	production	puppet_enterprise::master::pcp_broker	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::master::pcp_broker	f
ssl_listen_port	"$puppet_enterprise::pcp_broker_port"	production	puppet_enterprise::master::pcp_broker	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::master::pcp_broker	f
java_args	"puppet_enterprise::calculate_puppetserver_java_args(\\n                                                              $jruby_max_active_instances)"	production	puppet_enterprise::master::puppetserver	f
enable_gc_logging	"undef"	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_gem_home	"/opt/puppetlabs/server/data/puppetserver/jruby-gems"	production	puppet_enterprise::master::puppetserver	f
jruby_max_requests_per_instance	100000	production	puppet_enterprise::master::puppetserver	f
cipher_suites	"undef"	production	puppet_enterprise::master::puppetserver	f
base_puppet_admin_certs	"[$facts['clientcert']]"	production	puppet_enterprise::master::puppetserver	f
jruby_environment_class_cache_enabled	"undef"	production	puppet_enterprise::master::puppetserver	f
idle_timeout_milliseconds	"undef"	production	puppet_enterprise::master::puppetserver	f
reserved_code_cache	"puppet_enterprise::calculate_puppetserver_reserved_code_cache(\\n                                                              $jruby_max_active_instances )"	production	puppet_enterprise::master::puppetserver	f
jruby_puppet_multithreaded	false	production	puppet_enterprise::master::puppetserver	f
pre_commit_hook_commands	["/opt/puppetlabs/server/bin/generate-puppet-types.rb"]	production	puppet_enterprise::master::puppetserver	f
jruby_compile_mode	"jit"	production	puppet_enterprise::master::puppetserver	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::master::puppetserver	f
service_stop_retries	60	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_ruby_load_path	["/opt/puppetlabs/puppet/lib/ruby/vendor_ruby","/opt/puppetlabs/puppet/cache/lib","/opt/puppetlabs/server/apps/bolt-server/lib/ruby/vendor_ruby"]	production	puppet_enterprise::master::puppetserver	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::master::puppetserver	f
jruby_max_active_instances	"puppet_enterprise::calculate_puppetserver_jruby_max_active_instances()"	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_master_code_dir	null	production	puppet_enterprise::master::puppetserver	f
puppetserver_webserver_ssl_host	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::master::puppetserver	f
jruby_puppet_max_queued_requests	"undef"	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_master_var_dir	"/opt/puppetlabs/server/data/puppetserver"	production	puppet_enterprise::master::puppetserver	f
jruby_borrow_timeout	"undef"	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_boltlib_path	["/opt/puppetlabs/server/apps/bolt-server/lib/modules"]	production	puppet_enterprise::master::puppetserver	f
status_logging_enabled	false	production	puppet_enterprise::master::puppetserver	f
metrics_jmx_enabled	null	production	puppet_enterprise::master::puppetserver	f
connect_timeout_milliseconds	"undef"	production	puppet_enterprise::master::puppetserver	f
jruby_jar	"/opt/puppetlabs/server/apps/puppetserver/jruby-9k.jar"	production	puppet_enterprise::master::puppetserver	f
static_files	{}	production	puppet_enterprise::master::puppetserver	f
profiler_enabled	null	production	puppet_enterprise::master::puppetserver	f
tk_jetty_max_threads	"undef"	production	puppet_enterprise::master::puppetserver	f
file_sync_puppet_code_repo	"undef"	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_master_run_dir	"/var/run/puppetlabs/puppetserver"	production	puppet_enterprise::master::puppetserver	f
start_timeout	300	production	puppet_enterprise::master::puppetserver	f
metrics_server_id	null	production	puppet_enterprise::master::puppetserver	f
jruby_puppet_max_retry_delay	"undef"	production	puppet_enterprise::master::puppetserver	f
metrics_puppetserver_metrics_allowed	null	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_master_log_dir	"/var/log/puppetlabs/puppetserver"	production	puppet_enterprise::master::puppetserver	f
djava_io_tmpdir	"undef"	production	puppet_enterprise::master::puppetserver	f
metrics_webservice_enabled	true	production	puppet_enterprise::master::puppetserver	f
metrics_graphite_enabled	null	production	puppet_enterprise::master::puppetserver	f
puppetserver_webserver_ssl_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::master::puppetserver	f
puppetserver_jruby_puppet_master_conf_dir	"/etc/puppetlabs/puppet"	production	puppet_enterprise::master::puppetserver	f
certname	"$facts['clientcert']"	production	puppet_enterprise::master::puppetserver	f
puppet_admin_certs	[]	production	puppet_enterprise::master::puppetserver	f
code_manager_auto_configure	"undef"	production	puppet_enterprise::master::puppetserver	f
status_logging_interval_minutes	30	production	puppet_enterprise::master::puppetserver	f
recover_configuration_interval	30	production	puppet_enterprise::master::recover_configuration	f
recover_configuration_interval_offset	"fqdn_rand(pe_clamp(1,$recover_configuration_interval, 60))"	production	puppet_enterprise::master::recover_configuration	f
pe_environment	"lookup(pe_install::install::classification::pe_node_group_environment, { 'default_value' => 'production' })"	production	puppet_enterprise::master::recover_configuration	f
console_client_certname	null	production	puppet_enterprise::master::tk_authz	f
classifier_client_certname	null	production	puppet_enterprise::master::tk_authz	f
orchestrator_client_certname	null	production	puppet_enterprise::master::tk_authz	f
allow_unauthenticated_ca	null	production	puppet_enterprise::master::tk_authz	f
allow_unauthenticated_status	null	production	puppet_enterprise::master::tk_authz	f
allow_header_cert_info	false	production	puppet_enterprise::master::tk_authz	f
allow_rbac_catalog_compile	true	production	puppet_enterprise::master::tk_authz	f
installing	false	production	puppet_enterprise::packages	f
pe_ver	"pe_empty($facts['pe_build']) ? { false => $facts['pe_build'], true => pe_build_version()"	production	puppet_enterprise::packages	f
hostcrl	"$puppet_enterprise::params::hostcrl"	production	puppet_enterprise::profile::ace_server	f
concurrency	"$puppet_enterprise::ace_server_concurrency"	production	puppet_enterprise::profile::ace_server	f
service_loglevel	"notice"	production	puppet_enterprise::profile::ace_server	f
master_host	"lookup('pe_repo::compile_master_pool_address', {default_value => $puppet_enterprise::puppet_master_host})"	production	puppet_enterprise::profile::ace_server	f
ssl_listen_port	"$puppet_enterprise::ace_server_port"	production	puppet_enterprise::profile::ace_server	f
settings	{}	production	puppet_enterprise::profile::ace_server	f
ssl_cipher_suites	"$puppet_enterprise::params::secure_ciphers"	production	puppet_enterprise::profile::ace_server	f
whitelist	"[$certname]"	production	puppet_enterprise::profile::ace_server	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::ace_server	f
master_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::profile::ace_server	f
run_service	true	production	puppet_enterprise::profile::ace_server	f
server_list	[]	production	puppet_enterprise::profile::agent	f
manage_puppet_conf	false	production	puppet_enterprise::profile::agent	f
package_inventory_enabled	false	production	puppet_enterprise::profile::agent	f
pcp_broker_list	[]	production	puppet_enterprise::profile::agent	f
pcp_broker_port	"$puppet_enterprise::pcp_broker_port"	production	puppet_enterprise::profile::agent	f
manage_symlinks	"$puppet_enterprise::manage_symlinks"	production	puppet_enterprise::profile::agent	f
master_uris	"undef"	production	puppet_enterprise::profile::agent	f
pcp_broker_host	"$puppet_enterprise::pcp_broker_host"	production	puppet_enterprise::profile::agent	f
pxp_enabled	true	production	puppet_enterprise::profile::agent	f
pcp_broker_ws_uris	[]	production	puppet_enterprise::profile::agent	f
java_args	{}	production	puppet_enterprise::profile::amq::broker	f
decrease_network_consumer_priority	true	production	puppet_enterprise::profile::amq::broker	f
enable_gc_logging	true	production	puppet_enterprise::profile::amq::broker	f
keystore_password	"undef"	production	puppet_enterprise::profile::amq::broker	f
memory_usage	"undef"	production	puppet_enterprise::profile::amq::broker	f
network_connector_tag	"undef"	production	puppet_enterprise::profile::amq::broker	f
stomp_user	"undef"	production	puppet_enterprise::profile::amq::broker	f
store_usage	"1gb"	production	puppet_enterprise::profile::amq::broker	f
activemq_hubname	"undef"	production	puppet_enterprise::profile::amq::broker	f
enable_web_console	false	production	puppet_enterprise::profile::amq::broker	f
stomp_protocol	"undef"	production	puppet_enterprise::profile::amq::broker	f
heap_mb	"undef"	production	puppet_enterprise::profile::amq::broker	f
excluded_collectives	[]	production	puppet_enterprise::profile::amq::broker	f
queue_memory_limit	"undef"	production	puppet_enterprise::profile::amq::broker	f
openwire_port	"undef"	production	puppet_enterprise::profile::amq::broker	f
topic_conduit_subscriptions	true	production	puppet_enterprise::profile::amq::broker	f
stomp_transport_options	"undef"	production	puppet_enterprise::profile::amq::broker	f
openwire_protocol	"undef"	production	puppet_enterprise::profile::amq::broker	f
dynamic_only	true	production	puppet_enterprise::profile::amq::broker	f
truststore_password	"undef"	production	puppet_enterprise::profile::amq::broker	f
duplex	false	production	puppet_enterprise::profile::amq::broker	f
brokername	"undef"	production	puppet_enterprise::profile::amq::broker	f
included_collectives	[]	production	puppet_enterprise::profile::amq::broker	f
stomp_port	"undef"	production	puppet_enterprise::profile::amq::broker	f
stomp_password	"undef"	production	puppet_enterprise::profile::amq::broker	f
openwire_transport_options	"undef"	production	puppet_enterprise::profile::amq::broker	f
topic_memory_limit	"undef"	production	puppet_enterprise::profile::amq::broker	f
temp_usage	"1gb"	production	puppet_enterprise::profile::amq::broker	f
queue_conduit_subscriptions	false	production	puppet_enterprise::profile::amq::broker	f
use_dedicated_task_runner	false	production	puppet_enterprise::profile::amq::broker	f
network_ttl	"undef"	production	puppet_enterprise::profile::amq::broker	f
keystore_password	"undef"	production	puppet_enterprise::profile::amq::hub	f
network_connector_spoke_collect_tag	"undef"	production	puppet_enterprise::profile::amq::hub	f
memory_usage	"undef"	production	puppet_enterprise::profile::amq::hub	f
stomp_user	"undef"	production	puppet_enterprise::profile::amq::hub	f
store_usage	"1gb"	production	puppet_enterprise::profile::amq::hub	f
enable_web_console	false	production	puppet_enterprise::profile::amq::hub	f
stomp_protocol	"undef"	production	puppet_enterprise::profile::amq::hub	f
heap_mb	"undef"	production	puppet_enterprise::profile::amq::hub	f
network_connector_export_tag	"pe-amq-network-connectors-hub-mesh"	production	puppet_enterprise::profile::amq::hub	f
openwire_port	"undef"	production	puppet_enterprise::profile::amq::hub	f
openwire_protocol	"undef"	production	puppet_enterprise::profile::amq::hub	f
truststore_password	"undef"	production	puppet_enterprise::profile::amq::hub	f
brokername	"undef"	production	puppet_enterprise::profile::amq::hub	f
stomp_port	"undef"	production	puppet_enterprise::profile::amq::hub	f
stomp_password	"undef"	production	puppet_enterprise::profile::amq::hub	f
temp_usage	"1gb"	production	puppet_enterprise::profile::amq::hub	f
use_dedicated_task_runner	false	production	puppet_enterprise::profile::amq::hub	f
network_ttl	"undef"	production	puppet_enterprise::profile::amq::hub	f
concurrency	"$puppet_enterprise::bolt_server_concurrency"	production	puppet_enterprise::profile::bolt_server	f
service_loglevel	"notice"	production	puppet_enterprise::profile::bolt_server	f
master_host	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::bolt_server	f
ssl_listen_port	"$puppet_enterprise::bolt_server_port"	production	puppet_enterprise::profile::bolt_server	f
settings	{}	production	puppet_enterprise::profile::bolt_server	f
ssl_cipher_suites	"$puppet_enterprise::params::secure_ciphers"	production	puppet_enterprise::profile::bolt_server	f
whitelist	"[$certname]"	production	puppet_enterprise::profile::bolt_server	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::bolt_server	f
master_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::profile::bolt_server	f
run_service	true	production	puppet_enterprise::profile::bolt_server	f
client_whitelist	[]	production	puppet_enterprise::profile::certificate_authority	f
enable_infra_crl	true	production	puppet_enterprise::profile::certificate_authority	f
java_args	"$puppet_enterprise::params::console_services_java_args"	production	puppet_enterprise::profile::console	f
console_services_api_ssl_listen_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::console	f
rbac_database_name	"$puppet_enterprise::rbac_database_name"	production	puppet_enterprise::profile::console	f
classifier_synchronization_period	"$puppet_enterprise::params::classifier_synchronization_period"	production	puppet_enterprise::profile::console	f
hostcrl	"$puppet_enterprise::params::hostcrl"	production	puppet_enterprise::profile::console	f
rbac_token_auth_lifetime	"1h"	production	puppet_enterprise::profile::console	f
rbac_account_expiry_check_minutes	"undef"	production	puppet_enterprise::profile::console	f
database_host	"$puppet_enterprise::console_database_host"	production	puppet_enterprise::profile::console	f
classifier_database_migration_user	"$puppet_enterprise::classifier_service_migration_db_user"	production	puppet_enterprise::profile::console	f
rbac_ds_trust_chain	"undef"	production	puppet_enterprise::profile::console	f
puppetdb_host	"$puppet_enterprise::puppetdb_hosts_array"	production	puppet_enterprise::profile::console	f
classifier_database_name	"$puppet_enterprise::classifier_database_name"	production	puppet_enterprise::profile::console	f
activity_url_prefix	"$puppet_enterprise::params::activity_url_prefix"	production	puppet_enterprise::profile::console	f
console_services_api_listen_port	"$puppet_enterprise::params::console_services_api_listen_port"	production	puppet_enterprise::profile::console	f
activity_database_name	"$puppet_enterprise::activity_database_name"	production	puppet_enterprise::profile::console	f
database_port	"$puppet_enterprise::database_port"	production	puppet_enterprise::profile::console	f
classifier_database_user	"$puppet_enterprise::classifier_service_regular_db_user"	production	puppet_enterprise::profile::console	f
console_ssl_listen_port	"$puppet_enterprise::console_port"	production	puppet_enterprise::profile::console	f
master_host	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::console	f
classifier_prune_threshold	"$puppet_enterprise::params::classifier_prune_threshold"	production	puppet_enterprise::profile::console	f
activity_database_user	"$puppet_enterprise::activity_service_regular_db_user"	production	puppet_enterprise::profile::console	f
disable_live_management	true	production	puppet_enterprise::profile::console	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::profile::console	f
activity_database_migration_user	"$puppet_enterprise::activity_service_migration_db_user"	production	puppet_enterprise::profile::console	f
ssl_listen_address_url_safe	"$puppet_enterprise::params::ssl_address_url_safe"	production	puppet_enterprise::profile::console	f
classifier_node_check_in_storage	false	production	puppet_enterprise::profile::console	f
browser_ssl_cert	"\\"${puppet_enterprise::server_data_dir}/console-services/certs/console-cert.cert.pem\\""	production	puppet_enterprise::profile::console	f
database_properties	"$puppet_enterprise::database_properties"	production	puppet_enterprise::profile::console	f
rbac_failed_attempts_lockout	"undef"	production	puppet_enterprise::profile::console	f
rbac_account_expiry_days	"undef"	production	puppet_enterprise::profile::console	f
console_services_service_alert_timeout	"undef"	production	puppet_enterprise::profile::console	f
replication_mode	"none"	production	puppet_enterprise::profile::console	f
classifier_database_password	"$puppet_enterprise::classifier_database_password"	production	puppet_enterprise::profile::console	f
rbac_token_maximum_lifetime	"10y"	production	puppet_enterprise::profile::console	f
rbac_database_user	"$puppet_enterprise::rbac_service_regular_db_user"	production	puppet_enterprise::profile::console	f
display_local_time	false	production	puppet_enterprise::profile::console	f
listen_address	"$puppet_enterprise::params::plaintext_address"	production	puppet_enterprise::profile::console	f
dashboard_database_name	"undef"	production	puppet_enterprise::profile::console	f
migrate_db	false	production	puppet_enterprise::profile::console	f
console_services_plaintext_status_port	8123	production	puppet_enterprise::profile::console	f
pcp_timeout	5	production	puppet_enterprise::profile::console	f
classifier_allow_config_data	"$puppet_enterprise::params::classifier_allow_config_data"	production	puppet_enterprise::profile::console	f
master_certname	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::console	f
session_maximum_lifetime	"undef"	production	puppet_enterprise::profile::console	f
browser_ssl_private_key	"\\"${puppet_enterprise::server_data_dir}/console-services/certs/console-cert.private_key.pem\\""	production	puppet_enterprise::profile::console	f
ca_host	"$puppet_enterprise::certificate_authority_host"	production	puppet_enterprise::profile::console	f
dashboard_database_password	"undef"	production	puppet_enterprise::profile::console	f
console_services_ssl_listen_port	"$puppet_enterprise::params::console_services_ssl_listen_port"	production	puppet_enterprise::profile::console	f
rbac_database_password	"$puppet_enterprise::rbac_database_password"	production	puppet_enterprise::profile::console	f
rbac_database_migration_user	"$puppet_enterprise::rbac_service_migration_db_user"	production	puppet_enterprise::profile::console	f
activity_database_password	"$puppet_enterprise::activity_database_password"	production	puppet_enterprise::profile::console	f
dashboard_database_user	"undef"	production	puppet_enterprise::profile::console	f
proxy_read_timeout	120	production	puppet_enterprise::profile::console	f
dashboard_listen_port	"undef"	production	puppet_enterprise::profile::console	f
dashboard_ssl_listen_port	"undef"	production	puppet_enterprise::profile::console	f
rbac_password_reset_expiration	"undef"	production	puppet_enterprise::profile::console	f
rbac_session_timeout	"undef"	production	puppet_enterprise::profile::console	f
delayed_job_workers	2	production	puppet_enterprise::profile::console	f
listen_address_url_safe	"$puppet_enterprise::params::plaintext_address_url_safe"	production	puppet_enterprise::profile::console	f
classifier_url_prefix	"$puppet_enterprise::params::classifier_url_prefix"	production	puppet_enterprise::profile::console	f
whitelisted_certnames	[]	production	puppet_enterprise::profile::console	f
console_services_listen_port	"$puppet_enterprise::params::console_services_listen_port"	production	puppet_enterprise::profile::console	f
rbac_url_prefix	"$puppet_enterprise::params::rbac_url_prefix"	production	puppet_enterprise::profile::console	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::console	f
puppetdb_port	"$puppet_enterprise::puppetdb_ports_array"	production	puppet_enterprise::profile::console	f
master_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::profile::console	f
send_analytics_data	"$puppet_enterprise::send_analytics_data"	production	puppet_enterprise::profile::console	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::profile::console	f
console_services_plaintext_status_enabled	false	production	puppet_enterprise::profile::console	f
cache_whitelist	{}	production	puppet_enterprise::profile::console::cache	f
cache_size_bytes	"undef"	production	puppet_enterprise::profile::console::cache	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::console::certs	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::profile::console::certs	f
hostcrl	"$puppet_enterprise::params::hostcrl"	production	puppet_enterprise::profile::console::certs	f
api_listen_port	"$puppet_enterprise::params::console_services_api_listen_port"	production	puppet_enterprise::profile::console::console_services_config	f
activity_url_prefix	"$puppet_enterprise::activity_url_prefix"	production	puppet_enterprise::profile::console::console_services_config	f
tk_jetty_max_threads_console	"undef"	production	puppet_enterprise::profile::console::console_services_config	f
tk_jetty_max_threads_api	"undef"	production	puppet_enterprise::profile::console::console_services_config	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::profile::console::console_services_config	f
ssl_listen_port	"$puppet_enterprise::params::console_services_ssl_listen_port"	production	puppet_enterprise::profile::console::console_services_config	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::profile::console::console_services_config	f
ssl_listen_address_url_safe	"$puppet_enterprise::params::ssl_address_url_safe"	production	puppet_enterprise::profile::console::console_services_config	f
status_proxy_enabled	false	production	puppet_enterprise::profile::console::console_services_config	f
replication_mode	"none"	production	puppet_enterprise::profile::console::console_services_config	f
listen_port	"$puppet_enterprise::params::console_services_listen_port"	production	puppet_enterprise::profile::console::console_services_config	f
tk_jetty_request_header_max_size	65536	production	puppet_enterprise::profile::console::console_services_config	f
listen_address	"$puppet_enterprise::params::plaintext_address"	production	puppet_enterprise::profile::console::console_services_config	f
api_ssl_listen_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::console::console_services_config	f
status_proxy_port	8123	production	puppet_enterprise::profile::console::console_services_config	f
listen_address_url_safe	"$puppet_enterprise::params::plaintext_address_url_safe"	production	puppet_enterprise::profile::console::console_services_config	f
classifier_url_prefix	"$puppet_enterprise::classifier_url_prefix"	production	puppet_enterprise::profile::console::console_services_config	f
rbac_url_prefix	"$puppet_enterprise::rbac_url_prefix"	production	puppet_enterprise::profile::console::console_services_config	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::console::console_services_config	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::profile::console::console_services_config	f
ip_version	"$puppet_enterprise::params::ip_version"	production	puppet_enterprise::profile::console::proxy	f
ssl_prefer_server_ciphers	"on"	production	puppet_enterprise::profile::console::proxy	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::profile::console::proxy	f
ssl_listen_port	"$puppet_enterprise::console_port"	production	puppet_enterprise::profile::console::proxy	f
ssl_ciphers	"$puppet_enterprise::params::browser_ciphers"	production	puppet_enterprise::profile::console::proxy	f
ssl_session_timeout	"1d"	production	puppet_enterprise::profile::console::proxy	f
ssl_verify_client	"off"	production	puppet_enterprise::profile::console::proxy	f
browser_ssl_cert	"undef"	production	puppet_enterprise::profile::console::proxy	f
dhparam_file	"/etc/puppetlabs/nginx/dhparam_puppetproxy.pem"	production	puppet_enterprise::profile::console::proxy	f
replication_mode	"none"	production	puppet_enterprise::profile::console::proxy	f
trapperkeeper_proxy_listen_address	"$puppet_enterprise::params::plaintext_address_url_safe"	production	puppet_enterprise::profile::console::proxy	f
ssl_session_cache	"shared:SSL:50m"	production	puppet_enterprise::profile::console::proxy	f
browser_ssl_private_key	"undef"	production	puppet_enterprise::profile::console::proxy	f
ssl_verify_depth	1	production	puppet_enterprise::profile::console::proxy	f
browser_ssl_cert_ttl	824	production	puppet_enterprise::profile::console::proxy	f
server_name	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::console::proxy	f
nginx_gzip	"on"	production	puppet_enterprise::profile::console::proxy	f
proxy_read_timeout	120	production	puppet_enterprise::profile::console::proxy	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::console::proxy	f
trapperkeeper_proxy_listen_port	"$puppet_enterprise::params::console_services_listen_port"	production	puppet_enterprise::profile::console::proxy	f
ipv6_only	"$puppet_enterprise::params::ipv6_only"	production	puppet_enterprise::profile::console::proxy	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address_url_safe"	production	puppet_enterprise::profile::console::proxy	f
ssl_listen_port	null	production	puppet_enterprise::profile::console::proxy::http_redirect	f
enable_http_redirect	true	production	puppet_enterprise::profile::console::proxy::http_redirect	f
ipv6_only	"$puppet_enterprise::ipv6_only"	production	puppet_enterprise::profile::console::proxy::http_redirect	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address_url_safe"	production	puppet_enterprise::profile::console::proxy::http_redirect	f
server_name	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::console::proxy::http_redirect	f
replication_mode	"none"	production	puppet_enterprise::profile::console::proxy::http_redirect	f
gzip	null	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
nginx_config_file	"\\"${puppet_enterprise::nginx_conf_dir}/nginx.conf\\""	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
gzip_comp_level	5	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
gzip_min_length	256	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
gzip_proxied	"any"	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
gzip_vary	"on"	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
gzip_types	["application/atom+xml","application/javascript","application/json","application/ld+json","application/manifest+json","application/rss+xml","application/vnd.geo+json","application/vnd.ms-fontobject","application/x-font-ttf","application/x-web-app-manifest+json","application/xhtml+xml","application/xml","font/opentype","image/bmp","image/svg+xml","image/x-icon","text/cache-manifest","text/css","text/plain","text/vcard","text/vnd.rim.location.xloc","text/vtt","text/x-component","text/x-cross-domain-policy","text/javascript"]	production	puppet_enterprise::profile::console::proxy::nginx_conf	f
manage_puppet_code	true	production	puppet_enterprise::profile::controller	f
manage_orchestrator	true	production	puppet_enterprise::profile::controller	f
code_manager_url	"$puppet_enterprise::code_manager_url"	production	puppet_enterprise::profile::controller	f
orchestrator_url	"$puppet_enterprise::orchestrator_url"	production	puppet_enterprise::profile::controller	f
rbac_url	"$puppet_enterprise::rbac_url"	production	puppet_enterprise::profile::controller	f
puppetdb_hosts	"$puppet_enterprise::puppetdb_hosts_array"	production	puppet_enterprise::profile::controller	f
puppetdb_port	"$puppet_enterprise::puppetdb_ports_array"	production	puppet_enterprise::profile::controller	f
puppetdb_urls	"pe_format_urls('https',\\n                                                      $puppetdb_hosts,\\n                                                      $puppetdb_port)"	production	puppet_enterprise::profile::controller	f
rbac_database_read_user	"$puppet_enterprise::rbac_database_read_user"	production	puppet_enterprise::profile::database	f
checkpoint_segments	"undef"	production	puppet_enterprise::profile::database	f
console_database_name	"undef"	production	puppet_enterprise::profile::database	f
replica_hostnames	[]	production	puppet_enterprise::profile::database	f
encoding	"UTF8"	production	puppet_enterprise::profile::database	f
ipv6_mask_allow_all_users	"::/0"	production	puppet_enterprise::profile::database	f
puppetdb_database_password	"undef"	production	puppet_enterprise::profile::database	f
inventory_database_password	"undef"	production	puppet_enterprise::profile::database	f
rbac_database_name	"$puppet_enterprise::rbac_database_name"	production	puppet_enterprise::profile::database	f
log_autovacuum_min_duration	0	production	puppet_enterprise::profile::database	f
replication_source_hostname	""	production	puppet_enterprise::profile::database	f
orchestrator_database_read_user	"$puppet_enterprise::orchestrator_database_read_user"	production	puppet_enterprise::profile::database	f
classifier_database_write_user	"$puppet_enterprise::classifier_database_write_user"	production	puppet_enterprise::profile::database	f
log_disconnections	"on"	production	puppet_enterprise::profile::database	f
inventory_database_write_user	"$puppet_enterprise::inventory_database_write_user"	production	puppet_enterprise::profile::database	f
checkpoint_timeout	"10min"	production	puppet_enterprise::profile::database	f
classifier_database_name	"$puppet_enterprise::classifier_database_name"	production	puppet_enterprise::profile::database	f
inventory_database_name	"$puppet_enterprise::inventory_database_name"	production	puppet_enterprise::profile::database	f
orchestrator_database_super_user	"$puppet_enterprise::orchestrator_database_super_user"	production	puppet_enterprise::profile::database	f
inventory_database_super_user	"$puppet_enterprise::inventory_database_super_user"	production	puppet_enterprise::profile::database	f
autovacuum_max_workers	"pe_max( 3, pe_min( 8, $facts['processors']['count'] / 3))"	production	puppet_enterprise::profile::database	f
log_checkpoints	"on"	production	puppet_enterprise::profile::database	f
activity_database_name	"$puppet_enterprise::activity_database_name"	production	puppet_enterprise::profile::database	f
puppetdb_migrator_user	"$puppet_enterprise::params::puppetdb_migrator_user"	production	puppet_enterprise::profile::database	f
locale	"en_US.UTF-8"	production	puppet_enterprise::profile::database	f
classifier_database_user	"undef"	production	puppet_enterprise::profile::database	f
console_database_user	"undef"	production	puppet_enterprise::profile::database	f
orchestrator_database_user	"undef"	production	puppet_enterprise::profile::database	f
ip_mask_allow_all_users	"0.0.0.0/0"	production	puppet_enterprise::profile::database	f
inventory_database_user	"undef"	production	puppet_enterprise::profile::database	f
max_replication_slots	20	production	puppet_enterprise::profile::database	f
log_min_messages	"warning"	production	puppet_enterprise::profile::database	f
activity_database_write_user	"$puppet_enterprise::activity_database_write_user"	production	puppet_enterprise::profile::database	f
inventory_database_read_user	"$puppet_enterprise::inventory_database_read_user"	production	puppet_enterprise::profile::database	f
ssl_ciphers	"$puppet_enterprise::params::secure_ciphers"	production	puppet_enterprise::profile::database	f
orchestrator_database_password	"undef"	production	puppet_enterprise::profile::database	f
activity_database_user	"undef"	production	puppet_enterprise::profile::database	f
orchestrator_database_name	"$puppet_enterprise::orchestrator_database_name"	production	puppet_enterprise::profile::database	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::profile::database	f
rbac_database_write_user	"$puppet_enterprise::rbac_database_write_user"	production	puppet_enterprise::profile::database	f
log_connections	"on"	production	puppet_enterprise::profile::database	f
activity_database_read_user	"$puppet_enterprise::activity_database_read_user"	production	puppet_enterprise::profile::database	f
replication_mode	"none"	production	puppet_enterprise::profile::database	f
classifier_database_password	"undef"	production	puppet_enterprise::profile::database	f
rbac_database_user	"undef"	production	puppet_enterprise::profile::database	f
auto_explain_settings	{}	production	puppet_enterprise::profile::database	f
log_line_prefix	"%m [db:%d,sess:%c,pid:%p,vtid:%v,tid:%x] "	production	puppet_enterprise::profile::database	f
puppetdb_database_name	"$puppet_enterprise::puppetdb_database_name"	production	puppet_enterprise::profile::database	f
log_temp_files	"puppet_enterprise::calculate_log_temp_files($work_mem)"	production	puppet_enterprise::profile::database	f
shared_buffers	"$puppet_enterprise::params::shared_buffers"	production	puppet_enterprise::profile::database	f
additional_pg_hba_rules	{}	production	puppet_enterprise::profile::database	f
autovacuum_vacuum_scale_factor	0.08	production	puppet_enterprise::profile::database	f
ipv6_mask_allow_all_users_ssl	"::/0"	production	puppet_enterprise::profile::database	f
maintenance_work_mem	"\\"${facts['memory']['system']['total_bytes'] / 1024 / 1024 / 8}MB\\""	production	puppet_enterprise::profile::database	f
activity_database_super_user	"$puppet_enterprise::activity_database_super_user"	production	puppet_enterprise::profile::database	f
orchestrator_database_write_user	"$puppet_enterprise::orchestrator_database_write_user"	production	puppet_enterprise::profile::database	f
log_min_error_statement	"error"	production	puppet_enterprise::profile::database	f
classifier_database_super_user	"$puppet_enterprise::classifier_database_super_user"	production	puppet_enterprise::profile::database	f
effective_cache_size	"$puppet_enterprise::params::effective_cache_size"	production	puppet_enterprise::profile::database	f
puppetdb_database_user	"$puppet_enterprise::puppetdb_database_user"	production	puppet_enterprise::profile::database	f
database_listen_addresses	"$puppet_enterprise::params::database_listen_addresses"	production	puppet_enterprise::profile::database	f
max_wal_senders	20	production	puppet_enterprise::profile::database	f
ctype	"en_US.UTF-8"	production	puppet_enterprise::profile::database	f
shared_preload_libraries	"$puppet_enterprise::params::postgres_shared_preload_libraries"	production	puppet_enterprise::profile::database	f
console_database_password	"undef"	production	puppet_enterprise::profile::database	f
rbac_database_password	"undef"	production	puppet_enterprise::profile::database	f
console_hosts	"[ $puppet_enterprise::console_host ]"	production	puppet_enterprise::profile::database	f
autovacuum_analyze_scale_factor	0.04	production	puppet_enterprise::profile::database	f
replicating	"$puppet_enterprise::replicating"	production	puppet_enterprise::profile::database	f
checkpoint_completion_target	0.9	production	puppet_enterprise::profile::database	f
max_worker_processes	40	production	puppet_enterprise::profile::database	f
rbac_database_super_user	"$puppet_enterprise::rbac_database_super_user"	production	puppet_enterprise::profile::database	f
activity_database_password	"undef"	production	puppet_enterprise::profile::database	f
ip_mask_allow_all_users_ssl	"0.0.0.0/0"	production	puppet_enterprise::profile::database	f
puppetdb_hosts	"( puppet_enterprise::active_puppetdb_hosts() +\\n                                      pe_flatten([ $puppet_enterprise::puppetdb_hosts_array ])"	production	puppet_enterprise::profile::database	f
log_lock_waits	"on"	production	puppet_enterprise::profile::database	f
pcp_broker_hosts	"[ $puppet_enterprise::pcp_broker_host ]"	production	puppet_enterprise::profile::database	f
autovacuum_work_mem	"\\"${facts['memory']['system']['total_bytes'] / 1024 / 1024 / 8/ $autovacuum_max_workers}MB\\""	production	puppet_enterprise::profile::database	f
memorysize_in_bytes	"$puppet_enterprise::params::memorysize_in_bytes"	production	puppet_enterprise::profile::database	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::database	f
max_wal_size	6144	production	puppet_enterprise::profile::database	f
work_mem	"$puppet_enterprise::params::work_mem"	production	puppet_enterprise::profile::database	f
log_error_verbosity	"default"	production	puppet_enterprise::profile::database	f
classifier_database_read_user	"$puppet_enterprise::classifier_database_read_user"	production	puppet_enterprise::profile::database	f
max_connections	400	production	puppet_enterprise::profile::database	f
log_min_duration_statement	"$puppet_enterprise::params::log_min_duration_statement"	production	puppet_enterprise::profile::database	f
wal_level	"logical"	production	puppet_enterprise::profile::database	f
wal_buffers	"$puppet_enterprise::params::wal_buffers"	production	puppet_enterprise::profile::database	f
collate	"en_US.UTF-8"	production	puppet_enterprise::profile::database	f
metrics_graphite_port	2003	production	puppet_enterprise::profile::master	f
java_args	"puppet_enterprise::calculate_puppetserver_java_args()"	production	puppet_enterprise::profile::master	f
classifier_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::master	f
app_management	"undef"	production	puppet_enterprise::profile::master	f
metrics_enabled	"undef"	production	puppet_enterprise::profile::master	f
puppetdb_host	"$puppet_enterprise::puppetdb_hosts_array"	production	puppet_enterprise::profile::master	f
code_content_command	"undef"	production	puppet_enterprise::profile::master	f
facts_terminus	"puppetdb"	production	puppet_enterprise::profile::master	f
classifier_client_certname	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::master	f
provisioned_replicas	[]	production	puppet_enterprise::profile::master	f
allow_unauthenticated_status	"$puppet_enterprise::allow_unauthenticated_status"	production	puppet_enterprise::profile::master	f
ssl_listen_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::profile::master	f
dashboard_port	"undef"	production	puppet_enterprise::profile::master	f
enable_future_parser	"undef"	production	puppet_enterprise::profile::master	f
r10k_private_key	"undef"	production	puppet_enterprise::profile::master	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::profile::master	f
r10k_proxy	"undef"	production	puppet_enterprise::profile::master	f
environmentpath	"undef"	production	puppet_enterprise::profile::master	f
code_id_command	"undef"	production	puppet_enterprise::profile::master	f
enable_ca_proxy	true	production	puppet_enterprise::profile::master	f
replication_mode	"none"	production	puppet_enterprise::profile::master	f
check_for_updates	true	production	puppet_enterprise::profile::master	f
metrics_graphite_update_interval_seconds	60	production	puppet_enterprise::profile::master	f
ca_port	"$puppet_enterprise::certificate_authority_port"	production	puppet_enterprise::profile::master	f
metrics_jmx_enabled	true	production	puppet_enterprise::profile::master	f
connect_timeout_milliseconds	"undef"	production	puppet_enterprise::profile::master	f
console_client_certname	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::master	f
manage_symlinks	"$puppet_enterprise::manage_symlinks"	production	puppet_enterprise::profile::master	f
allow_unauthenticated_ca	true	production	puppet_enterprise::profile::master	f
codedir	"undef"	production	puppet_enterprise::profile::master	f
profiler_enabled	true	production	puppet_enterprise::profile::master	f
ca_host	"$puppet_enterprise::certificate_authority_host"	production	puppet_enterprise::profile::master	f
orchestrator_client_certname	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::master	f
console_server_certname	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::master	f
metrics_server_id	"$facts['hostname']"	production	puppet_enterprise::profile::master	f
metrics_puppetserver_metrics_allowed	"undef"	production	puppet_enterprise::profile::master	f
classifier_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::master	f
r10k_git_provider	"undef"	production	puppet_enterprise::profile::master	f
ha_enabled_replicas	"$puppet_enterprise::ha_enabled_replicas"	production	puppet_enterprise::profile::master	f
metrics_graphite_enabled	false	production	puppet_enterprise::profile::master	f
classifier_url_prefix	"$puppet_enterprise::classifier_url_prefix"	production	puppet_enterprise::profile::master	f
metrics_graphite_host	"graphite"	production	puppet_enterprise::profile::master	f
file_sync_enabled	"automatic"	production	puppet_enterprise::profile::master	f
master_of_masters_certname	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::master	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::master	f
puppetdb_port	"$puppet_enterprise::puppetdb_ports_array"	production	puppet_enterprise::profile::master	f
r10k_remote	"undef"	production	puppet_enterprise::profile::master	f
r10k_postrun	"undef"	production	puppet_enterprise::profile::master	f
send_analytics_data	"$puppet_enterprise::send_analytics_data"	production	puppet_enterprise::profile::master	f
code_manager_auto_configure	false	production	puppet_enterprise::profile::master	f
console_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::master	f
versioned_deploys	false	production	puppet_enterprise::profile::master	f
console_client_certname	null	production	puppet_enterprise::profile::master::auth_conf	f
classifier_client_certname	null	production	puppet_enterprise::profile::master::auth_conf	f
orchestrator_client_certname	null	production	puppet_enterprise::profile::master::auth_conf	f
allow_unauthenticated_ca	null	production	puppet_enterprise::profile::master::auth_conf	f
allow_unauthenticated_status	null	production	puppet_enterprise::profile::master::auth_conf	f
classifier_host	null	production	puppet_enterprise::profile::master::classifier	f
classifier_port	null	production	puppet_enterprise::profile::master::classifier	f
classifier_url_prefix	null	production	puppet_enterprise::profile::master::classifier	f
node_terminus	"classifier"	production	puppet_enterprise::profile::master::classifier	f
user_clients	"undef"	production	puppet_enterprise::profile::master::mcollective	f
report_processor_ensure	"present"	production	puppet_enterprise::profile::master::puppetdb	f
puppetdb_host	null	production	puppet_enterprise::profile::master::puppetdb	f
facts_terminus	"puppetdb"	production	puppet_enterprise::profile::master::puppetdb	f
sticky_read_failover	true	production	puppet_enterprise::profile::master::puppetdb	f
command_broadcast	true	production	puppet_enterprise::profile::master::puppetdb	f
ha_enabled_replicas	"$puppet_enterprise::ha_enabled_replicas"	production	puppet_enterprise::profile::master::puppetdb	f
include_unchanged_resources	true	production	puppet_enterprise::profile::master::puppetdb	f
puppetdb_port	null	production	puppet_enterprise::profile::master::puppetdb	f
soft_write_failure	false	production	puppet_enterprise::profile::master::puppetdb	f
mco_loglevel	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
stomp_user	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
collectives	["mcollective"]	production	puppet_enterprise::profile::mcollective::agent	f
allow_no_actionpolicy	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
main_collective	"mcollective"	production	puppet_enterprise::profile::mcollective::agent	f
allowed_actions	{"package":["status","update","yum_clean","apt_update","yum_checkupdates","apt_checkupdates","checkupdates"]}	production	puppet_enterprise::profile::mcollective::agent	f
mco_arbitrary_server_config	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
activemq_brokers	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
mco_registerinterval	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
stomp_port	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
stomp_password	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
randomize_activemq	false	production	puppet_enterprise::profile::mcollective::agent	f
mco_fact_cache_time	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
manage_metadata_cron	true	production	puppet_enterprise::profile::mcollective::agent	f
mco_identity	"undef"	production	puppet_enterprise::profile::mcollective::agent	f
create_user	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
mco_loglevel	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
stomp_user	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
collectives	["mcollective"]	production	puppet_enterprise::profile::mcollective::peadmin	f
mco_discovery_timeout	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
main_collective	"mcollective"	production	puppet_enterprise::profile::mcollective::peadmin	f
home_dir	"/var/lib/peadmin"	production	puppet_enterprise::profile::mcollective::peadmin	f
mco_arbitrary_client_config	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
mco_publish_timeout	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
manage_symlinks	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
activemq_brokers	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
stomp_port	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
stomp_password	"undef"	production	puppet_enterprise::profile::mcollective::peadmin	f
randomize_activemq	false	production	puppet_enterprise::profile::mcollective::peadmin	f
database_user	"$puppet_enterprise::orchestrator_service_regular_db_user"	production	puppet_enterprise::profile::orchestrator	f
java_args	"$puppet_enterprise::params::orchestrator_java_args"	production	puppet_enterprise::profile::orchestrator	f
classifier_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::orchestrator	f
use_application_services	"$puppet_enterprise::use_application_services"	production	puppet_enterprise::profile::orchestrator	f
enable_gc_logging	"undef"	production	puppet_enterprise::profile::orchestrator	f
jruby_max_requests_per_instance	100000	production	puppet_enterprise::profile::orchestrator	f
database_host	"$puppet_enterprise::orchestrator_database_host"	production	puppet_enterprise::profile::orchestrator	f
puppetdb_host	"$puppet_enterprise::puppetdb_hosts_array"	production	puppet_enterprise::profile::orchestrator	f
rbac_prefix	"$puppet_enterprise::rbac_url_prefix"	production	puppet_enterprise::profile::orchestrator	f
reserved_code_cache	"undef"	production	puppet_enterprise::profile::orchestrator	f
rbac_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::orchestrator	f
jruby_compile_mode	"jit"	production	puppet_enterprise::profile::orchestrator	f
database_port	"$puppet_enterprise::database_port"	production	puppet_enterprise::profile::orchestrator	f
pcp_listen_port	"$puppet_enterprise::pcp_broker_port"	production	puppet_enterprise::profile::orchestrator	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::profile::orchestrator	f
inventory_prefix	"$puppet_enterprise::inventory_url_prefix"	production	puppet_enterprise::profile::orchestrator	f
task_concurrency	"undef"	production	puppet_enterprise::profile::orchestrator	f
console_services_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::orchestrator	f
database_name	"$puppet_enterprise::orchestrator_database_name"	production	puppet_enterprise::profile::orchestrator	f
migrator_password	"undef"	production	puppet_enterprise::puppetdb::database_ini	f
allow_unauthenticated_status	"$puppet_enterprise::allow_unauthenticated_status"	production	puppet_enterprise::profile::orchestrator	f
database_migration_user	"$puppet_enterprise::orchestrator_service_migration_db_user"	production	puppet_enterprise::profile::orchestrator	f
master_host	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::orchestrator	f
ssl_listen_port	"$puppet_enterprise::orchestrator_port"	production	puppet_enterprise::profile::orchestrator	f
service_stop_retries	60	production	puppet_enterprise::profile::orchestrator	f
jruby_max_active_instances	"pe_max(Integer(puppet_enterprise::memorysize_to_megabytes($java_args['Xmx']) / 1024), 1)"	production	puppet_enterprise::profile::orchestrator	f
database_properties	"$puppet_enterprise::database_properties"	production	puppet_enterprise::profile::orchestrator	f
jruby_borrow_timeout	"undef"	production	puppet_enterprise::profile::orchestrator	f
ace_server_max_connections	"$puppet_enterprise::ace_server_concurrency"	production	puppet_enterprise::profile::orchestrator	f
database_password	"$puppet_enterprise::orchestrator_database_password"	production	puppet_enterprise::profile::orchestrator	f
activity_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::orchestrator	f
classifier_prefix	"$puppet_enterprise::classifier_url_prefix"	production	puppet_enterprise::profile::orchestrator	f
pcp_timeout	"undef"	production	puppet_enterprise::profile::orchestrator	f
console_services_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::orchestrator	f
pcp_delivery_consumers	"$puppet_enterprise::params::pcp_broker_delivery_consumers"	production	puppet_enterprise::profile::orchestrator	f
job_prune_threshold	"undef"	production	puppet_enterprise::profile::orchestrator	f
activity_prefix	"$puppet_enterprise::activity_url_prefix"	production	puppet_enterprise::profile::orchestrator	f
bolt_server_max_connections	"$puppet_enterprise::bolt_server_concurrency"	production	puppet_enterprise::profile::orchestrator	f
start_timeout	300	production	puppet_enterprise::profile::orchestrator	f
inventory_port	"$puppet_enterprise::orchestrator_port"	production	puppet_enterprise::profile::orchestrator	f
classifier_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::orchestrator	f
jruby_multithreaded	false	production	puppet_enterprise::profile::orchestrator	f
activity_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::orchestrator	f
djava_io_tmpdir	"undef"	production	puppet_enterprise::profile::orchestrator	f
global_concurrent_compiles	"undef"	production	puppet_enterprise::profile::orchestrator	f
pcp_accept_consumers	"$puppet_enterprise::params::pcp_broker_accept_consumers"	production	puppet_enterprise::profile::orchestrator	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::orchestrator	f
puppetdb_port	"$puppet_enterprise::puppetdb_ports_array"	production	puppet_enterprise::profile::orchestrator	f
master_port	"$puppet_enterprise::puppet_master_port"	production	puppet_enterprise::profile::orchestrator	f
rbac_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::orchestrator	f
run_service	true	production	puppet_enterprise::profile::orchestrator	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::profile::orchestrator	f
console_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::orchestrator	f
enable_file_sync_client	"$puppet_enterprise::profile::master::code_manager_auto_configure"	production	puppet_enterprise::profile::plan_executor	f
enable	true	production	puppet_enterprise::profile::plan_executor	f
file_sync_stream_file_threshold	1024	production	puppet_enterprise::profile::plan_executor	f
file_sync_data_dir	"/opt/puppetlabs/server/data/orchestration-services/data-dir/"	production	puppet_enterprise::profile::plan_executor	f
environmentpath	"undef"	production	puppet_enterprise::profile::plan_executor	f
file_sync_enable_forceful_sync	true	production	puppet_enterprise::profile::plan_executor	f
codedir	"undef"	production	puppet_enterprise::profile::plan_executor	f
enable_file_sync_locking	true	production	puppet_enterprise::profile::plan_executor	f
basemodulepath	"undef"	production	puppet_enterprise::profile::plan_executor	f
orchestrator_url	"$puppet_enterprise::orchestrator_url"	production	puppet_enterprise::profile::plan_executor	f
file_sync_live_dir	"/opt/puppetlabs/server/data/orchestration-services/code/"	production	puppet_enterprise::profile::plan_executor	f
file_sync_poll_interval	5	production	puppet_enterprise::profile::plan_executor	f
database_host_puppetdb	"$facts['clientcert']"	production	puppet_enterprise::profile::primary_master_replica	f
node_ttl	"$puppet_enterprise::params::puppetdb_node_ttl"	production	puppet_enterprise::profile::puppetdb	f
database_user	"$puppet_enterprise::puppetdb_database_user"	production	puppet_enterprise::profile::puppetdb	f
java_args	"$puppet_enterprise::params::puppetdb_java_args"	production	puppet_enterprise::profile::puppetdb	f
confdir	"$puppet_enterprise::params::puppetdb_confdir"	production	puppet_enterprise::profile::puppetdb	f
syncing	"$puppet_enterprise::replicating"	production	puppet_enterprise::profile::puppetdb	f
auto_configure_sync	"undef"	production	puppet_enterprise::profile::puppetdb	f
database_host	"$puppet_enterprise::puppetdb_database_host"	production	puppet_enterprise::profile::puppetdb	f
rbac_prefix	"$puppet_enterprise::rbac_url_prefix"	production	puppet_enterprise::profile::puppetdb	f
sync_peers	"undef"	production	puppet_enterprise::profile::puppetdb	f
rbac_port	"$puppet_enterprise::api_port"	production	puppet_enterprise::profile::puppetdb	f
database_port	"$puppet_enterprise::database_port"	production	puppet_enterprise::profile::puppetdb	f
sync_whitelist	[]	production	puppet_enterprise::profile::puppetdb	f
database_name	"$puppet_enterprise::puppetdb_database_name"	production	puppet_enterprise::profile::puppetdb	f
ssl_listen_port	"$puppet_enterprise::puppetdb_port"	production	puppet_enterprise::profile::puppetdb	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::profile::puppetdb	f
database_properties	"$puppet_enterprise::database_properties"	production	puppet_enterprise::profile::puppetdb	f
node_purge_ttl	"undef"	production	puppet_enterprise::profile::puppetdb	f
database_password	"$puppet_enterprise::puppetdb_database_password"	production	puppet_enterprise::profile::puppetdb	f
listen_port	"$puppet_enterprise::params::puppetdb_listen_port"	production	puppet_enterprise::profile::puppetdb	f
listen_address	"$puppet_enterprise::params::plaintext_address"	production	puppet_enterprise::profile::puppetdb	f
master_certname	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::profile::puppetdb	f
report_ttl	"$puppet_enterprise::params::puppetdb_report_ttl"	production	puppet_enterprise::profile::puppetdb	f
gc_interval	"$puppet_enterprise::params::puppetdb_gc_interval"	production	puppet_enterprise::profile::puppetdb	f
whitelisted_certnames	[]	production	puppet_enterprise::profile::puppetdb	f
certname	"$facts['clientcert']"	production	puppet_enterprise::profile::puppetdb	f
rbac_host	"$puppet_enterprise::console_host"	production	puppet_enterprise::profile::puppetdb	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::profile::puppetdb	f
node_ttl	"$puppet_enterprise::params::puppetdb_node_ttl"	production	puppet_enterprise::puppetdb	f
concurrent_writes	"pe_clamp(1, $command_processing_threads, 4)"	production	puppet_enterprise::puppetdb	f
database_user	"$puppet_enterprise::params::puppetdb_database_user"	production	puppet_enterprise::puppetdb	f
java_args	"$puppet_enterprise::params::puppetdb_java_args"	production	puppet_enterprise::puppetdb	f
confdir	"$puppet_enterprise::params::puppetdb_confdir"	production	puppet_enterprise::puppetdb	f
syncing	true	production	puppet_enterprise::puppetdb	f
write_maximum_pool_size	"$command_processing_threads * 2"	production	puppet_enterprise::puppetdb	f
enable_gc_logging	"undef"	production	puppet_enterprise::puppetdb	f
auto_configure_sync	"undef"	production	puppet_enterprise::puppetdb	f
database_host	null	production	puppet_enterprise::puppetdb	f
sync_peers	"undef"	production	puppet_enterprise::puppetdb	f
database_port	"$puppet_enterprise::database_port"	production	puppet_enterprise::puppetdb	f
read_database_user	"$database_user"	production	puppet_enterprise::puppetdb	f
database_name	"$puppet_enterprise::params::puppetdb_database_name"	production	puppet_enterprise::puppetdb	f
command_processing_threads	"puppet_enterprise::calculate_puppetdb_command_processing_threads()"	production	puppet_enterprise::puppetdb	f
migrate	"$puppet_enterprise::params::puppetdb_migrate"	production	puppet_enterprise::puppetdb	f
ssl_listen_port	"$puppet_enterprise::params::puppetdb_ssl_listen_port"	production	puppet_enterprise::puppetdb	f
service_stop_retries	60	production	puppet_enterprise::puppetdb	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::puppetdb	f
cert_whitelist_path	null	production	puppet_enterprise::puppetdb	f
database_properties	""	production	puppet_enterprise::puppetdb	f
node_purge_ttl	"undef"	production	puppet_enterprise::puppetdb	f
migrator_password	"undef"	production	puppet_enterprise::puppetdb	f
database_password	"undef"	production	puppet_enterprise::puppetdb	f
read_database_password	"$database_password"	production	puppet_enterprise::puppetdb	f
listen_port	"$puppet_enterprise::params::puppetdb_listen_port"	production	puppet_enterprise::puppetdb	f
listen_address	"$puppet_enterprise::params::plaintext_address"	production	puppet_enterprise::puppetdb	f
read_database_host	"$database_host"	production	puppet_enterprise::puppetdb	f
read_database_port	"Integer($database_port)"	production	puppet_enterprise::puppetdb	f
read_database_name	"$database_name"	production	puppet_enterprise::puppetdb	f
start_timeout	900	production	puppet_enterprise::puppetdb	f
read_maximum_pool_size	"puppet_enterprise::calculate_puppetdb_read_maximum_pool_size(\\n                                                                  $command_processing_threads)"	production	puppet_enterprise::puppetdb	f
report_ttl	"$puppet_enterprise::params::puppetdb_report_ttl"	production	puppet_enterprise::puppetdb	f
gc_interval	"$puppet_enterprise::params::puppetdb_gc_interval"	production	puppet_enterprise::puppetdb	f
read_database_properties	"$database_properties"	production	puppet_enterprise::puppetdb	f
certname	"$facts['clientcert']"	production	puppet_enterprise::puppetdb	f
migrator_user	"$puppet_enterprise::params::puppetdb_migrator_user"	production	puppet_enterprise::puppetdb	f
rbac_url	"undef"	production	puppet_enterprise::puppetdb	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::puppetdb	f
confdir	null	production	puppet_enterprise::puppetdb::config_ini	f
command_processing_threads	null	production	puppet_enterprise::puppetdb::config_ini	f
concurrent_writes	null	production	puppet_enterprise::puppetdb::config_ini	f
node_ttl	"$puppet_enterprise::params::puppetdb_node_ttl"	production	puppet_enterprise::puppetdb::database_ini	f
database_user	"$puppet_enterprise::params::puppetdb_database_user"	production	puppet_enterprise::puppetdb::database_ini	f
confdir	"$puppet_enterprise::params::puppetdb_confdir"	production	puppet_enterprise::puppetdb::database_ini	f
write_maximum_pool_size	null	production	puppet_enterprise::puppetdb::database_ini	f
facts_blacklist	[]	production	puppet_enterprise::puppetdb::database_ini	f
database_host	null	production	puppet_enterprise::puppetdb::database_ini	f
database_port	null	production	puppet_enterprise::puppetdb::database_ini	f
database_name	"$puppet_enterprise::params::puppetdb_database_name"	production	puppet_enterprise::puppetdb::database_ini	f
migrate	"$puppet_enterprise::params::puppetdb_migrate"	production	puppet_enterprise::puppetdb::database_ini	f
database_properties	""	production	puppet_enterprise::puppetdb::database_ini	f
facts_blacklist_type	"literal"	production	puppet_enterprise::puppetdb::database_ini	f
node_purge_ttl	"undef"	production	puppet_enterprise::puppetdb::database_ini	f
database_password	"undef"	production	puppet_enterprise::puppetdb::database_ini	f
report_ttl	"$puppet_enterprise::params::puppetdb_report_ttl"	production	puppet_enterprise::puppetdb::database_ini	f
gc_interval	"$puppet_enterprise::params::puppetdb_gc_interval"	production	puppet_enterprise::puppetdb::database_ini	f
migrator_user	"$puppet_enterprise::params::puppetdb_migrator_user"	production	puppet_enterprise::puppetdb::database_ini	f
resource_events_ttl	"undef"	production	puppet_enterprise::puppetdb::database_ini	f
confdir	"$puppet_enterprise::params::puppetdb_confdir"	production	puppet_enterprise::puppetdb::jetty_ini	f
ssl_dir	"$puppet_enterprise::params::puppetdb_ssl_dir"	production	puppet_enterprise::puppetdb::jetty_ini	f
cipher_suites	"pe_join($puppet_enterprise::ssl_cipher_suites, ',')"	production	puppet_enterprise::puppetdb::jetty_ini	f
ssl_protocols	"$puppet_enterprise::ssl_protocols"	production	puppet_enterprise::puppetdb::jetty_ini	f
ssl_listen_port	"$puppet_enterprise::params::puppetdb_ssl_listen_port"	production	puppet_enterprise::puppetdb::jetty_ini	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::puppetdb::jetty_ini	f
cert_whitelist_path	null	production	puppet_enterprise::puppetdb::jetty_ini	f
listen_port	"$puppet_enterprise::params::puppetdb_listen_port"	production	puppet_enterprise::puppetdb::jetty_ini	f
tk_jetty_request_header_max_size	65536	production	puppet_enterprise::puppetdb::jetty_ini	f
listen_address	"$puppet_enterprise::params::plaintext_address"	production	puppet_enterprise::puppetdb::jetty_ini	f
tk_jetty_max_threads	"undef"	production	puppet_enterprise::puppetdb::jetty_ini	f
certname	"$puppet_enterprise::puppetdb::certname"	production	puppet_enterprise::puppetdb::jetty_ini	f
ssl_listen_address	"$puppet_enterprise::params::ssl_address"	production	puppet_enterprise::puppetdb::jetty_ini	f
certname	null	production	puppet_enterprise::puppetdb::rbac_consumer_conf	f
confdir	null	production	puppet_enterprise::puppetdb::rbac_consumer_conf	f
localcacert	null	production	puppet_enterprise::puppetdb::rbac_consumer_conf	f
rbac_url	"undef"	production	puppet_enterprise::puppetdb::rbac_consumer_conf	f
ssl_dir	"$puppet_enterprise::params::puppetdb_ssl_dir"	production	puppet_enterprise::puppetdb::rbac_consumer_conf	f
peers	null	production	puppet_enterprise::puppetdb::sync_ini	f
confdir	"$puppet_enterprise::params::puppetdb_confdir"	production	puppet_enterprise::puppetdb::sync_ini	f
entity_time_limit	"undef"	production	puppet_enterprise::puppetdb::sync_ini	f
initial_report_threshold	"undef"	production	puppet_enterprise::puppetdb::sync_ini	f
extra_options	{}	production	puppet_enterprise::pxp_agent	f
pcp_version	"undef"	production	puppet_enterprise::pxp_agent	f
ping_interval	"undef"	production	puppet_enterprise::pxp_agent	f
broker_proxy	"undef"	production	puppet_enterprise::pxp_agent	f
task_download_connect_timeout	"undef"	production	puppet_enterprise::pxp_agent	f
master_uris	"undef"	production	puppet_enterprise::pxp_agent	f
pxp_logfile	"undef"	production	puppet_enterprise::pxp_agent	f
pxp_loglevel	"info"	production	puppet_enterprise::pxp_agent	f
master_proxy	"undef"	production	puppet_enterprise::pxp_agent	f
spool_dir_purge_ttl	"undef"	production	puppet_enterprise::pxp_agent	f
task_cache_dir_purge_ttl	"undef"	production	puppet_enterprise::pxp_agent	f
enabled	true	production	puppet_enterprise::pxp_agent	f
task_download_timeout	"undef"	production	puppet_enterprise::pxp_agent	f
broker_ws_uri	null	production	puppet_enterprise::pxp_agent	f
enabled	true	production	puppet_enterprise::pxp_agent::service	f
pe_ver	null	production	puppet_enterprise::repo	f
manage	true	production	puppet_enterprise::repo	f
installing	"undef"	production	puppet_enterprise::repo	f
pe_ver	null	production	puppet_enterprise::repo::config	f
master	"$::puppet_enterprise::puppet_master_host"	production	puppet_enterprise::repo::config	f
manage	"undef"	production	puppet_enterprise::repo::config	f
manage_symlinks	"$puppet_enterprise::manage_symlinks"	production	puppet_enterprise::symlinks	f
container	null	production	puppet_enterprise::trapperkeeper::analytics	f
datadir	"/opt/puppetlabs/server/data/analytics/"	production	puppet_enterprise::trapperkeeper::analytics	f
database_user	"$puppet_enterprise::inventory_service_regular_db_user"	production	puppet_enterprise::trapperkeeper::inventory	f
database_host	"$puppet_enterprise::inventory_database_host"	production	puppet_enterprise::trapperkeeper::inventory	f
group	"\\"pe-${container}\\""	production	puppet_enterprise::trapperkeeper::inventory	f
database_port	"$puppet_enterprise::database_port"	production	puppet_enterprise::trapperkeeper::inventory	f
database_name	"$puppet_enterprise::inventory_database_name"	production	puppet_enterprise::trapperkeeper::inventory	f
database_migration_user	"$puppet_enterprise::inventory_service_migration_db_user"	production	puppet_enterprise::trapperkeeper::inventory	f
client_certname	"$puppet_enterprise::puppet_master_host"	production	puppet_enterprise::trapperkeeper::inventory	f
localcacert	"$puppet_enterprise::params::localcacert"	production	puppet_enterprise::trapperkeeper::inventory	f
database_properties	""	production	puppet_enterprise::trapperkeeper::inventory	f
database_password	"undef"	production	puppet_enterprise::trapperkeeper::inventory	f
puppetdb_url	null	production	puppet_enterprise::trapperkeeper::inventory	f
container	"orchestration-services"	production	puppet_enterprise::trapperkeeper::inventory	f
client_pem_key	null	production	puppet_enterprise::trapperkeeper::inventory	f
user	"\\"pe-${container}\\""	production	puppet_enterprise::trapperkeeper::inventory	f
client_cert	null	production	puppet_enterprise::trapperkeeper::inventory	f
\.


--
-- Data for Name: environment_classes; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.environment_classes (name, environment_name, deleted) FROM stdin;
pe_concat::setup	production	f
pe_infrastructure	production	f
pe_infrastructure::agent	production	f
pe_infrastructure::agent::meep	production	f
pe_infrastructure::agent::meep::run	production	f
pe_infrastructure::enterprise_conf_sync	production	f
pe_infrastructure::infrastructure	production	f
pe_infrastructure::infrastructure::agent	production	f
pe_infrastructure::infrastructure::sync	production	f
pe_infrastructure::puppet_infra_shims	production	f
pe_infrastructure::stages	production	f
pe_install	production	f
pe_install::install	production	f
pe_install::install::classification	production	f
pe_install::install::ssldir	production	f
pe_install::params	production	f
pe_install::prepare	production	f
pe_install::prepare::certificates	production	f
pe_install::prepare::puppet_config	production	f
pe_install::upgrade::clear_cached_catalogs	production	f
pe_install::upgrade::postgres	production	f
pe_install::upgrade::puppetdb	production	f
pe_install::upgrade::remove_logrotate_config_for_tk_services	production	f
pe_install::upgrade::rollback_postgres_migration	production	f
pe_install::upgrade::stop_services	production	f
pe_install::validate	production	f
pe_nginx	production	f
pe_nginx::params	production	f
pe_patch	production	f
pe_patch::cleanup_os_patching	production	f
pe_postgresql::client	production	f
pe_postgresql::globals	production	f
pe_postgresql::lib::devel	production	f
pe_postgresql::lib::java	production	f
pe_postgresql::lib::perl	production	f
pe_postgresql::lib::python	production	f
pe_postgresql::params	production	f
pe_postgresql::repo	production	f
pe_postgresql::repo::yum_postgresql_org	production	f
pe_postgresql::server	production	f
pe_postgresql::server::config	production	f
pe_postgresql::server::contrib	production	f
pe_postgresql::server::initdb	production	f
pe_postgresql::server::install	production	f
pe_postgresql::server::passwd	production	f
pe_postgresql::server::plperl	production	f
pe_postgresql::server::postgis	production	f
pe_postgresql::server::reload	production	f
pe_postgresql::server::service	production	f
pe_r10k	production	f
pe_r10k::config	production	f
pe_r10k::package	production	f
pe_r10k::params	production	f
pe_razor	production	f
pe_repo	production	f
pe_repo::bulk_pluginsync	production	f
pe_repo::platform::aix_61_power	production	f
pe_repo::platform::aix_71_power	production	f
pe_repo::platform::aix_power	production	f
pe_repo::platform::debian_10_amd64	production	f
pe_repo::platform::debian_8_amd64	production	f
pe_repo::platform::debian_8_i386	production	f
pe_repo::platform::debian_9_amd64	production	f
pe_repo::platform::debian_9_i386	production	f
pe_repo::platform::el_4_i386	production	f
pe_repo::platform::el_4_x86_64	production	f
pe_repo::platform::el_5_i386	production	f
pe_repo::platform::el_5_x86_64	production	f
pe_repo::platform::el_6_i386	production	f
pe_repo::platform::el_6_s390x	production	f
pe_repo::platform::el_6_x86_64	production	f
pe_repo::platform::el_7_aarch64	production	f
pe_repo::platform::el_7_ppc64le	production	f
pe_repo::platform::el_7_s390x	production	f
pe_repo::platform::el_7_x86_64	production	f
pe_repo::platform::el_8_x86_64	production	f
pe_repo::platform::fedora_26_x86_64	production	f
pe_repo::platform::fedora_27_x86_64	production	f
pe_repo::platform::fedora_28_x86_64	production	f
pe_repo::platform::fedora_29_x86_64	production	f
pe_repo::platform::fedora_30_x86_64	production	f
pe_repo::platform::fedora_31_x86_64	production	f
pe_repo::platform::osx_1012_x86_64	production	f
pe_repo::platform::osx_1013_x86_64	production	f
pe_repo::platform::osx_1014_x86_64	production	f
pe_repo::platform::osx_1015_x86_64	production	f
pe_repo::platform::osx_109_x86_64	production	f
pe_repo::platform::redhatfips_7_x86_64	production	f
pe_repo::platform::sles_11_i386	production	f
pe_repo::platform::sles_11_s390x	production	f
pe_repo::platform::sles_11_x86_64	production	f
pe_repo::platform::sles_12_ppc64le	production	f
pe_repo::platform::sles_12_s390x	production	f
pe_repo::platform::sles_12_x86_64	production	f
pe_repo::platform::sles_15_x86_64	production	f
pe_repo::platform::solaris_10_i386	production	f
pe_repo::platform::solaris_10_sparc	production	f
pe_repo::platform::solaris_11_i386	production	f
pe_repo::platform::solaris_11_sparc	production	f
pe_repo::platform::ubuntu_1404_amd64	production	f
pe_repo::platform::ubuntu_1404_i386	production	f
pe_repo::platform::ubuntu_1604_amd64	production	f
pe_repo::platform::ubuntu_1604_i386	production	f
pe_repo::platform::ubuntu_1604_ppc64el	production	f
pe_repo::platform::ubuntu_1804_amd64	production	f
pe_repo::platform::ubuntu_2004_amd64	production	f
pe_repo::platform::windows_i386	production	f
pe_repo::platform::windows_x86_64	production	f
pe_repo::platform::windowsfips_x86_64	production	f
pe_staging	production	f
puppet_enterprise	production	f
puppet_enterprise::certs::puppetdb_whitelist	production	f
puppet_enterprise::cli_config	production	f
puppet_enterprise::console_services	production	f
puppet_enterprise::license	production	f
puppet_enterprise::master	production	f
puppet_enterprise::master::code_manager	production	f
puppet_enterprise::master::file_sync	production	f
puppet_enterprise::master::file_sync_disabled	production	f
puppet_enterprise::master::installer_bolt	production	f
puppet_enterprise::master::meep	production	f
puppet_enterprise::master::pcp_broker	production	f
puppet_enterprise::master::puppetserver	production	f
puppet_enterprise::master::recover_configuration	production	f
puppet_enterprise::master::tk_authz	production	f
puppet_enterprise::packages	production	f
puppet_enterprise::params	production	f
puppet_enterprise::pg::pglogical::drop_orphaned_triggers	production	f
puppet_enterprise::postgresql::client	production	f
puppet_enterprise::postgresql::remove	production	f
puppet_enterprise::profile::ace_server	production	f
puppet_enterprise::profile::agent	production	f
puppet_enterprise::profile::amq::broker	production	f
puppet_enterprise::profile::amq::hub	production	f
puppet_enterprise::profile::bolt_server	production	f
puppet_enterprise::profile::certificate_authority	production	f
puppet_enterprise::profile::console	production	f
puppet_enterprise::profile::console::cache	production	f
puppet_enterprise::profile::console::certs	production	f
puppet_enterprise::profile::console::console_services_config	production	f
puppet_enterprise::profile::console::proxy	production	f
puppet_enterprise::profile::console::proxy::http_redirect	production	f
puppet_enterprise::profile::console::proxy::nginx_conf	production	f
puppet_enterprise::profile::controller	production	f
puppet_enterprise::profile::database	production	f
puppet_enterprise::profile::master	production	f
puppet_enterprise::profile::master::auth_conf	production	f
puppet_enterprise::profile::master::classifier	production	f
puppet_enterprise::profile::master::mcollective	production	f
puppet_enterprise::profile::master::puppetdb	production	f
puppet_enterprise::profile::mcollective::agent	production	f
puppet_enterprise::profile::mcollective::peadmin	production	f
puppet_enterprise::profile::orchestrator	production	f
puppet_enterprise::profile::plan_executor	production	f
puppet_enterprise::profile::primary_master_replica	production	f
puppet_enterprise::profile::puppetdb	production	f
puppet_enterprise::puppetdb	production	f
puppet_enterprise::puppetdb::config_ini	production	f
puppet_enterprise::puppetdb::database_ini	production	f
puppet_enterprise::puppetdb::jetty_ini	production	f
puppet_enterprise::puppetdb::rbac_consumer_conf	production	f
puppet_enterprise::puppetdb::service	production	f
puppet_enterprise::puppetdb::sync_ini	production	f
puppet_enterprise::pxp_agent	production	f
puppet_enterprise::pxp_agent::service	production	f
puppet_enterprise::repo	production	f
puppet_enterprise::repo::config	production	f
puppet_enterprise::stages	production	f
puppet_enterprise::symlinks	production	f
puppet_enterprise::trapperkeeper::analytics	production	f
puppet_enterprise::trapperkeeper::inventory	production	f
\.


--
-- Data for Name: environments; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.environments (name, deleted, sync_succeeded, etag) FROM stdin;
production	f	t	\N
\.


--
-- Data for Name: group_class_parameters; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.group_class_parameters (parameter, class_name, environment_name, group_id, value) FROM stdin;
\.


--
-- Data for Name: group_classes; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.group_classes (group_id, class_name, environment_name) FROM stdin;
\.


--
-- Data for Name: group_hiera_data; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.group_hiera_data (group_id, scope, key, value) FROM stdin;
\.


--
-- Data for Name: group_variables; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.group_variables (variable, group_id, value) FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.groups (id, name, environment_name, parent_id, description, environment_trumps, last_edited, serial_number) FROM stdin;
\.


--
-- Data for Name: last_sync; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.last_sync ("time", id) FROM stdin;
2020-10-25 02:55:17.378641-04	0
\.


--
-- Data for Name: node_check_ins; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.node_check_ins (node, "time", explanation, transaction_uuid, classification, idx) FROM stdin;
\.


--
-- Data for Name: rules; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.rules (id, match, group_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pe-classifier
--

COPY public.schema_migrations (id, applied, description) FROM stdin;
\.


--
-- Name: node_check_ins_idx_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-classifier
--

SELECT pg_catalog.setval('public.node_check_ins_idx_seq', 1, false);


--
-- Name: rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-classifier
--

SELECT pg_catalog.setval('public.rules_id_seq', 14, true);


--
-- Name: environment_class_parameters class_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.environment_class_parameters
    ADD CONSTRAINT class_parameters_pkey PRIMARY KEY (class_name, parameter, environment_name);


--
-- Name: environment_classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.environment_classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (name, environment_name);


--
-- Name: environments environments_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.environments
    ADD CONSTRAINT environments_pkey PRIMARY KEY (name);


--
-- Name: group_class_parameters group_class_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_class_parameters
    ADD CONSTRAINT group_class_parameters_pkey PRIMARY KEY (group_id, class_name, parameter);


--
-- Name: group_classes group_classes_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_classes
    ADD CONSTRAINT group_classes_pkey PRIMARY KEY (group_id, class_name);


--
-- Name: group_hiera_data group_hiera_data_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_hiera_data
    ADD CONSTRAINT group_hiera_data_pkey PRIMARY KEY (group_id, scope, key);


--
-- Name: group_variables group_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_variables
    ADD CONSTRAINT group_variables_pkey PRIMARY KEY (variable, group_id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: last_sync last_sync_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.last_sync
    ADD CONSTRAINT last_sync_pkey PRIMARY KEY (id);


--
-- Name: node_check_ins node_check_ins_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.node_check_ins
    ADD CONSTRAINT node_check_ins_pkey PRIMARY KEY (idx);


--
-- Name: rules rules_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.rules
    ADD CONSTRAINT rules_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (id);


--
-- Name: class_parameters_class_name_environment_name_parameter_idx; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE UNIQUE INDEX class_parameters_class_name_environment_name_parameter_idx ON public.environment_class_parameters USING btree (class_name, environment_name, parameter);


--
-- Name: classes_environment_name_name_idx; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE UNIQUE INDEX classes_environment_name_name_idx ON public.environment_classes USING btree (environment_name, name);


--
-- Name: group_variables_group_id_variable_value_idx; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE INDEX group_variables_group_id_variable_value_idx ON public.group_variables USING btree (group_id, variable, value);


--
-- Name: groups_id_environment_name_idx; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE UNIQUE INDEX groups_id_environment_name_idx ON public.groups USING btree (id, environment_name);


--
-- Name: groups_name_environment_name_idx; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE UNIQUE INDEX groups_name_environment_name_idx ON public.groups USING btree (name, environment_name);


--
-- Name: last_sync_one_row; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE UNIQUE INDEX last_sync_one_row ON public.last_sync USING btree ((true));


--
-- Name: node_check_ins_node_index; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE INDEX node_check_ins_node_index ON public.node_check_ins USING btree (node);


--
-- Name: node_check_ins_node_time_index; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE INDEX node_check_ins_node_time_index ON public.node_check_ins USING btree ("time");


--
-- Name: rules_group_id_idx; Type: INDEX; Schema: public; Owner: pe-classifier
--

CREATE UNIQUE INDEX rules_group_id_idx ON public.rules USING btree (group_id);


--
-- Name: environment_class_parameters class_parameters_class_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.environment_class_parameters
    ADD CONSTRAINT class_parameters_class_name_fkey FOREIGN KEY (class_name, environment_name) REFERENCES public.environment_classes(name, environment_name) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: environment_classes classes_environment_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.environment_classes
    ADD CONSTRAINT classes_environment_name_fkey FOREIGN KEY (environment_name) REFERENCES public.environments(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_class_parameters group_class_parameters_class_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_class_parameters
    ADD CONSTRAINT group_class_parameters_class_name_fkey FOREIGN KEY (class_name, environment_name, parameter) REFERENCES public.environment_class_parameters(class_name, environment_name, parameter) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_class_parameters group_class_parameters_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_class_parameters
    ADD CONSTRAINT group_class_parameters_group_id_fkey FOREIGN KEY (group_id, class_name) REFERENCES public.group_classes(group_id, class_name) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_class_parameters group_class_parameters_group_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_class_parameters
    ADD CONSTRAINT group_class_parameters_group_id_fkey1 FOREIGN KEY (group_id, environment_name) REFERENCES public.groups(id, environment_name) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_classes group_classes_class_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_classes
    ADD CONSTRAINT group_classes_class_name_fkey FOREIGN KEY (class_name, environment_name) REFERENCES public.environment_classes(name, environment_name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_classes group_classes_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_classes
    ADD CONSTRAINT group_classes_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_classes group_classes_group_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_classes
    ADD CONSTRAINT group_classes_group_id_fkey1 FOREIGN KEY (group_id, environment_name) REFERENCES public.groups(id, environment_name) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_hiera_data group_hiera_data_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_hiera_data
    ADD CONSTRAINT group_hiera_data_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_variables group_variables_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.group_variables
    ADD CONSTRAINT group_variables_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: groups groups_environment_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_environment_name_fkey FOREIGN KEY (environment_name) REFERENCES public.environments(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: groups groups_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.groups(id) ON UPDATE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rules rules_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-classifier
--

ALTER TABLE ONLY public.rules
    ADD CONSTRAINT rules_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.groups(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: DATABASE "pe-classifier"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-classifier" FROM PUBLIC;
GRANT CONNECT ON DATABASE "pe-classifier" TO "pe-classifier-read";
GRANT CONNECT ON DATABASE "pe-classifier" TO "pe-classifier-write";
GRANT TEMPORARY ON DATABASE "pe-classifier" TO PUBLIC;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: FUNCTION create_environment(environment text); Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT ALL ON FUNCTION public.create_environment(environment text) TO "pe-classifier-write";


--
-- Name: FUNCTION delete_environment(environment text); Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT ALL ON FUNCTION public.delete_environment(environment text) TO "pe-classifier-write";


--
-- Name: TABLE environment_class_parameters; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.environment_class_parameters TO "pe-classifier-read";
GRANT ALL ON TABLE public.environment_class_parameters TO "pe-classifier-write";


--
-- Name: TABLE environment_classes; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.environment_classes TO "pe-classifier-read";
GRANT ALL ON TABLE public.environment_classes TO "pe-classifier-write";


--
-- Name: TABLE environments; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.environments TO "pe-classifier-read";
GRANT ALL ON TABLE public.environments TO "pe-classifier-write";


--
-- Name: TABLE group_class_parameters; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.group_class_parameters TO "pe-classifier-read";
GRANT ALL ON TABLE public.group_class_parameters TO "pe-classifier-write";


--
-- Name: TABLE group_classes; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.group_classes TO "pe-classifier-read";
GRANT ALL ON TABLE public.group_classes TO "pe-classifier-write";


--
-- Name: TABLE group_hiera_data; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.group_hiera_data TO "pe-classifier-read";
GRANT ALL ON TABLE public.group_hiera_data TO "pe-classifier-write";


--
-- Name: TABLE group_variables; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.group_variables TO "pe-classifier-read";
GRANT ALL ON TABLE public.group_variables TO "pe-classifier-write";


--
-- Name: TABLE groups; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.groups TO "pe-classifier-read";
GRANT ALL ON TABLE public.groups TO "pe-classifier-write";


--
-- Name: TABLE last_sync; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.last_sync TO "pe-classifier-read";
GRANT ALL ON TABLE public.last_sync TO "pe-classifier-write";


--
-- Name: TABLE node_check_ins; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.node_check_ins TO "pe-classifier-read";
GRANT ALL ON TABLE public.node_check_ins TO "pe-classifier-write";


--
-- Name: SEQUENCE node_check_ins_idx_seq; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT ALL ON SEQUENCE public.node_check_ins_idx_seq TO "pe-classifier-write";


--
-- Name: TABLE rules; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.rules TO "pe-classifier-read";
GRANT ALL ON TABLE public.rules TO "pe-classifier-write";


--
-- Name: SEQUENCE rules_id_seq; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT ALL ON SEQUENCE public.rules_id_seq TO "pe-classifier-write";


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: public; Owner: pe-classifier
--

GRANT SELECT ON TABLE public.schema_migrations TO "pe-classifier-read";
GRANT ALL ON TABLE public.schema_migrations TO "pe-classifier-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-classifier
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-classifier";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-classifier-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-classifier-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-classifier
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-classifier";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-classifier-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-classifier-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-classifier
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-classifier";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-classifier-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-classifier" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-classifier-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-classifier-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-classifier-write";


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-inventory; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-inventory" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE "pe-inventory" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-inventory'"

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

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: connections; Type: TABLE; Schema: public; Owner: pe-inventory
--

CREATE TABLE public.connections (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    type text,
    create_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    parameters uuid NOT NULL,
    sensitive_parameters uuid NOT NULL,
    certnames text[],
    undiscoverable boolean DEFAULT false
);


ALTER TABLE public.connections OWNER TO "pe-inventory";

--
-- Name: parameters; Type: TABLE; Schema: public; Owner: pe-inventory
--

CREATE TABLE public.parameters (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    parameters jsonb
);


ALTER TABLE public.parameters OWNER TO "pe-inventory";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pe-inventory
--

CREATE TABLE public.schema_migrations (
    id bigint NOT NULL,
    applied timestamp without time zone,
    description character varying(1024)
);


ALTER TABLE public.schema_migrations OWNER TO "pe-inventory";

--
-- Name: sensitive_parameters; Type: TABLE; Schema: public; Owner: pe-inventory
--

CREATE TABLE public.sensitive_parameters (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    encryption_key_id text NOT NULL,
    parameters text NOT NULL
);


ALTER TABLE public.sensitive_parameters OWNER TO "pe-inventory";

--
-- Data for Name: connections; Type: TABLE DATA; Schema: public; Owner: pe-inventory
--

COPY public.connections (id, type, create_time, parameters, sensitive_parameters, certnames, undiscoverable) FROM stdin;
\.


--
-- Data for Name: parameters; Type: TABLE DATA; Schema: public; Owner: pe-inventory
--

COPY public.parameters (id, parameters) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pe-inventory
--

COPY public.schema_migrations (id, applied, description) FROM stdin;
\.


--
-- Data for Name: sensitive_parameters; Type: TABLE DATA; Schema: public; Owner: pe-inventory
--

COPY public.sensitive_parameters (id, encryption_key_id, parameters) FROM stdin;
\.


--
-- Name: connections connections_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-inventory
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_pkey PRIMARY KEY (id);


--
-- Name: parameters parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-inventory
--

ALTER TABLE ONLY public.parameters
    ADD CONSTRAINT parameters_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-inventory
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (id);


--
-- Name: sensitive_parameters sensitive_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-inventory
--

ALTER TABLE ONLY public.sensitive_parameters
    ADD CONSTRAINT sensitive_parameters_pkey PRIMARY KEY (id);


--
-- Name: idx_certnames; Type: INDEX; Schema: public; Owner: pe-inventory
--

CREATE INDEX idx_certnames ON public.connections USING btree (certnames);


--
-- Name: connections connections_parameters_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-inventory
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_parameters_fkey FOREIGN KEY (parameters) REFERENCES public.parameters(id);


--
-- Name: connections connections_sensitive_parameters_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-inventory
--

ALTER TABLE ONLY public.connections
    ADD CONSTRAINT connections_sensitive_parameters_fkey FOREIGN KEY (sensitive_parameters) REFERENCES public.sensitive_parameters(id);


--
-- Name: DATABASE "pe-inventory"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-inventory" FROM PUBLIC;
GRANT CONNECT ON DATABASE "pe-inventory" TO "pe-inventory-read";
GRANT CONNECT ON DATABASE "pe-inventory" TO "pe-inventory-write";
GRANT TEMPORARY ON DATABASE "pe-inventory" TO PUBLIC;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE connections; Type: ACL; Schema: public; Owner: pe-inventory
--

GRANT SELECT ON TABLE public.connections TO "pe-inventory-read";
GRANT ALL ON TABLE public.connections TO "pe-inventory-write";


--
-- Name: TABLE parameters; Type: ACL; Schema: public; Owner: pe-inventory
--

GRANT SELECT ON TABLE public.parameters TO "pe-inventory-read";
GRANT ALL ON TABLE public.parameters TO "pe-inventory-write";


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: public; Owner: pe-inventory
--

GRANT SELECT ON TABLE public.schema_migrations TO "pe-rbac-read";
GRANT ALL ON TABLE public.schema_migrations TO "pe-rbac-write";
GRANT SELECT ON TABLE public.schema_migrations TO "pe-inventory-read";
GRANT ALL ON TABLE public.schema_migrations TO "pe-inventory-write";


--
-- Name: TABLE sensitive_parameters; Type: ACL; Schema: public; Owner: pe-inventory
--

GRANT SELECT ON TABLE public.sensitive_parameters TO "pe-inventory-read";
GRANT ALL ON TABLE public.sensitive_parameters TO "pe-inventory-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-inventory";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-inventory-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-inventory-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-inventory";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-inventory-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-inventory-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-inventory
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-inventory";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-inventory-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-inventory" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-inventory-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-inventory-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-inventory-write";


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-orchestrator; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-orchestrator" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE "pe-orchestrator" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-orchestrator'"

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

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: connection_test_nodes; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.connection_test_nodes (
    connection_test_id integer NOT NULL,
    name text NOT NULL,
    state text NOT NULL,
    result jsonb
);


ALTER TABLE public.connection_test_nodes OWNER TO "pe-orchestrator";

--
-- Name: connection_tests; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.connection_tests (
    id integer NOT NULL,
    state text NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    owner text NOT NULL
);


ALTER TABLE public.connection_tests OWNER TO "pe-orchestrator";

--
-- Name: connection_tests_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.connection_tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.connection_tests_id_seq OWNER TO "pe-orchestrator";

--
-- Name: connection_tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.connection_tests_id_seq OWNED BY public.connection_tests.id;


--
-- Name: dumplings; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.dumplings (
    id integer NOT NULL,
    display_name text NOT NULL,
    pql_query text
);


ALTER TABLE public.dumplings OWNER TO "pe-orchestrator";

--
-- Name: dumplings_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.dumplings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dumplings_id_seq OWNER TO "pe-orchestrator";

--
-- Name: dumplings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.dumplings_id_seq OWNED BY public.dumplings.id;


--
-- Name: dumplings_node_groups; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.dumplings_node_groups (
    id integer NOT NULL,
    node_group_id text NOT NULL,
    dumpling_id integer NOT NULL
);


ALTER TABLE public.dumplings_node_groups OWNER TO "pe-orchestrator";

--
-- Name: dumplings_node_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.dumplings_node_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dumplings_node_groups_id_seq OWNER TO "pe-orchestrator";

--
-- Name: dumplings_node_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.dumplings_node_groups_id_seq OWNED BY public.dumplings_node_groups.id;


--
-- Name: dumplings_nodes; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.dumplings_nodes (
    id integer NOT NULL,
    node text NOT NULL,
    dumpling_id integer NOT NULL
);


ALTER TABLE public.dumplings_nodes OWNER TO "pe-orchestrator";

--
-- Name: dumplings_nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.dumplings_nodes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dumplings_nodes_id_seq OWNER TO "pe-orchestrator";

--
-- Name: dumplings_nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.dumplings_nodes_id_seq OWNED BY public.dumplings_nodes.id;


--
-- Name: dumplings_tasks; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.dumplings_tasks (
    id integer NOT NULL,
    task text,
    dumpling_id integer NOT NULL,
    all_tasks boolean DEFAULT false NOT NULL
);


ALTER TABLE public.dumplings_tasks OWNER TO "pe-orchestrator";

--
-- Name: dumplings_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.dumplings_tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dumplings_tasks_id_seq OWNER TO "pe-orchestrator";

--
-- Name: dumplings_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.dumplings_tasks_id_seq OWNED BY public.dumplings_tasks.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.events (
    id integer NOT NULL,
    type text NOT NULL,
    details jsonb,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE public.events OWNER TO "pe-orchestrator";

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO "pe-orchestrator";

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: job_statuses; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.job_statuses (
    id integer NOT NULL,
    state text NOT NULL,
    changed_by text,
    enter_time timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    exit_time timestamp without time zone,
    job_id integer NOT NULL
);


ALTER TABLE public.job_statuses OWNER TO "pe-orchestrator";

--
-- Name: job_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.job_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_statuses_id_seq OWNER TO "pe-orchestrator";

--
-- Name: job_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.job_statuses_id_seq OWNED BY public.job_statuses.id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.jobs (
    id integer NOT NULL,
    environment text NOT NULL,
    owner jsonb NOT NULL,
    options jsonb NOT NULL,
    catalog jsonb,
    command text DEFAULT 'deploy'::text NOT NULL,
    files jsonb,
    metadata jsonb,
    description text DEFAULT ''::text NOT NULL,
    plan_job_id integer,
    scheduled_job_id text
);


ALTER TABLE public.jobs OWNER TO "pe-orchestrator";

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jobs_id_seq OWNER TO "pe-orchestrator";

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: nodes; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.nodes (
    id integer NOT NULL,
    name text NOT NULL,
    transaction_uuid uuid,
    state text NOT NULL,
    job_id integer NOT NULL,
    start_timestamp timestamp with time zone,
    finish_timestamp timestamp with time zone,
    transport text
);


ALTER TABLE public.nodes OWNER TO "pe-orchestrator";

--
-- Name: nodes_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.nodes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nodes_id_seq OWNER TO "pe-orchestrator";

--
-- Name: nodes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.nodes_id_seq OWNED BY public.nodes.id;


--
-- Name: plan_events; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.plan_events (
    id integer NOT NULL,
    type text NOT NULL,
    details jsonb,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    plan_id integer NOT NULL
);


ALTER TABLE public.plan_events OWNER TO "pe-orchestrator";

--
-- Name: plan_events_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.plan_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plan_events_id_seq OWNER TO "pe-orchestrator";

--
-- Name: plan_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.plan_events_id_seq OWNED BY public.plan_events.id;


--
-- Name: plan_jobs; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.plan_jobs (
    id integer NOT NULL,
    plan_name text NOT NULL,
    description text,
    result jsonb,
    status text NOT NULL,
    parameters jsonb NOT NULL,
    owner jsonb NOT NULL,
    created_timestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    finished_timestamp timestamp with time zone
);


ALTER TABLE public.plan_jobs OWNER TO "pe-orchestrator";

--
-- Name: plan_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.plan_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plan_jobs_id_seq OWNER TO "pe-orchestrator";

--
-- Name: plan_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.plan_jobs_id_seq OWNED BY public.plan_jobs.id;


--
-- Name: scheduled_jobs; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.scheduled_jobs (
    id integer NOT NULL,
    type text NOT NULL,
    parameters text,
    scope jsonb NOT NULL,
    description text,
    environment text NOT NULL,
    scheduled_time timestamp with time zone NOT NULL,
    owner jsonb NOT NULL,
    targets text,
    schedule_options jsonb,
    next_run timestamp with time zone,
    job_options jsonb DEFAULT '{}'::jsonb NOT NULL,
    connections text[]
);


ALTER TABLE public.scheduled_jobs OWNER TO "pe-orchestrator";

--
-- Name: scheduled_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-orchestrator
--

CREATE SEQUENCE public.scheduled_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scheduled_jobs_id_seq OWNER TO "pe-orchestrator";

--
-- Name: scheduled_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-orchestrator
--

ALTER SEQUENCE public.scheduled_jobs_id_seq OWNED BY public.scheduled_jobs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.schema_migrations (
    id bigint NOT NULL,
    applied timestamp without time zone,
    description character varying(1024)
);


ALTER TABLE public.schema_migrations OWNER TO "pe-orchestrator";

--
-- Name: usage_counts; Type: TABLE; Schema: public; Owner: pe-orchestrator
--

CREATE TABLE public.usage_counts (
    end_period timestamp with time zone NOT NULL,
    with_agents integer NOT NULL,
    without_agents integer NOT NULL,
    intentional_changes integer DEFAULT 0 NOT NULL,
    corrective_changes integer DEFAULT 0 NOT NULL,
    tasks_node_count integer DEFAULT 0 NOT NULL,
    plans_node_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.usage_counts OWNER TO "pe-orchestrator";

--
-- Name: connection_tests id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.connection_tests ALTER COLUMN id SET DEFAULT nextval('public.connection_tests_id_seq'::regclass);


--
-- Name: dumplings id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings ALTER COLUMN id SET DEFAULT nextval('public.dumplings_id_seq'::regclass);


--
-- Name: dumplings_node_groups id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_node_groups ALTER COLUMN id SET DEFAULT nextval('public.dumplings_node_groups_id_seq'::regclass);


--
-- Name: dumplings_nodes id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_nodes ALTER COLUMN id SET DEFAULT nextval('public.dumplings_nodes_id_seq'::regclass);


--
-- Name: dumplings_tasks id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_tasks ALTER COLUMN id SET DEFAULT nextval('public.dumplings_tasks_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: job_statuses id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.job_statuses ALTER COLUMN id SET DEFAULT nextval('public.job_statuses_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: nodes id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.nodes ALTER COLUMN id SET DEFAULT nextval('public.nodes_id_seq'::regclass);


--
-- Name: plan_events id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.plan_events ALTER COLUMN id SET DEFAULT nextval('public.plan_events_id_seq'::regclass);


--
-- Name: plan_jobs id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.plan_jobs ALTER COLUMN id SET DEFAULT nextval('public.plan_jobs_id_seq'::regclass);


--
-- Name: scheduled_jobs id; Type: DEFAULT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.scheduled_jobs ALTER COLUMN id SET DEFAULT nextval('public.scheduled_jobs_id_seq'::regclass);


--
-- Data for Name: connection_test_nodes; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.connection_test_nodes (connection_test_id, name, state, result) FROM stdin;
\.


--
-- Data for Name: connection_tests; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.connection_tests (id, state, created_at, owner) FROM stdin;
\.


--
-- Data for Name: dumplings; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.dumplings (id, display_name, pql_query) FROM stdin;
\.


--
-- Data for Name: dumplings_node_groups; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.dumplings_node_groups (id, node_group_id, dumpling_id) FROM stdin;
\.


--
-- Data for Name: dumplings_nodes; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.dumplings_nodes (id, node, dumpling_id) FROM stdin;
\.


--
-- Data for Name: dumplings_tasks; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.dumplings_tasks (id, task, dumpling_id, all_tasks) FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.events (id, type, details, "timestamp", job_id) FROM stdin;
\.


--
-- Data for Name: job_statuses; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.job_statuses (id, state, changed_by, enter_time, exit_time, job_id) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.jobs (id, environment, owner, options, catalog, command, files, metadata, description, plan_job_id, scheduled_job_id) FROM stdin;
\.


--
-- Data for Name: nodes; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.nodes (id, name, transaction_uuid, state, job_id, start_timestamp, finish_timestamp, transport) FROM stdin;
\.


--
-- Data for Name: plan_events; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.plan_events (id, type, details, "timestamp", plan_id) FROM stdin;
\.


--
-- Data for Name: plan_jobs; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.plan_jobs (id, plan_name, description, result, status, parameters, owner, created_timestamp, finished_timestamp) FROM stdin;
\.


--
-- Data for Name: scheduled_jobs; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.scheduled_jobs (id, type, parameters, scope, description, environment, scheduled_time, owner, targets, schedule_options, next_run, job_options, connections) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.schema_migrations (id, applied, description) FROM stdin;
\.


--
-- Data for Name: usage_counts; Type: TABLE DATA; Schema: public; Owner: pe-orchestrator
--

COPY public.usage_counts (end_period, with_agents, without_agents, intentional_changes, corrective_changes, tasks_node_count, plans_node_count) FROM stdin;
\.


--
-- Name: connection_tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.connection_tests_id_seq', 1, false);


--
-- Name: dumplings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.dumplings_id_seq', 1, false);


--
-- Name: dumplings_node_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.dumplings_node_groups_id_seq', 1, false);


--
-- Name: dumplings_nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.dumplings_nodes_id_seq', 1, false);


--
-- Name: dumplings_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.dumplings_tasks_id_seq', 1, false);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.events_id_seq', 1, false);


--
-- Name: job_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.job_statuses_id_seq', 1, false);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: nodes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.nodes_id_seq', 1, false);


--
-- Name: plan_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.plan_events_id_seq', 1, false);


--
-- Name: plan_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.plan_jobs_id_seq', 1, false);


--
-- Name: scheduled_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-orchestrator
--

SELECT pg_catalog.setval('public.scheduled_jobs_id_seq', 1, false);


--
-- Name: connection_test_nodes connection_test_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.connection_test_nodes
    ADD CONSTRAINT connection_test_nodes_pkey PRIMARY KEY (connection_test_id, name);


--
-- Name: connection_tests connection_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.connection_tests
    ADD CONSTRAINT connection_tests_pkey PRIMARY KEY (id);


--
-- Name: dumplings_node_groups dumplings_node_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_node_groups
    ADD CONSTRAINT dumplings_node_groups_pkey PRIMARY KEY (id);


--
-- Name: dumplings_nodes dumplings_nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_nodes
    ADD CONSTRAINT dumplings_nodes_pkey PRIMARY KEY (id);


--
-- Name: dumplings dumplings_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings
    ADD CONSTRAINT dumplings_pkey PRIMARY KEY (id);


--
-- Name: dumplings_tasks dumplings_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_tasks
    ADD CONSTRAINT dumplings_tasks_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: job_statuses job_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.job_statuses
    ADD CONSTRAINT job_statuses_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: nodes nodes_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT nodes_pkey PRIMARY KEY (id);


--
-- Name: plan_events plan_events_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.plan_events
    ADD CONSTRAINT plan_events_pkey PRIMARY KEY (id);


--
-- Name: plan_jobs plan_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.plan_jobs
    ADD CONSTRAINT plan_jobs_pkey PRIMARY KEY (id);


--
-- Name: scheduled_jobs scheduled_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.scheduled_jobs
    ADD CONSTRAINT scheduled_jobs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_id_key; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_id_key UNIQUE (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (id);


--
-- Name: usage_counts usage_counts_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.usage_counts
    ADD CONSTRAINT usage_counts_pkey PRIMARY KEY (end_period);


--
-- Name: dumplings_node_groups_dumpling_id_idx; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX dumplings_node_groups_dumpling_id_idx ON public.dumplings_node_groups USING btree (dumpling_id);


--
-- Name: dumplings_nodes_dumpling_id_idx; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX dumplings_nodes_dumpling_id_idx ON public.dumplings_nodes USING btree (dumpling_id);


--
-- Name: dumplings_tasks_dumpling_id_idx; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX dumplings_tasks_dumpling_id_idx ON public.dumplings_tasks USING btree (dumpling_id);


--
-- Name: idx_events_job_id; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX idx_events_job_id ON public.events USING btree (job_id);


--
-- Name: idx_job_command; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX idx_job_command ON public.jobs USING btree (command);


--
-- Name: idx_job_statuses_exit_time_null; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX idx_job_statuses_exit_time_null ON public.job_statuses USING btree (exit_time) WHERE (exit_time IS NULL);


--
-- Name: idx_job_statuses_job_id; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX idx_job_statuses_job_id ON public.job_statuses USING btree (job_id);


--
-- Name: idx_nodes_connection_test_id; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX idx_nodes_connection_test_id ON public.connection_test_nodes USING btree (connection_test_id);


--
-- Name: idx_nodes_job_id; Type: INDEX; Schema: public; Owner: pe-orchestrator
--

CREATE INDEX idx_nodes_job_id ON public.nodes USING btree (job_id);


--
-- Name: connection_test_nodes connection_test_nodes_connection_test_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.connection_test_nodes
    ADD CONSTRAINT connection_test_nodes_connection_test_id_fkey FOREIGN KEY (connection_test_id) REFERENCES public.connection_tests(id) ON DELETE CASCADE;


--
-- Name: dumplings_node_groups dumplings_node_groups_dumpling_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_node_groups
    ADD CONSTRAINT dumplings_node_groups_dumpling_id_fkey FOREIGN KEY (dumpling_id) REFERENCES public.dumplings(id) ON DELETE CASCADE;


--
-- Name: dumplings_nodes dumplings_nodes_dumpling_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_nodes
    ADD CONSTRAINT dumplings_nodes_dumpling_id_fkey FOREIGN KEY (dumpling_id) REFERENCES public.dumplings(id) ON DELETE CASCADE;


--
-- Name: dumplings_tasks dumplings_tasks_dumpling_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.dumplings_tasks
    ADD CONSTRAINT dumplings_tasks_dumpling_id_fkey FOREIGN KEY (dumpling_id) REFERENCES public.dumplings(id) ON DELETE CASCADE;


--
-- Name: events events_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.jobs(id) ON DELETE CASCADE;


--
-- Name: job_statuses job_statuses_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.job_statuses
    ADD CONSTRAINT job_statuses_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.jobs(id) ON DELETE CASCADE;


--
-- Name: jobs jobs_plan_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_plan_job_id_fkey FOREIGN KEY (plan_job_id) REFERENCES public.plan_jobs(id) ON DELETE CASCADE;


--
-- Name: nodes nodes_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.nodes
    ADD CONSTRAINT nodes_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.jobs(id) ON DELETE CASCADE;


--
-- Name: plan_events plan_events_plan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-orchestrator
--

ALTER TABLE ONLY public.plan_events
    ADD CONSTRAINT plan_events_plan_id_fkey FOREIGN KEY (plan_id) REFERENCES public.plan_jobs(id) ON DELETE CASCADE;


--
-- Name: DATABASE "pe-orchestrator"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-orchestrator" FROM PUBLIC;
GRANT CONNECT ON DATABASE "pe-orchestrator" TO "pe-orchestrator-read";
GRANT CONNECT ON DATABASE "pe-orchestrator" TO "pe-orchestrator-write";
GRANT TEMPORARY ON DATABASE "pe-orchestrator" TO PUBLIC;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: TABLE connection_test_nodes; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.connection_test_nodes TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.connection_test_nodes TO "pe-orchestrator-write";


--
-- Name: TABLE connection_tests; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.connection_tests TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.connection_tests TO "pe-orchestrator-write";


--
-- Name: SEQUENCE connection_tests_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.connection_tests_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE dumplings; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.dumplings TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.dumplings TO "pe-orchestrator-write";


--
-- Name: SEQUENCE dumplings_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.dumplings_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE dumplings_node_groups; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.dumplings_node_groups TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.dumplings_node_groups TO "pe-orchestrator-write";


--
-- Name: SEQUENCE dumplings_node_groups_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.dumplings_node_groups_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE dumplings_nodes; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.dumplings_nodes TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.dumplings_nodes TO "pe-orchestrator-write";


--
-- Name: SEQUENCE dumplings_nodes_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.dumplings_nodes_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE dumplings_tasks; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.dumplings_tasks TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.dumplings_tasks TO "pe-orchestrator-write";


--
-- Name: SEQUENCE dumplings_tasks_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.dumplings_tasks_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE events; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.events TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.events TO "pe-orchestrator-write";


--
-- Name: SEQUENCE events_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.events_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE job_statuses; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.job_statuses TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.job_statuses TO "pe-orchestrator-write";


--
-- Name: SEQUENCE job_statuses_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.job_statuses_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE jobs; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.jobs TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.jobs TO "pe-orchestrator-write";


--
-- Name: SEQUENCE jobs_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.jobs_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE nodes; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.nodes TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.nodes TO "pe-orchestrator-write";


--
-- Name: SEQUENCE nodes_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.nodes_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE plan_events; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.plan_events TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.plan_events TO "pe-orchestrator-write";


--
-- Name: SEQUENCE plan_events_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.plan_events_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE plan_jobs; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.plan_jobs TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.plan_jobs TO "pe-orchestrator-write";


--
-- Name: SEQUENCE plan_jobs_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.plan_jobs_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE scheduled_jobs; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.scheduled_jobs TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.scheduled_jobs TO "pe-orchestrator-write";


--
-- Name: SEQUENCE scheduled_jobs_id_seq; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT ALL ON SEQUENCE public.scheduled_jobs_id_seq TO "pe-orchestrator-write";


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.schema_migrations TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.schema_migrations TO "pe-orchestrator-write";


--
-- Name: TABLE usage_counts; Type: ACL; Schema: public; Owner: pe-orchestrator
--

GRANT SELECT ON TABLE public.usage_counts TO "pe-orchestrator-read";
GRANT ALL ON TABLE public.usage_counts TO "pe-orchestrator-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-orchestrator
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-orchestrator";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-orchestrator-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-orchestrator-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-orchestrator
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-orchestrator";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-orchestrator-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-orchestrator-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-orchestrator
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-orchestrator";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-orchestrator-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-orchestrator" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-orchestrator-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-orchestrator-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-orchestrator-write";


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-postgres; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-postgres" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE "pe-postgres" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-postgres'"

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

--
-- Name: DATABASE "pe-postgres"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-postgres" FROM PUBLIC;
GRANT TEMPORARY ON DATABASE "pe-postgres" TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-puppetdb; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-puppetdb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE "pe-puppetdb" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-puppetdb'"

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

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: dual_sha1(bytea, bytea); Type: FUNCTION; Schema: public; Owner: pe-puppetdb
--

CREATE FUNCTION public.dual_sha1(bytea, bytea) RETURNS bytea
    LANGUAGE plpgsql
    AS $_$
      BEGIN
        RETURN digest($1 || $2, 'sha1');
      END;
    $_$;


ALTER FUNCTION public.dual_sha1(bytea, bytea) OWNER TO "pe-puppetdb";

--
-- Name: resource_events_insert_trigger(); Type: FUNCTION; Schema: public; Owner: pe-puppetdb
--

CREATE FUNCTION public.resource_events_insert_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $_$
     DECLARE
       tablename varchar;
     BEGIN
       SELECT FORMAT('resource_events_%sZ',
                     TO_CHAR(NEW."timestamp" AT TIME ZONE 'UTC', 'YYYYMMDD')) INTO tablename;

       EXECUTE 'INSERT INTO ' || tablename || ' SELECT ($1).*'
       USING NEW;

       RETURN NULL;
     END;
     $_$;


ALTER FUNCTION public.resource_events_insert_trigger() OWNER TO "pe-puppetdb";

--
-- Name: sha1_agg(bytea); Type: AGGREGATE; Schema: public; Owner: pe-puppetdb
--

CREATE AGGREGATE public.sha1_agg(bytea) (
    SFUNC = public.dual_sha1,
    STYPE = bytea,
    INITCOND = '\x00'
);


ALTER AGGREGATE public.sha1_agg(bytea) OWNER TO "pe-puppetdb";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: catalog_inputs; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.catalog_inputs (
    certname_id bigint NOT NULL,
    type text NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.catalog_inputs OWNER TO "pe-puppetdb";

--
-- Name: catalog_resources; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.catalog_resources (
    resource bytea NOT NULL,
    tags text[] NOT NULL,
    type text NOT NULL,
    title text NOT NULL,
    exported boolean NOT NULL,
    file text,
    line integer,
    certname_id bigint NOT NULL
)
WITH (autovacuum_analyze_scale_factor='0.01');


ALTER TABLE public.catalog_resources OWNER TO "pe-puppetdb";

--
-- Name: catalogs_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.catalogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.catalogs_id_seq OWNER TO "pe-puppetdb";

--
-- Name: catalogs; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.catalogs (
    id bigint DEFAULT nextval('public.catalogs_id_seq'::regclass) NOT NULL,
    hash bytea NOT NULL,
    transaction_uuid uuid,
    certname text NOT NULL,
    producer_timestamp timestamp with time zone NOT NULL,
    api_version integer NOT NULL,
    "timestamp" timestamp with time zone,
    catalog_version text NOT NULL,
    environment_id bigint,
    code_id text,
    catalog_uuid uuid,
    producer_id bigint,
    job_id text
)
WITH (autovacuum_vacuum_scale_factor='0.75');


ALTER TABLE public.catalogs OWNER TO "pe-puppetdb";

--
-- Name: catalogs_transform_id_seq1; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.catalogs_transform_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogs_transform_id_seq1 OWNER TO "pe-puppetdb";

--
-- Name: certname_fact_expiration; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.certname_fact_expiration (
    certid bigint NOT NULL,
    expire boolean NOT NULL,
    updated timestamp with time zone NOT NULL,
    CONSTRAINT certname_fact_expiration_expire_updated_vals_match CHECK ((((expire IS NOT NULL) AND (updated IS NOT NULL)) OR ((expire IS NULL) AND (updated IS NULL))))
);


ALTER TABLE public.certname_fact_expiration OWNER TO "pe-puppetdb";

--
-- Name: certname_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.certname_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.certname_id_seq OWNER TO "pe-puppetdb";

--
-- Name: certname_packages; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.certname_packages (
    certname_id bigint NOT NULL,
    package_id bigint NOT NULL
);


ALTER TABLE public.certname_packages OWNER TO "pe-puppetdb";

--
-- Name: certnames; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.certnames (
    id bigint DEFAULT nextval('public.certname_id_seq'::regclass) NOT NULL,
    certname text NOT NULL,
    latest_report_id bigint,
    deactivated timestamp with time zone,
    expired timestamp with time zone,
    package_hash bytea,
    latest_report_timestamp timestamp with time zone,
    catalog_inputs_timestamp timestamp with time zone,
    catalog_inputs_uuid uuid
)
WITH (autovacuum_vacuum_scale_factor='0.75');


ALTER TABLE public.certnames OWNER TO "pe-puppetdb";

--
-- Name: edges; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.edges (
    certname text NOT NULL,
    source bytea NOT NULL,
    target bytea NOT NULL,
    type text NOT NULL
);


ALTER TABLE public.edges OWNER TO "pe-puppetdb";

--
-- Name: environments_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.environments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.environments_id_seq OWNER TO "pe-puppetdb";

--
-- Name: environments; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.environments (
    id bigint DEFAULT nextval('public.environments_id_seq'::regclass) NOT NULL,
    environment text NOT NULL
);


ALTER TABLE public.environments OWNER TO "pe-puppetdb";

--
-- Name: fact_paths_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.fact_paths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.fact_paths_id_seq OWNER TO "pe-puppetdb";

--
-- Name: fact_paths; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.fact_paths (
    id bigint DEFAULT nextval('public.fact_paths_id_seq'::regclass) NOT NULL,
    depth integer NOT NULL,
    name character varying(1024),
    path text NOT NULL,
    path_array text[] NOT NULL,
    value_type_id integer NOT NULL
);


ALTER TABLE public.fact_paths OWNER TO "pe-puppetdb";

--
-- Name: fact_values_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.fact_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fact_values_id_seq OWNER TO "pe-puppetdb";

--
-- Name: factsets_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.factsets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.factsets_id_seq OWNER TO "pe-puppetdb";

--
-- Name: factsets; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.factsets (
    id bigint DEFAULT nextval('public.factsets_id_seq'::regclass) NOT NULL,
    certname text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    environment_id bigint,
    hash bytea NOT NULL,
    producer_timestamp timestamp with time zone NOT NULL,
    producer_id bigint,
    paths_hash bytea,
    stable jsonb,
    stable_hash bytea,
    volatile jsonb
)
WITH (autovacuum_vacuum_scale_factor='0.80');


ALTER TABLE public.factsets OWNER TO "pe-puppetdb";

--
-- Name: package_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.package_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.package_id_seq OWNER TO "pe-puppetdb";

--
-- Name: packages; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.packages (
    id bigint DEFAULT nextval('public.package_id_seq'::regclass) NOT NULL,
    hash bytea,
    name text NOT NULL,
    provider text NOT NULL,
    version text NOT NULL
);


ALTER TABLE public.packages OWNER TO "pe-puppetdb";

--
-- Name: producers_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.producers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.producers_id_seq OWNER TO "pe-puppetdb";

--
-- Name: producers; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.producers (
    id bigint DEFAULT nextval('public.producers_id_seq'::regclass) NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.producers OWNER TO "pe-puppetdb";

--
-- Name: report_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.report_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_statuses_id_seq OWNER TO "pe-puppetdb";

--
-- Name: report_statuses; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.report_statuses (
    id bigint DEFAULT nextval('public.report_statuses_id_seq'::regclass) NOT NULL,
    status text NOT NULL
);


ALTER TABLE public.report_statuses OWNER TO "pe-puppetdb";

--
-- Name: reports; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports (
    id bigint NOT NULL,
    hash bytea NOT NULL,
    transaction_uuid uuid,
    certname text NOT NULL,
    puppet_version text NOT NULL,
    report_format smallint NOT NULL,
    configuration_version text NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    receive_time timestamp with time zone NOT NULL,
    noop boolean,
    environment_id bigint,
    status_id bigint,
    metrics_json json,
    logs_json json,
    producer_timestamp timestamp with time zone NOT NULL,
    metrics jsonb,
    logs jsonb,
    resources jsonb,
    catalog_uuid uuid,
    cached_catalog_status text,
    code_id text,
    producer_id bigint,
    noop_pending boolean,
    corrective_change boolean,
    job_id text,
    report_type text DEFAULT 'agent'::text NOT NULL
);


ALTER TABLE public.reports OWNER TO "pe-puppetdb";

--
-- Name: reports_20201021z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201021z (
    CONSTRAINT reports_20201021z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-20 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-21 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201021z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201022z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201022z (
    CONSTRAINT reports_20201022z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-21 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-22 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201022z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201023z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201023z (
    CONSTRAINT reports_20201023z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-22 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-23 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201023z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201024z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201024z (
    CONSTRAINT reports_20201024z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-23 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-24 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201024z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201025z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201025z (
    CONSTRAINT reports_20201025z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-24 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-25 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201025z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201026z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201026z (
    CONSTRAINT reports_20201026z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-25 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-26 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201026z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201027z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201027z (
    CONSTRAINT reports_20201027z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-26 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-27 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201027z OWNER TO "pe-puppetdb";

--
-- Name: reports_20201028z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.reports_20201028z (
    CONSTRAINT reports_20201028z_producer_timestamp_check CHECK (((producer_timestamp >= '2020-10-27 20:00:00-04'::timestamp with time zone) AND (producer_timestamp < '2020-10-28 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.reports);


ALTER TABLE public.reports_20201028z OWNER TO "pe-puppetdb";

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-puppetdb
--

CREATE SEQUENCE public.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


ALTER TABLE public.reports_id_seq OWNER TO "pe-puppetdb";

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-puppetdb
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: resource_events; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events (
    event_hash bytea NOT NULL,
    report_id bigint NOT NULL,
    certname_id bigint NOT NULL,
    status text NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    resource_type text NOT NULL,
    resource_title text NOT NULL,
    property text,
    new_value text,
    old_value text,
    message text,
    file text DEFAULT NULL::character varying,
    line integer,
    name text,
    containment_path text[],
    containing_class text,
    corrective_change boolean
);


ALTER TABLE public.resource_events OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201021z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201021z (
    CONSTRAINT resource_events_20201021z_timestamp_check CHECK ((("timestamp" >= '2020-10-20 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-21 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201021z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201022z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201022z (
    CONSTRAINT resource_events_20201022z_timestamp_check CHECK ((("timestamp" >= '2020-10-21 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-22 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201022z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201023z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201023z (
    CONSTRAINT resource_events_20201023z_timestamp_check CHECK ((("timestamp" >= '2020-10-22 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-23 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201023z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201024z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201024z (
    CONSTRAINT resource_events_20201024z_timestamp_check CHECK ((("timestamp" >= '2020-10-23 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-24 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201024z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201025z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201025z (
    CONSTRAINT resource_events_20201025z_timestamp_check CHECK ((("timestamp" >= '2020-10-24 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-25 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201025z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201026z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201026z (
    CONSTRAINT resource_events_20201026z_timestamp_check CHECK ((("timestamp" >= '2020-10-25 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-26 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201026z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201027z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201027z (
    CONSTRAINT resource_events_20201027z_timestamp_check CHECK ((("timestamp" >= '2020-10-26 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-27 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201027z OWNER TO "pe-puppetdb";

--
-- Name: resource_events_20201028z; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_events_20201028z (
    CONSTRAINT resource_events_20201028z_timestamp_check CHECK ((("timestamp" >= '2020-10-27 20:00:00-04'::timestamp with time zone) AND ("timestamp" < '2020-10-28 20:00:00-04'::timestamp with time zone)))
)
INHERITS (public.resource_events);


ALTER TABLE public.resource_events_20201028z OWNER TO "pe-puppetdb";

--
-- Name: resource_params; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_params (
    resource bytea NOT NULL,
    name text NOT NULL,
    value text NOT NULL
);


ALTER TABLE public.resource_params OWNER TO "pe-puppetdb";

--
-- Name: resource_params_cache; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.resource_params_cache (
    resource bytea NOT NULL,
    parameters jsonb
);


ALTER TABLE public.resource_params_cache OWNER TO "pe-puppetdb";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.schema_migrations (
    version integer NOT NULL,
    "time" timestamp without time zone NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "pe-puppetdb";

--
-- Name: value_types; Type: TABLE; Schema: public; Owner: pe-puppetdb
--

CREATE TABLE public.value_types (
    id bigint NOT NULL,
    type character varying(32)
);


ALTER TABLE public.value_types OWNER TO "pe-puppetdb";

--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201021z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201021z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201021z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201021z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201022z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201022z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201022z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201022z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201023z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201023z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201023z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201023z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201024z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201024z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201024z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201024z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201025z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201025z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201025z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201025z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201026z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201026z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201026z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201026z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201027z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201027z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201027z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201027z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: reports_20201028z id; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201028z ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reports_20201028z report_type; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201028z ALTER COLUMN report_type SET DEFAULT 'agent'::text;


--
-- Name: resource_events_20201021z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201021z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201022z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201022z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201023z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201023z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201024z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201024z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201025z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201025z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201026z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201026z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201027z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201027z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Name: resource_events_20201028z file; Type: DEFAULT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events_20201028z ALTER COLUMN file SET DEFAULT NULL::character varying;


--
-- Data for Name: catalog_inputs; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.catalog_inputs (certname_id, type, name) FROM stdin;
\.


--
-- Data for Name: catalog_resources; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.catalog_resources (resource, tags, type, title, exported, file, line, certname_id) FROM stdin;
\.


--
-- Data for Name: catalogs; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.catalogs (id, hash, transaction_uuid, certname, producer_timestamp, api_version, "timestamp", catalog_version, environment_id, code_id, catalog_uuid, producer_id, job_id) FROM stdin;
\.


--
-- Data for Name: certname_fact_expiration; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.certname_fact_expiration (certid, expire, updated) FROM stdin;
\.


--
-- Data for Name: certname_packages; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.certname_packages (certname_id, package_id) FROM stdin;
\.


--
-- Data for Name: certnames; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.certnames (id, certname, latest_report_id, deactivated, expired, package_hash, latest_report_timestamp, catalog_inputs_timestamp, catalog_inputs_uuid) FROM stdin;
\.


--
-- Data for Name: edges; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.edges (certname, source, target, type) FROM stdin;
\.


--
-- Data for Name: environments; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.environments (id, environment) FROM stdin;
\.


--
-- Data for Name: fact_paths; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.fact_paths (id, depth, name, path, path_array, value_type_id) FROM stdin;
\.


--
-- Data for Name: factsets; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.factsets (id, certname, "timestamp", environment_id, hash, producer_timestamp, producer_id, paths_hash, stable, stable_hash, volatile) FROM stdin;
\.


--
-- Data for Name: packages; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.packages (id, hash, name, provider, version) FROM stdin;
\.


--
-- Data for Name: producers; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.producers (id, name) FROM stdin;
\.


--
-- Data for Name: report_statuses; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.report_statuses (id, status) FROM stdin;
\.


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201021z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201021z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201022z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201022z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201023z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201023z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201024z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201024z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201025z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201025z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201026z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201026z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201027z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201027z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: reports_20201028z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.reports_20201028z (id, hash, transaction_uuid, certname, puppet_version, report_format, configuration_version, start_time, end_time, receive_time, noop, environment_id, status_id, metrics_json, logs_json, producer_timestamp, metrics, logs, resources, catalog_uuid, cached_catalog_status, code_id, producer_id, noop_pending, corrective_change, job_id, report_type) FROM stdin;
\.


--
-- Data for Name: resource_events; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201021z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201021z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201022z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201022z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201023z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201023z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201024z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201024z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201025z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201025z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201026z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201026z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201027z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201027z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_events_20201028z; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_events_20201028z (event_hash, report_id, certname_id, status, "timestamp", resource_type, resource_title, property, new_value, old_value, message, file, line, name, containment_path, containing_class, corrective_change) FROM stdin;
\.


--
-- Data for Name: resource_params; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_params (resource, name, value) FROM stdin;
\.


--
-- Data for Name: resource_params_cache; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.resource_params_cache (resource, parameters) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.schema_migrations (version, "time") FROM stdin;
0	2020-10-25 02:36:56.99
28	2020-10-25 02:36:57.15
29	2020-10-25 02:36:57.261
30	2020-10-25 02:36:57.268
31	2020-10-25 02:36:57.275
32	2020-10-25 02:36:57.281
33	2020-10-25 02:36:57.3
34	2020-10-25 02:36:57.326
35	2020-10-25 02:36:57.331
36	2020-10-25 02:36:57.339
37	2020-10-25 02:36:57.343
38	2020-10-25 02:36:57.358
39	2020-10-25 02:36:57.381
40	2020-10-25 02:36:57.4
41	2020-10-25 02:36:57.407
42	2020-10-25 02:36:57.444
43	2020-10-25 02:36:57.451
44	2020-10-25 02:36:57.457
45	2020-10-25 02:36:57.462
46	2020-10-25 02:36:57.465
47	2020-10-25 02:36:57.488
48	2020-10-25 02:36:57.494
49	2020-10-25 02:36:57.503
50	2020-10-25 02:36:57.508
51	2020-10-25 02:36:57.532
52	2020-10-25 02:36:57.548
53	2020-10-25 02:36:57.555
54	2020-10-25 02:36:57.559
55	2020-10-25 02:36:57.565
56	2020-10-25 02:36:57.582
57	2020-10-25 02:36:57.6
58	2020-10-25 02:36:57.605
59	2020-10-25 02:36:57.621
60	2020-10-25 02:36:57.648
61	2020-10-25 02:36:57.67
62	2020-10-25 02:36:57.679
63	2020-10-25 02:36:57.688
64	2020-10-25 02:36:57.74
65	2020-10-25 02:36:57.748
66	2020-10-25 02:36:57.764
67	2020-10-25 02:36:57.766
68	2020-10-25 02:36:57.795
69	2020-10-25 02:36:57.809
70	2020-10-25 02:36:57.829
71	2020-10-25 02:36:57.84
72	2020-10-25 02:36:57.85
73	2020-10-25 02:36:58.117
74	2020-10-25 02:36:58.536
75	2020-10-25 02:36:58.54
76	2020-10-25 02:36:58.557
\.


--
-- Data for Name: value_types; Type: TABLE DATA; Schema: public; Owner: pe-puppetdb
--

COPY public.value_types (id, type) FROM stdin;
0	string
1	integer
2	float
3	boolean
4	null
5	json
\.


--
-- Name: catalogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.catalogs_id_seq', 1, false);


--
-- Name: catalogs_transform_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.catalogs_transform_id_seq1', 1, false);


--
-- Name: certname_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.certname_id_seq', 1, true);


--
-- Name: environments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.environments_id_seq', 1, true);


--
-- Name: fact_paths_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.fact_paths_id_seq', 435, true);


--
-- Name: fact_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.fact_values_id_seq', 1, false);


--
-- Name: factsets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.factsets_id_seq', 1, true);


--
-- Name: package_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.package_id_seq', 1, false);


--
-- Name: producers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.producers_id_seq', 1, true);


--
-- Name: report_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.report_statuses_id_seq', 1, true);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-puppetdb
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, true);


--
-- Name: catalog_resources catalog_resources_pkey1; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalog_resources
    ADD CONSTRAINT catalog_resources_pkey1 PRIMARY KEY (certname_id, type, title);


--
-- Name: catalogs catalogs_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalogs
    ADD CONSTRAINT catalogs_pkey PRIMARY KEY (id);


--
-- Name: certname_fact_expiration certname_fact_expiration_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certname_fact_expiration
    ADD CONSTRAINT certname_fact_expiration_pkey PRIMARY KEY (certid);


--
-- Name: certname_packages certname_packages_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certname_packages
    ADD CONSTRAINT certname_packages_pkey PRIMARY KEY (certname_id, package_id);


--
-- Name: certnames certnames_transform_certname_key; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certnames
    ADD CONSTRAINT certnames_transform_certname_key UNIQUE (certname);


--
-- Name: certnames certnames_transform_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certnames
    ADD CONSTRAINT certnames_transform_pkey PRIMARY KEY (id);


--
-- Name: edges edges_certname_source_target_type_unique_key; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.edges
    ADD CONSTRAINT edges_certname_source_target_type_unique_key UNIQUE (certname, source, target, type);


--
-- Name: environments environments_name_key; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.environments
    ADD CONSTRAINT environments_name_key UNIQUE (environment);


--
-- Name: environments environments_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.environments
    ADD CONSTRAINT environments_pkey PRIMARY KEY (id);


--
-- Name: fact_paths fact_paths_path_type_unique; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.fact_paths
    ADD CONSTRAINT fact_paths_path_type_unique UNIQUE (path, value_type_id);


--
-- Name: fact_paths fact_paths_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.fact_paths
    ADD CONSTRAINT fact_paths_pkey PRIMARY KEY (id);


--
-- Name: factsets factsets_certname_idx; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.factsets
    ADD CONSTRAINT factsets_certname_idx UNIQUE (certname);


--
-- Name: factsets factsets_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.factsets
    ADD CONSTRAINT factsets_pkey PRIMARY KEY (id);


--
-- Name: packages package_hash_key; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT package_hash_key UNIQUE (hash);


--
-- Name: packages packages_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.packages
    ADD CONSTRAINT packages_pkey PRIMARY KEY (id);


--
-- Name: producers producers_name_key; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_name_key UNIQUE (name);


--
-- Name: producers producers_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.producers
    ADD CONSTRAINT producers_pkey PRIMARY KEY (id);


--
-- Name: report_statuses report_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.report_statuses
    ADD CONSTRAINT report_statuses_pkey PRIMARY KEY (id);


--
-- Name: report_statuses report_statuses_status_key; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.report_statuses
    ADD CONSTRAINT report_statuses_status_key UNIQUE (status);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: resource_events resource_events_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_events
    ADD CONSTRAINT resource_events_pkey PRIMARY KEY (event_hash);


--
-- Name: resource_params_cache resource_params_cache_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_params_cache
    ADD CONSTRAINT resource_params_cache_pkey PRIMARY KEY (resource);


--
-- Name: resource_params resource_params_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_params
    ADD CONSTRAINT resource_params_pkey PRIMARY KEY (resource, name);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: value_types value_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.value_types
    ADD CONSTRAINT value_types_pkey PRIMARY KEY (id);


--
-- Name: catalog_inputs_certname_id_index; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_inputs_certname_id_index ON public.catalog_inputs USING btree (certname_id);


--
-- Name: catalog_resources_encode_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_resources_encode_idx ON public.catalog_resources USING btree (encode(resource, 'hex'::text));


--
-- Name: catalog_resources_exported_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_resources_exported_idx ON public.catalog_resources USING btree (exported) WHERE (exported = true);


--
-- Name: catalog_resources_file_trgm; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_resources_file_trgm ON public.catalog_resources USING gin (file public.gin_trgm_ops) WHERE (file IS NOT NULL);


--
-- Name: catalog_resources_resource_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_resources_resource_idx ON public.catalog_resources USING btree (resource);


--
-- Name: catalog_resources_type_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_resources_type_idx ON public.catalog_resources USING btree (type);


--
-- Name: catalog_resources_type_title_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalog_resources_type_title_idx ON public.catalog_resources USING btree (type, title);


--
-- Name: catalogs_certname_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalogs_certname_idx ON public.catalogs USING btree (certname);


--
-- Name: catalogs_hash_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalogs_hash_expr_idx ON public.catalogs USING btree (encode(hash, 'hex'::text));


--
-- Name: catalogs_job_id_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalogs_job_id_idx ON public.catalogs USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: catalogs_tx_uuid_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX catalogs_tx_uuid_expr_idx ON public.catalogs USING btree (((transaction_uuid)::text));


--
-- Name: certname_package_reverse_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX certname_package_reverse_idx ON public.certname_packages USING btree (package_id, certname_id);


--
-- Name: fact_paths_name; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX fact_paths_name ON public.fact_paths USING btree (name);


--
-- Name: fact_paths_path_trgm; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX fact_paths_path_trgm ON public.fact_paths USING gist (path public.gist_trgm_ops);


--
-- Name: factsets_hash_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX factsets_hash_expr_idx ON public.factsets USING btree (encode(hash, 'hex'::text));


--
-- Name: idx_catalogs_env; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_catalogs_env ON public.catalogs USING btree (environment_id);


--
-- Name: idx_catalogs_prod; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_catalogs_prod ON public.catalogs USING btree (producer_id);


--
-- Name: idx_catalogs_producer_timestamp; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_catalogs_producer_timestamp ON public.catalogs USING btree (producer_timestamp);


--
-- Name: idx_certnames_latest_report_id; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_certnames_latest_report_id ON public.certnames USING btree (latest_report_id);


--
-- Name: idx_certnames_latest_report_timestamp; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_certnames_latest_report_timestamp ON public.certnames USING btree (latest_report_timestamp);


--
-- Name: idx_factsets_jsonb_merged; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_factsets_jsonb_merged ON public.factsets USING gin (((stable || volatile)) jsonb_path_ops);


--
-- Name: idx_factsets_prod; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_factsets_prod ON public.factsets USING btree (producer_id);


--
-- Name: idx_reports_compound_id; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id ON public.reports USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201021z ON public.reports_20201021z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201022z ON public.reports_20201022z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201023z ON public.reports_20201023z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201024z ON public.reports_20201024z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201025z ON public.reports_20201025z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201026z ON public.reports_20201026z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201027z ON public.reports_20201027z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_compound_id_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_compound_id_20201028z ON public.reports_20201028z USING btree (producer_timestamp, certname, hash) WHERE (start_time IS NOT NULL);


--
-- Name: idx_reports_id_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201021z ON public.reports_20201021z USING btree (id);


--
-- Name: idx_reports_id_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201022z ON public.reports_20201022z USING btree (id);


--
-- Name: idx_reports_id_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201023z ON public.reports_20201023z USING btree (id);


--
-- Name: idx_reports_id_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201024z ON public.reports_20201024z USING btree (id);


--
-- Name: idx_reports_id_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201025z ON public.reports_20201025z USING btree (id);


--
-- Name: idx_reports_id_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201026z ON public.reports_20201026z USING btree (id);


--
-- Name: idx_reports_id_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201027z ON public.reports_20201027z USING btree (id);


--
-- Name: idx_reports_id_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX idx_reports_id_20201028z ON public.reports_20201028z USING btree (id);


--
-- Name: idx_reports_noop_pending; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending ON public.reports USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201021z ON public.reports_20201021z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201022z ON public.reports_20201022z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201023z ON public.reports_20201023z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201024z ON public.reports_20201024z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201025z ON public.reports_20201025z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201026z ON public.reports_20201026z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201027z ON public.reports_20201027z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_noop_pending_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_noop_pending_20201028z ON public.reports_20201028z USING btree (noop_pending) WHERE (noop_pending = true);


--
-- Name: idx_reports_prod; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod ON public.reports USING btree (producer_id);


--
-- Name: idx_reports_prod_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201021z ON public.reports_20201021z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201022z ON public.reports_20201022z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201023z ON public.reports_20201023z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201024z ON public.reports_20201024z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201025z ON public.reports_20201025z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201026z ON public.reports_20201026z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201027z ON public.reports_20201027z USING btree (producer_id);


--
-- Name: idx_reports_prod_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_prod_20201028z ON public.reports_20201028z USING btree (producer_id);


--
-- Name: idx_reports_producer_timestamp; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp ON public.reports USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201021z ON public.reports_20201021z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201022z ON public.reports_20201022z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201023z ON public.reports_20201023z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201024z ON public.reports_20201024z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201025z ON public.reports_20201025z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201026z ON public.reports_20201026z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201027z ON public.reports_20201027z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_20201028z ON public.reports_20201028z USING btree (producer_timestamp);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname ON public.reports USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201021z ON public.reports_20201021z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201022z ON public.reports_20201022z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201023z ON public.reports_20201023z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201024z ON public.reports_20201024z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201025z ON public.reports_20201025z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201026z ON public.reports_20201026z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201027z ON public.reports_20201027z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_reports_producer_timestamp_by_hour_certname_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_reports_producer_timestamp_by_hour_certname_20201028z ON public.reports_20201028z USING btree (date_trunc('hour'::text, timezone('UTC'::text, producer_timestamp)), producer_timestamp, certname);


--
-- Name: idx_resources_params_name; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_resources_params_name ON public.resource_params USING btree (name);


--
-- Name: idx_resources_params_resource; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX idx_resources_params_resource ON public.resource_params USING btree (resource);


--
-- Name: packages_name_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX packages_name_idx ON public.packages USING btree (name);


--
-- Name: packages_name_trgm; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX packages_name_trgm ON public.packages USING gin (name public.gin_trgm_ops);


--
-- Name: reports_cached_catalog_status_on_fail; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail ON public.reports USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201021z ON public.reports_20201021z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201022z ON public.reports_20201022z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201023z ON public.reports_20201023z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201024z ON public.reports_20201024z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201025z ON public.reports_20201025z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201026z ON public.reports_20201026z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201027z ON public.reports_20201027z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_cached_catalog_status_on_fail_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_cached_catalog_status_on_fail_20201028z ON public.reports_20201028z USING btree (cached_catalog_status) WHERE (cached_catalog_status = 'on_failure'::text);


--
-- Name: reports_catalog_uuid_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx ON public.reports USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201021z ON public.reports_20201021z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201022z ON public.reports_20201022z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201023z ON public.reports_20201023z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201024z ON public.reports_20201024z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201025z ON public.reports_20201025z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201026z ON public.reports_20201026z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201027z ON public.reports_20201027z USING btree (catalog_uuid);


--
-- Name: reports_catalog_uuid_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_catalog_uuid_idx_20201028z ON public.reports_20201028z USING btree (catalog_uuid);


--
-- Name: reports_certname_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx ON public.reports USING btree (certname);


--
-- Name: reports_certname_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201021z ON public.reports_20201021z USING btree (certname);


--
-- Name: reports_certname_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201022z ON public.reports_20201022z USING btree (certname);


--
-- Name: reports_certname_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201023z ON public.reports_20201023z USING btree (certname);


--
-- Name: reports_certname_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201024z ON public.reports_20201024z USING btree (certname);


--
-- Name: reports_certname_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201025z ON public.reports_20201025z USING btree (certname);


--
-- Name: reports_certname_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201026z ON public.reports_20201026z USING btree (certname);


--
-- Name: reports_certname_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201027z ON public.reports_20201027z USING btree (certname);


--
-- Name: reports_certname_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_certname_idx_20201028z ON public.reports_20201028z USING btree (certname);


--
-- Name: reports_end_time_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx ON public.reports USING btree (end_time);


--
-- Name: reports_end_time_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201021z ON public.reports_20201021z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201022z ON public.reports_20201022z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201023z ON public.reports_20201023z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201024z ON public.reports_20201024z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201025z ON public.reports_20201025z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201026z ON public.reports_20201026z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201027z ON public.reports_20201027z USING btree (end_time);


--
-- Name: reports_end_time_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_end_time_idx_20201028z ON public.reports_20201028z USING btree (end_time);


--
-- Name: reports_environment_id_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx ON public.reports USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201021z ON public.reports_20201021z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201022z ON public.reports_20201022z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201023z ON public.reports_20201023z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201024z ON public.reports_20201024z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201025z ON public.reports_20201025z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201026z ON public.reports_20201026z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201027z ON public.reports_20201027z USING btree (environment_id);


--
-- Name: reports_environment_id_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_environment_id_idx_20201028z ON public.reports_20201028z USING btree (environment_id);


--
-- Name: reports_hash_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx ON public.reports USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201021z ON public.reports_20201021z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201022z ON public.reports_20201022z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201023z ON public.reports_20201023z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201024z ON public.reports_20201024z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201025z ON public.reports_20201025z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201026z ON public.reports_20201026z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201027z ON public.reports_20201027z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_hash_expr_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX reports_hash_expr_idx_20201028z ON public.reports_20201028z USING btree (encode(hash, 'hex'::text));


--
-- Name: reports_job_id_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx ON public.reports USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201021z ON public.reports_20201021z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201022z ON public.reports_20201022z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201023z ON public.reports_20201023z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201024z ON public.reports_20201024z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201025z ON public.reports_20201025z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201026z ON public.reports_20201026z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201027z ON public.reports_20201027z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_job_id_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_job_id_idx_20201028z ON public.reports_20201028z USING btree (job_id) WHERE (job_id IS NOT NULL);


--
-- Name: reports_noop_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx ON public.reports USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201021z ON public.reports_20201021z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201022z ON public.reports_20201022z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201023z ON public.reports_20201023z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201024z ON public.reports_20201024z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201025z ON public.reports_20201025z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201026z ON public.reports_20201026z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201027z ON public.reports_20201027z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_noop_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_noop_idx_20201028z ON public.reports_20201028z USING btree (noop) WHERE (noop = true);


--
-- Name: reports_status_id_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx ON public.reports USING btree (status_id);


--
-- Name: reports_status_id_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201021z ON public.reports_20201021z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201022z ON public.reports_20201022z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201023z ON public.reports_20201023z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201024z ON public.reports_20201024z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201025z ON public.reports_20201025z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201026z ON public.reports_20201026z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201027z ON public.reports_20201027z USING btree (status_id);


--
-- Name: reports_status_id_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_status_id_idx_20201028z ON public.reports_20201028z USING btree (status_id);


--
-- Name: reports_tx_uuid_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx ON public.reports USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201021z ON public.reports_20201021z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201022z ON public.reports_20201022z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201023z ON public.reports_20201023z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201024z ON public.reports_20201024z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201025z ON public.reports_20201025z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201026z ON public.reports_20201026z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201027z ON public.reports_20201027z USING btree (((transaction_uuid)::text));


--
-- Name: reports_tx_uuid_expr_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX reports_tx_uuid_expr_idx_20201028z ON public.reports_20201028z USING btree (((transaction_uuid)::text));


--
-- Name: resource_events_containing_class_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201021z ON public.resource_events_20201021z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201022z ON public.resource_events_20201022z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201023z ON public.resource_events_20201023z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201024z ON public.resource_events_20201024z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201025z ON public.resource_events_20201025z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201026z ON public.resource_events_20201026z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201027z ON public.resource_events_20201027z USING btree (containing_class);


--
-- Name: resource_events_containing_class_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_containing_class_idx_20201028z ON public.resource_events_20201028z USING btree (containing_class);


--
-- Name: resource_events_hash_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201021z ON public.resource_events_20201021z USING btree (event_hash);


--
-- Name: resource_events_hash_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201022z ON public.resource_events_20201022z USING btree (event_hash);


--
-- Name: resource_events_hash_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201023z ON public.resource_events_20201023z USING btree (event_hash);


--
-- Name: resource_events_hash_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201024z ON public.resource_events_20201024z USING btree (event_hash);


--
-- Name: resource_events_hash_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201025z ON public.resource_events_20201025z USING btree (event_hash);


--
-- Name: resource_events_hash_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201026z ON public.resource_events_20201026z USING btree (event_hash);


--
-- Name: resource_events_hash_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201027z ON public.resource_events_20201027z USING btree (event_hash);


--
-- Name: resource_events_hash_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE UNIQUE INDEX resource_events_hash_20201028z ON public.resource_events_20201028z USING btree (event_hash);


--
-- Name: resource_events_property_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201021z ON public.resource_events_20201021z USING btree (property);


--
-- Name: resource_events_property_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201022z ON public.resource_events_20201022z USING btree (property);


--
-- Name: resource_events_property_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201023z ON public.resource_events_20201023z USING btree (property);


--
-- Name: resource_events_property_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201024z ON public.resource_events_20201024z USING btree (property);


--
-- Name: resource_events_property_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201025z ON public.resource_events_20201025z USING btree (property);


--
-- Name: resource_events_property_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201026z ON public.resource_events_20201026z USING btree (property);


--
-- Name: resource_events_property_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201027z ON public.resource_events_20201027z USING btree (property);


--
-- Name: resource_events_property_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_property_idx_20201028z ON public.resource_events_20201028z USING btree (property);


--
-- Name: resource_events_reports_id_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201021z ON public.resource_events_20201021z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201022z ON public.resource_events_20201022z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201023z ON public.resource_events_20201023z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201024z ON public.resource_events_20201024z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201025z ON public.resource_events_20201025z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201026z ON public.resource_events_20201026z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201027z ON public.resource_events_20201027z USING btree (report_id);


--
-- Name: resource_events_reports_id_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_reports_id_idx_20201028z ON public.resource_events_20201028z USING btree (report_id);


--
-- Name: resource_events_resource_timestamp_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201021z ON public.resource_events_20201021z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201022z ON public.resource_events_20201022z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201023z ON public.resource_events_20201023z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201024z ON public.resource_events_20201024z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201025z ON public.resource_events_20201025z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201026z ON public.resource_events_20201026z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201027z ON public.resource_events_20201027z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_timestamp_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_timestamp_20201028z ON public.resource_events_20201028z USING btree (resource_type, resource_title, "timestamp");


--
-- Name: resource_events_resource_title_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201021z ON public.resource_events_20201021z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201022z ON public.resource_events_20201022z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201023z ON public.resource_events_20201023z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201024z ON public.resource_events_20201024z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201025z ON public.resource_events_20201025z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201026z ON public.resource_events_20201026z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201027z ON public.resource_events_20201027z USING btree (resource_title);


--
-- Name: resource_events_resource_title_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_resource_title_idx_20201028z ON public.resource_events_20201028z USING btree (resource_title);


--
-- Name: resource_events_status_for_corrective_change_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201021z ON public.resource_events_20201021z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201022z ON public.resource_events_20201022z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201023z ON public.resource_events_20201023z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201024z ON public.resource_events_20201024z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201025z ON public.resource_events_20201025z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201026z ON public.resource_events_20201026z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201027z ON public.resource_events_20201027z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_for_corrective_change_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_for_corrective_change_idx_20201028z ON public.resource_events_20201028z USING btree (status) WHERE corrective_change;


--
-- Name: resource_events_status_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201021z ON public.resource_events_20201021z USING btree (status);


--
-- Name: resource_events_status_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201022z ON public.resource_events_20201022z USING btree (status);


--
-- Name: resource_events_status_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201023z ON public.resource_events_20201023z USING btree (status);


--
-- Name: resource_events_status_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201024z ON public.resource_events_20201024z USING btree (status);


--
-- Name: resource_events_status_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201025z ON public.resource_events_20201025z USING btree (status);


--
-- Name: resource_events_status_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201026z ON public.resource_events_20201026z USING btree (status);


--
-- Name: resource_events_status_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201027z ON public.resource_events_20201027z USING btree (status);


--
-- Name: resource_events_status_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_status_idx_20201028z ON public.resource_events_20201028z USING btree (status);


--
-- Name: resource_events_timestamp_idx_20201021z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201021z ON public.resource_events_20201021z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201022z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201022z ON public.resource_events_20201022z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201023z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201023z ON public.resource_events_20201023z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201024z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201024z ON public.resource_events_20201024z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201025z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201025z ON public.resource_events_20201025z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201026z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201026z ON public.resource_events_20201026z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201027z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201027z ON public.resource_events_20201027z USING btree ("timestamp");


--
-- Name: resource_events_timestamp_idx_20201028z; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_events_timestamp_idx_20201028z ON public.resource_events_20201028z USING btree ("timestamp");


--
-- Name: resource_params_cache_parameters_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_params_cache_parameters_idx ON public.resource_params_cache USING gin (parameters);


--
-- Name: resource_params_hash_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX resource_params_hash_expr_idx ON public.resource_params USING btree (encode(resource, 'hex'::text));


--
-- Name: rpc_hash_expr_idx; Type: INDEX; Schema: public; Owner: pe-puppetdb
--

CREATE INDEX rpc_hash_expr_idx ON public.resource_params_cache USING btree (encode(resource, 'hex'::text));


--
-- Name: resource_events insert_resource_events_trigger; Type: TRIGGER; Schema: public; Owner: pe-puppetdb
--

CREATE TRIGGER insert_resource_events_trigger BEFORE INSERT ON public.resource_events FOR EACH ROW EXECUTE PROCEDURE public.resource_events_insert_trigger();


--
-- Name: catalog_inputs catalog_inputs_certname_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalog_inputs
    ADD CONSTRAINT catalog_inputs_certname_id_fkey FOREIGN KEY (certname_id) REFERENCES public.certnames(id) ON DELETE CASCADE;


--
-- Name: catalog_resources catalog_resources_certname_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalog_resources
    ADD CONSTRAINT catalog_resources_certname_id_fkey FOREIGN KEY (certname_id) REFERENCES public.certnames(id) ON DELETE CASCADE;


--
-- Name: catalog_resources catalog_resources_resource_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalog_resources
    ADD CONSTRAINT catalog_resources_resource_fkey FOREIGN KEY (resource) REFERENCES public.resource_params_cache(resource) ON DELETE CASCADE;


--
-- Name: catalogs catalogs_certname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalogs
    ADD CONSTRAINT catalogs_certname_fkey FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: catalogs catalogs_env_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalogs
    ADD CONSTRAINT catalogs_env_fkey FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: catalogs catalogs_prod_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.catalogs
    ADD CONSTRAINT catalogs_prod_fkey FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: certname_fact_expiration certname_fact_expiration_certid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certname_fact_expiration
    ADD CONSTRAINT certname_fact_expiration_certid_fkey FOREIGN KEY (certid) REFERENCES public.certnames(id) ON DELETE CASCADE;


--
-- Name: certname_packages certname_packages_certname_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certname_packages
    ADD CONSTRAINT certname_packages_certname_id_fkey FOREIGN KEY (certname_id) REFERENCES public.certnames(id);


--
-- Name: certname_packages certname_packages_package_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.certname_packages
    ADD CONSTRAINT certname_packages_package_id_fkey FOREIGN KEY (package_id) REFERENCES public.packages(id);


--
-- Name: edges edges_certname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.edges
    ADD CONSTRAINT edges_certname_fkey FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: factsets factsets_certname_fk; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.factsets
    ADD CONSTRAINT factsets_certname_fk FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: factsets factsets_environment_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.factsets
    ADD CONSTRAINT factsets_environment_id_fk FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: factsets factsets_prod_fk; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.factsets
    ADD CONSTRAINT factsets_prod_fk FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports reports_certname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_certname_fkey FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201021z reports_certname_fkey_20201021z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201021z
    ADD CONSTRAINT reports_certname_fkey_20201021z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201022z reports_certname_fkey_20201022z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201022z
    ADD CONSTRAINT reports_certname_fkey_20201022z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201023z reports_certname_fkey_20201023z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201023z
    ADD CONSTRAINT reports_certname_fkey_20201023z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201024z reports_certname_fkey_20201024z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201024z
    ADD CONSTRAINT reports_certname_fkey_20201024z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201025z reports_certname_fkey_20201025z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201025z
    ADD CONSTRAINT reports_certname_fkey_20201025z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201026z reports_certname_fkey_20201026z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201026z
    ADD CONSTRAINT reports_certname_fkey_20201026z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201027z reports_certname_fkey_20201027z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201027z
    ADD CONSTRAINT reports_certname_fkey_20201027z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports_20201028z reports_certname_fkey_20201028z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201028z
    ADD CONSTRAINT reports_certname_fkey_20201028z FOREIGN KEY (certname) REFERENCES public.certnames(certname) ON DELETE CASCADE;


--
-- Name: reports reports_env_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_env_fkey FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201021z reports_env_fkey_20201021z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201021z
    ADD CONSTRAINT reports_env_fkey_20201021z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201022z reports_env_fkey_20201022z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201022z
    ADD CONSTRAINT reports_env_fkey_20201022z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201023z reports_env_fkey_20201023z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201023z
    ADD CONSTRAINT reports_env_fkey_20201023z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201024z reports_env_fkey_20201024z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201024z
    ADD CONSTRAINT reports_env_fkey_20201024z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201025z reports_env_fkey_20201025z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201025z
    ADD CONSTRAINT reports_env_fkey_20201025z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201026z reports_env_fkey_20201026z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201026z
    ADD CONSTRAINT reports_env_fkey_20201026z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201027z reports_env_fkey_20201027z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201027z
    ADD CONSTRAINT reports_env_fkey_20201027z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports_20201028z reports_env_fkey_20201028z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201028z
    ADD CONSTRAINT reports_env_fkey_20201028z FOREIGN KEY (environment_id) REFERENCES public.environments(id) ON DELETE CASCADE;


--
-- Name: reports reports_prod_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_prod_fkey FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201021z reports_prod_fkey_20201021z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201021z
    ADD CONSTRAINT reports_prod_fkey_20201021z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201022z reports_prod_fkey_20201022z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201022z
    ADD CONSTRAINT reports_prod_fkey_20201022z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201023z reports_prod_fkey_20201023z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201023z
    ADD CONSTRAINT reports_prod_fkey_20201023z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201024z reports_prod_fkey_20201024z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201024z
    ADD CONSTRAINT reports_prod_fkey_20201024z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201025z reports_prod_fkey_20201025z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201025z
    ADD CONSTRAINT reports_prod_fkey_20201025z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201026z reports_prod_fkey_20201026z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201026z
    ADD CONSTRAINT reports_prod_fkey_20201026z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201027z reports_prod_fkey_20201027z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201027z
    ADD CONSTRAINT reports_prod_fkey_20201027z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports_20201028z reports_prod_fkey_20201028z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201028z
    ADD CONSTRAINT reports_prod_fkey_20201028z FOREIGN KEY (producer_id) REFERENCES public.producers(id);


--
-- Name: reports reports_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_status_fkey FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201021z reports_status_fkey_20201021z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201021z
    ADD CONSTRAINT reports_status_fkey_20201021z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201022z reports_status_fkey_20201022z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201022z
    ADD CONSTRAINT reports_status_fkey_20201022z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201023z reports_status_fkey_20201023z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201023z
    ADD CONSTRAINT reports_status_fkey_20201023z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201024z reports_status_fkey_20201024z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201024z
    ADD CONSTRAINT reports_status_fkey_20201024z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201025z reports_status_fkey_20201025z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201025z
    ADD CONSTRAINT reports_status_fkey_20201025z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201026z reports_status_fkey_20201026z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201026z
    ADD CONSTRAINT reports_status_fkey_20201026z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201027z reports_status_fkey_20201027z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201027z
    ADD CONSTRAINT reports_status_fkey_20201027z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: reports_20201028z reports_status_fkey_20201028z; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.reports_20201028z
    ADD CONSTRAINT reports_status_fkey_20201028z FOREIGN KEY (status_id) REFERENCES public.report_statuses(id) ON DELETE CASCADE;


--
-- Name: resource_params resource_params_resource_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-puppetdb
--

ALTER TABLE ONLY public.resource_params
    ADD CONSTRAINT resource_params_resource_fkey FOREIGN KEY (resource) REFERENCES public.resource_params_cache(resource) ON DELETE CASCADE;


--
-- Name: DATABASE "pe-puppetdb"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-puppetdb" FROM PUBLIC;
GRANT CONNECT ON DATABASE "pe-puppetdb" TO "pe-puppetdb-migrator" WITH GRANT OPTION;
SET SESSION AUTHORIZATION "pe-puppetdb-migrator";
GRANT CONNECT ON DATABASE "pe-puppetdb" TO "pe-postgres";
RESET SESSION AUTHORIZATION;
GRANT CREATE,TEMPORARY ON DATABASE "pe-puppetdb" TO "pe-puppetdb";
GRANT TEMPORARY ON DATABASE "pe-puppetdb" TO PUBLIC;
SET SESSION AUTHORIZATION "pe-puppetdb-migrator";
GRANT CONNECT ON DATABASE "pe-puppetdb" TO "pe-puppetdb";
RESET SESSION AUTHORIZATION;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT CREATE ON SCHEMA public TO "pe-puppetdb";
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

--
-- Name: pe-rbac; Type: DATABASE; Schema: -; Owner: pe-postgres
--

CREATE DATABASE "pe-rbac" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE "pe-rbac" OWNER TO "pe-postgres";

\connect -reuse-previous=on "dbname='pe-rbac'"

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

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: delete_superuser_check(); Type: FUNCTION; Schema: public; Owner: pe-rbac
--

CREATE FUNCTION public.delete_superuser_check() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
IF id_is_superuser(OLD.id) THEN
RAISE EXCEPTION 'This user cannot be deleted.';
ELSE
RETURN OLD;
END IF;
END;
$$;


ALTER FUNCTION public.delete_superuser_check() OWNER TO "pe-rbac";

--
-- Name: id_is_superuser(uuid); Type: FUNCTION; Schema: public; Owner: pe-rbac
--

CREATE FUNCTION public.id_is_superuser(this_id uuid) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN EXISTS (SELECT 1 FROM subjects WHERE subjects.id = this_id AND subjects.is_superuser = true);
END;
$$;


ALTER FUNCTION public.id_is_superuser(this_id uuid) OWNER TO "pe-rbac";

--
-- Name: remove_superuser_roles_check(); Type: FUNCTION; Schema: public; Owner: pe-rbac
--

CREATE FUNCTION public.remove_superuser_roles_check() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
IF id_is_superuser(OLD.sid) AND rid_is_admin(OLD.rid) THEN
RAISE EXCEPTION 'This user''s roles cannot be changed.';
ELSE
RETURN OLD;
END IF;
END;
$$;


ALTER FUNCTION public.remove_superuser_roles_check() OWNER TO "pe-rbac";

--
-- Name: rid_is_admin(integer); Type: FUNCTION; Schema: public; Owner: pe-rbac
--

CREATE FUNCTION public.rid_is_admin(this_rid integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN EXISTS (SELECT 1 FROM roles WHERE roles.id = this_rid AND roles.display_name = 'Administrators');
END;
$$;


ALTER FUNCTION public.rid_is_admin(this_rid integer) OWNER TO "pe-rbac";

--
-- Name: update_superuser_check(); Type: FUNCTION; Schema: public; Owner: pe-rbac
--

CREATE FUNCTION public.update_superuser_check() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
IF id_is_superuser(OLD.id) THEN
IF OLD.login != NEW.login THEN
RAISE EXCEPTION 'This user''s login cannot be changed.';
ELSIF NEW.is_revoked AND NEW.login = 'api_user' THEN
RAISE EXCEPTION 'This user cannot be revoked.';
ELSIF NEW.is_superuser = false THEN
RAISE EXCEPTION 'This user must be a superuser.';
END IF;
END IF;
RETURN NEW;
END;
$$;


ALTER FUNCTION public.update_superuser_check() OWNER TO "pe-rbac";

--
-- Name: update_superuser_roles_check(); Type: FUNCTION; Schema: public; Owner: pe-rbac
--

CREATE FUNCTION public.update_superuser_roles_check() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
IF id_is_superuser(OLD.sid) AND rid_is_admin(OLD.rid) THEN
RAISE EXCEPTION 'This user''s roles cannot be changed.';
ELSE
RETURN NEW;
END IF;
END;
$$;


ALTER FUNCTION public.update_superuser_roles_check() OWNER TO "pe-rbac";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actions; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.actions (
    name text NOT NULL,
    display_name text,
    description text,
    object_type text NOT NULL,
    has_instances boolean
);


ALTER TABLE public.actions OWNER TO "pe-rbac";

--
-- Name: directory_settings; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.directory_settings (
    id integer NOT NULL,
    display_name text,
    help_link text,
    type text,
    hostname text,
    port integer,
    ssl boolean,
    login text,
    password text,
    connect_timeout integer,
    base_dn text,
    user_rdn text,
    user_display_name_attr text,
    user_email_attr text,
    user_lookup_attr text,
    group_rdn text,
    group_object_class text,
    group_name_attr text,
    group_member_attr text,
    group_lookup_attr text,
    ds_trust_chain text,
    start_tls boolean,
    disable_ldap_matching_rule_in_chain boolean,
    search_nested_groups boolean DEFAULT false,
    ds_pw_obfuscated boolean DEFAULT false,
    ssl_hostname_validation boolean DEFAULT true,
    ssl_wildcard_validation boolean DEFAULT false
);


ALTER TABLE public.directory_settings OWNER TO "pe-rbac";

--
-- Name: directory_settings_id; Type: SEQUENCE; Schema: public; Owner: pe-rbac
--

CREATE SEQUENCE public.directory_settings_id
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directory_settings_id OWNER TO "pe-rbac";

--
-- Name: directory_settings_id; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-rbac
--

ALTER SEQUENCE public.directory_settings_id OWNED BY public.directory_settings.id;


--
-- Name: groupings; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.groupings (
    gid uuid NOT NULL,
    ruid uuid NOT NULL
);


ALTER TABLE public.groupings OWNER TO "pe-rbac";

--
-- Name: object_types; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.object_types (
    object_type text NOT NULL,
    display_name text,
    description text
);


ALTER TABLE public.object_types OWNER TO "pe-rbac";

--
-- Name: permissions; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.permissions (
    id integer NOT NULL,
    object_type text,
    action text,
    instance text DEFAULT '*'::text NOT NULL
);


ALTER TABLE public.permissions OWNER TO "pe-rbac";

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-rbac
--

CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO "pe-rbac";

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-rbac
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    display_name public.citext,
    description text
);


ALTER TABLE public.roles OWNER TO "pe-rbac";

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: pe-rbac
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO "pe-rbac";

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pe-rbac
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: roles_permissions; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.roles_permissions (
    pid integer NOT NULL,
    rid integer NOT NULL
);


ALTER TABLE public.roles_permissions OWNER TO "pe-rbac";

--
-- Name: salt; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.salt (
    id integer NOT NULL,
    salt text,
    CONSTRAINT salt_check_single_row CHECK ((id = 1))
);


ALTER TABLE public.salt OWNER TO "pe-rbac";

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.schema_migrations (
    id bigint NOT NULL,
    applied timestamp without time zone,
    description character varying(1024)
);


ALTER TABLE public.schema_migrations OWNER TO "pe-rbac";

--
-- Name: subject_roles; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.subject_roles (
    sid uuid NOT NULL,
    rid integer NOT NULL
);


ALTER TABLE public.subject_roles OWNER TO "pe-rbac";

--
-- Name: subjects; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.subjects (
    id uuid NOT NULL,
    login public.citext,
    is_group boolean,
    is_remote boolean,
    is_superuser boolean,
    display_name text,
    email text,
    is_revoked boolean DEFAULT false,
    last_login timestamp without time zone,
    password text,
    reset_password_uuid uuid,
    failed_login_attempts integer DEFAULT 0,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.subjects OWNER TO "pe-rbac";

--
-- Name: tokens; Type: TABLE; Schema: public; Owner: pe-rbac
--

CREATE TABLE public.tokens (
    expiration timestamp with time zone NOT NULL,
    user_id uuid,
    token text,
    label text,
    creation timestamp with time zone NOT NULL,
    client text,
    description text,
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    timeout text,
    last_active timestamp with time zone,
    token_hash text NOT NULL
);


ALTER TABLE public.tokens OWNER TO "pe-rbac";

--
-- Name: directory_settings id; Type: DEFAULT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.directory_settings ALTER COLUMN id SET DEFAULT nextval('public.directory_settings_id'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Data for Name: actions; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.actions (name, display_name, description, object_type, has_instances) FROM stdin;
\.


--
-- Data for Name: directory_settings; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.directory_settings (id, display_name, help_link, type, hostname, port, ssl, login, password, connect_timeout, base_dn, user_rdn, user_display_name_attr, user_email_attr, user_lookup_attr, group_rdn, group_object_class, group_name_attr, group_member_attr, group_lookup_attr, ds_trust_chain, start_tls, disable_ldap_matching_rule_in_chain, search_nested_groups, ds_pw_obfuscated, ssl_hostname_validation, ssl_wildcard_validation) FROM stdin;
\.


--
-- Data for Name: groupings; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.groupings (gid, ruid) FROM stdin;
\.


--
-- Data for Name: object_types; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.object_types (object_type, display_name, description) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.permissions (id, object_type, action, instance) FROM stdin;
\.


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.roles (id, display_name, description) FROM stdin;
\.


--
-- Data for Name: roles_permissions; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.roles_permissions (pid, rid) FROM stdin;
\.


--
-- Data for Name: salt; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.salt (id, salt) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.schema_migrations (id, applied, description) FROM stdin;
\.


--
-- Data for Name: subject_roles; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.subject_roles (sid, rid) FROM stdin;
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.subjects (id, login, is_group, is_remote, is_superuser, display_name, email, is_revoked, last_login, password, reset_password_uuid, failed_login_attempts, created_at) FROM stdin;
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: pe-rbac
--

COPY public.tokens (expiration, user_id, token, label, creation, client, description, id, timeout, last_active, token_hash) FROM stdin;
\.


--
-- Name: directory_settings_id; Type: SEQUENCE SET; Schema: public; Owner: pe-rbac
--

SELECT pg_catalog.setval('public.directory_settings_id', 3, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-rbac
--

SELECT pg_catalog.setval('public.permissions_id_seq', 33, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pe-rbac
--

SELECT pg_catalog.setval('public.roles_id_seq', 4, true);


--
-- Name: actions actions_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (name, object_type);


--
-- Name: directory_settings directory_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.directory_settings
    ADD CONSTRAINT directory_settings_pkey PRIMARY KEY (id);


--
-- Name: groupings groupings_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.groupings
    ADD CONSTRAINT groupings_pkey PRIMARY KEY (gid, ruid);


--
-- Name: object_types object_types_display_name_key; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.object_types
    ADD CONSTRAINT object_types_display_name_key UNIQUE (display_name);


--
-- Name: object_types object_types_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.object_types
    ADD CONSTRAINT object_types_pkey PRIMARY KEY (object_type);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_triple; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_triple UNIQUE (object_type, action, instance);


--
-- Name: roles roles_display_name_key; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_display_name_key UNIQUE (display_name);


--
-- Name: roles_permissions roles_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.roles_permissions
    ADD CONSTRAINT roles_permissions_pkey PRIMARY KEY (pid, rid);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: salt salt_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.salt
    ADD CONSTRAINT salt_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_id_key; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_id_key UNIQUE (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (id);


--
-- Name: subjects subjects_login_key; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_login_key UNIQUE (login);


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_id_key; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_id_key UNIQUE (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_token_hash_unique; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_token_hash_unique UNIQUE (token_hash);


--
-- Name: subject_roles user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.subject_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (sid, rid);


--
-- Name: groupings_gid_idx; Type: INDEX; Schema: public; Owner: pe-rbac
--

CREATE INDEX groupings_gid_idx ON public.groupings USING btree (gid);


--
-- Name: groupings_ruid_idx; Type: INDEX; Schema: public; Owner: pe-rbac
--

CREATE INDEX groupings_ruid_idx ON public.groupings USING btree (ruid);


--
-- Name: subject_roles_sid_idx; Type: INDEX; Schema: public; Owner: pe-rbac
--

CREATE INDEX subject_roles_sid_idx ON public.subject_roles USING btree (sid);


--
-- Name: tokens_user_label_unique_idx; Type: INDEX; Schema: public; Owner: pe-rbac
--

CREATE UNIQUE INDEX tokens_user_label_unique_idx ON public.tokens USING btree (user_id, label);


--
-- Name: subjects delete_superuser_trigger; Type: TRIGGER; Schema: public; Owner: pe-rbac
--

CREATE TRIGGER delete_superuser_trigger BEFORE DELETE ON public.subjects FOR EACH ROW EXECUTE PROCEDURE public.delete_superuser_check();


--
-- Name: subject_roles remove_superuser_roles_trigger; Type: TRIGGER; Schema: public; Owner: pe-rbac
--

CREATE TRIGGER remove_superuser_roles_trigger BEFORE DELETE ON public.subject_roles FOR EACH ROW EXECUTE PROCEDURE public.remove_superuser_roles_check();


--
-- Name: subject_roles update_superuser_roles_trigger; Type: TRIGGER; Schema: public; Owner: pe-rbac
--

CREATE TRIGGER update_superuser_roles_trigger BEFORE UPDATE ON public.subject_roles FOR EACH ROW EXECUTE PROCEDURE public.update_superuser_roles_check();


--
-- Name: subjects update_superuser_trigger; Type: TRIGGER; Schema: public; Owner: pe-rbac
--

CREATE TRIGGER update_superuser_trigger BEFORE UPDATE ON public.subjects FOR EACH ROW EXECUTE PROCEDURE public.update_superuser_check();


--
-- Name: actions actions_object_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_object_type_fkey FOREIGN KEY (object_type) REFERENCES public.object_types(object_type) ON DELETE CASCADE;


--
-- Name: groupings groupings_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.groupings
    ADD CONSTRAINT groupings_gid_fkey FOREIGN KEY (gid) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: groupings groupings_ruid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.groupings
    ADD CONSTRAINT groupings_ruid_fkey FOREIGN KEY (ruid) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: permissions permissions_object_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_object_type_fkey FOREIGN KEY (object_type, action) REFERENCES public.actions(object_type, name) MATCH FULL ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: roles_permissions roles_permissions_pid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.roles_permissions
    ADD CONSTRAINT roles_permissions_pid_fkey FOREIGN KEY (pid) REFERENCES public.permissions(id) ON DELETE CASCADE;


--
-- Name: roles_permissions roles_permissions_rid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.roles_permissions
    ADD CONSTRAINT roles_permissions_rid_fkey FOREIGN KEY (rid) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: subject_roles subject_roles_rid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.subject_roles
    ADD CONSTRAINT subject_roles_rid_fkey FOREIGN KEY (rid) REFERENCES public.roles(id) ON DELETE CASCADE;


--
-- Name: subject_roles subject_roles_sid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.subject_roles
    ADD CONSTRAINT subject_roles_sid_fkey FOREIGN KEY (sid) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: tokens tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: pe-rbac
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.subjects(id) ON DELETE CASCADE;


--
-- Name: DATABASE "pe-rbac"; Type: ACL; Schema: -; Owner: pe-postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE "pe-rbac" FROM PUBLIC;
GRANT TEMPORARY ON DATABASE "pe-rbac" TO PUBLIC;
GRANT CONNECT ON DATABASE "pe-rbac" TO "pe-rbac-read";
GRANT CONNECT ON DATABASE "pe-rbac" TO "pe-rbac-write";


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT USAGE ON SCHEMA public TO PUBLIC;


--
-- Name: FUNCTION delete_superuser_check(); Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON FUNCTION public.delete_superuser_check() TO "pe-rbac-write";


--
-- Name: FUNCTION id_is_superuser(this_id uuid); Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON FUNCTION public.id_is_superuser(this_id uuid) TO "pe-rbac-write";


--
-- Name: FUNCTION remove_superuser_roles_check(); Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON FUNCTION public.remove_superuser_roles_check() TO "pe-rbac-write";


--
-- Name: FUNCTION rid_is_admin(this_rid integer); Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON FUNCTION public.rid_is_admin(this_rid integer) TO "pe-rbac-write";


--
-- Name: FUNCTION update_superuser_check(); Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON FUNCTION public.update_superuser_check() TO "pe-rbac-write";


--
-- Name: FUNCTION update_superuser_roles_check(); Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON FUNCTION public.update_superuser_roles_check() TO "pe-rbac-write";


--
-- Name: TABLE actions; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.actions TO "pe-rbac-read";
GRANT ALL ON TABLE public.actions TO "pe-rbac-write";


--
-- Name: TABLE directory_settings; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.directory_settings TO "pe-rbac-read";
GRANT ALL ON TABLE public.directory_settings TO "pe-rbac-write";


--
-- Name: SEQUENCE directory_settings_id; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON SEQUENCE public.directory_settings_id TO "pe-rbac-write";


--
-- Name: TABLE groupings; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.groupings TO "pe-rbac-read";
GRANT ALL ON TABLE public.groupings TO "pe-rbac-write";


--
-- Name: TABLE object_types; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.object_types TO "pe-rbac-read";
GRANT ALL ON TABLE public.object_types TO "pe-rbac-write";


--
-- Name: TABLE permissions; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.permissions TO "pe-rbac-read";
GRANT ALL ON TABLE public.permissions TO "pe-rbac-write";


--
-- Name: SEQUENCE permissions_id_seq; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON SEQUENCE public.permissions_id_seq TO "pe-rbac-write";


--
-- Name: TABLE roles; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.roles TO "pe-rbac-read";
GRANT ALL ON TABLE public.roles TO "pe-rbac-write";


--
-- Name: SEQUENCE roles_id_seq; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT ALL ON SEQUENCE public.roles_id_seq TO "pe-rbac-write";


--
-- Name: TABLE roles_permissions; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.roles_permissions TO "pe-rbac-read";
GRANT ALL ON TABLE public.roles_permissions TO "pe-rbac-write";


--
-- Name: TABLE salt; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.salt TO "pe-rbac-read";
GRANT ALL ON TABLE public.salt TO "pe-rbac-write";


--
-- Name: TABLE schema_migrations; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.schema_migrations TO "pe-rbac-read";
GRANT ALL ON TABLE public.schema_migrations TO "pe-rbac-write";


--
-- Name: TABLE subject_roles; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.subject_roles TO "pe-rbac-read";
GRANT ALL ON TABLE public.subject_roles TO "pe-rbac-write";


--
-- Name: TABLE subjects; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.subjects TO "pe-rbac-read";
GRANT ALL ON TABLE public.subjects TO "pe-rbac-write";


--
-- Name: TABLE tokens; Type: ACL; Schema: public; Owner: pe-rbac
--

GRANT SELECT ON TABLE public.tokens TO "pe-rbac-read";
GRANT ALL ON TABLE public.tokens TO "pe-rbac-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-rbac
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-rbac";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-rbac-write";


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON SEQUENCES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON SEQUENCES  TO "pe-rbac-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-rbac
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-rbac";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-rbac-write";


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON FUNCTIONS  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON FUNCTIONS  TO "pe-rbac-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-rbac
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-rbac";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-rbac-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-rbac" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-rbac-write";


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: pe-ha-replication
--

ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public REVOKE ALL ON TABLES  FROM "pe-ha-replication";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT SELECT ON TABLES  TO "pe-rbac-read";
ALTER DEFAULT PRIVILEGES FOR ROLE "pe-ha-replication" IN SCHEMA public GRANT ALL ON TABLES  TO "pe-rbac-write";


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.9
-- Dumped by pg_dump version 11.9

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

