exec { 'touch /root/ledivan.txt':
  path     => '/usr/bin:/usr/sbin:/bin',
  provider => shell,
  unless  => 'test -f /etc/r.conf',
}



                                          Lista de roles
     Nome da role      |                         Atributos                         |   Membro de
-----------------------+-----------------------------------------------------------+---------------
 pe-activity           | Super-usuário                                             | {}
 pe-activity-read      |                                                           | {}
 pe-activity-write     |                                                           | {}
 pe-classifier         | Super-usuário                                             | {}
 pe-classifier-read    |                                                           | {}
 pe-classifier-write   |                                                           | {}
 pe-ha-replication     | Super-usuário                                             | {}
 pe-inventory          | Super-usuário                                             | {}
 pe-inventory-read     |                                                           | {}
 pe-inventory-write    |                                                           | {}
 pe-orchestrator       | Super-usuário                                             | {}
 pe-orchestrator-read  |                                                           | {}
 pe-orchestrator-write |                                                           | {}
 pe-postgres           | Super-usuário, Cria role, Cria BD, Replicação, Ignora RLS | {}
 pe-puppetdb           |                                                           | {}
 pe-puppetdb-migrator  |                                                           | {pe-puppetdb}
 pe-rbac               | Super-usuário                                             | {}
 pe-rbac-read          |                                                           | {}
 pe-rbac-write         |                                                           | {}
 
 


[main]
server = puppet-master.ledivan.com.br
certname = db.ledivan.com.br
dns_alt_names = database.ledivan.com.br,db.ledivan.com.br
# This file can be used to override the default puppet settings.
# See the following links for more details on what settings are available:
# - https://puppet.com/docs/puppet/latest/config_important_settings.html
# - https://puppet.com/docs/puppet/latest/config_about_settings.html
# - https://puppet.com/docs/puppet/latest/config_file_main.html
# - https://puppet.com/docs/puppet/latest/configuration.html
user = pe-puppet
group = pe-puppet

[agent]
graph = true
server_list = puppet-master.ledivan.com.br:8140



https://puppet.com/docs/puppet/6.17/ssl_regenerate_certificates.html

/opt/puppetlabs/server/data/packages/public/2019.8.1

https://puppet.master.com.br:8140/packages/2019.8.1

[puppet_enterprise]
name=Puppet, Inc. PE Packages $releasever - $basearch
baseurl=https://puppet.master.com.br:8140/packages/2019.8.1/puppet_enterprise
enabled=True
gpgcheck=1
gpgkey=https://puppet.master.com.br:8140/packages/GPG-KEY-puppet
	https://puppet.master.com.br:8140/packages/GPG-KEY-puppet-2025-04-06
proxy=_none_
sslcacert=/etc/puppetlabs/puppet/ssl/certs/ca.pem
sslclientcert=/etc/puppetlabs/puppet/ssl/certs/db.ledivan.com.br.pem
sslclientkey=/etc/puppetlabs/puppet/ssl/private_keys/db.ledivan.com.br.pem

curl -k https://puppet.master.com.br:8140/packages/current/install.bash | sudo bash -s main:dns_alt_names=puppet.master.com.br,p.ledivan.com.br,master.ledivan.com.br,ledivan.com.br,puppet.ledivan.com.br,puppet.master.com.br

dns_alt_names = master.ledivan.com.br,ledivan.com.br,puppet.ledivan.com.br,puppet.master.com.br


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
