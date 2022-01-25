-- Adminer 4.8.1 PostgreSQL 9.6.24 dump

DROP TABLE IF EXISTS "articles";
DROP SEQUENCE IF EXISTS articles_id_seq;
CREATE SEQUENCE articles_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 9223372036854775807 START 1 CACHE 1;

CREATE TABLE "public"."articles" (
    "id" integer DEFAULT nextval('articles_id_seq') NOT NULL,
    "title" character varying NOT NULL,
    "content" text NOT NULL,
    "created_at" date NOT NULL,
    "updated_at" date NOT NULL,
    CONSTRAINT "articles_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "articles" ("id", "title", "content", "created_at", "updated_at") VALUES
(1,	'My article title',	'My article content',	'2022-01-23',	'2022-01-23');

-- 2022-01-23 13:27:29.649436+00