-- Create "users" table
CREATE TABLE "users" ("id" serial NOT NULL, "name" character varying(100) NOT NULL, "email" character varying(100) NOT NULL, PRIMARY KEY ("id"));
-- Create "posts" table
CREATE TABLE "posts" ("id" serial NOT NULL, "user_id" integer NOT NULL, "title" character varying(100) NOT NULL, "body" text NOT NULL, "created_at" timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY ("id"), CONSTRAINT "posts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON UPDATE NO ACTION ON DELETE NO ACTION);
