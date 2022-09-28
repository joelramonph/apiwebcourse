CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar(30) NOT NULL,
  "email" varchar(20) UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" integer,
  "roles_id" uuid
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar(30) NOT NULL,
  "description" varchar(70) NOT NULL,
  "level" varchar(20) NOT NULL,
  "courses_videos_id" uuid,
  "teachers_id" uuid,
  "categorys_id" uuid,
  "users_id" uuid
);

CREATE TABLE "teachers" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar(20) NOT NULL,
  "last_name" varchar(20) NOT NULL,
  "title" varchar
);

CREATE TABLE "courses_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar(20) NOT NULL,
  "url" varchar(60) NOT NULL
);

CREATE TABLE "categorys" (
  "id" uuid PRIMARY KEY,
  "name" varchar(20) NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar(20) NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("teachers_id") REFERENCES "teachers" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("courses_videos_id") REFERENCES "courses_videos" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("roles_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categorys_id") REFERENCES "categorys" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");


insert  into roles 
(
id, 
name) values (
'6ce4b005-815c-4e8c-bd4c-300c45bb9c2a', 
'teacher'
);

insert into users(
id,
name,
email,
password,
age,
roles_id) values(

'37cc8059-01fd-4c0a-908c-14b2f3dc4322',
'joel parra',
'123456',
'joel.parra@gmail.com',
 52,
'72ecf6a3-28f2-4bb6-b524-1c53dc8d4770'
),
(
'04496889-0cf0-4ecc-8ae0-00af980f8cfc',
'Kira Barrios',
'78901',
'kira.barrios@gmail.com',
35,
'6ce4b005-815c-4e8c-bd4c-300c45bb9c2a'
);

insert into courses(
id,
title,
description,
level,
courses_videos_id,
teachers_id,
categorys_id,
users_id
)values(
'0c75c86d-b0a1-4f28-a50c-c3936e192dab',
'NodeJS',
'Fundamentos de node para begginers',
'Beginers',
'70c1d009-fe90-4cc0-84b2-99cdefc21131',
'dfabea17-b85a-445c-8399-0f6bde78d2f8',
'14a33012-1d4b-4b94-a393-54755bf1e08e',
'04496889-0cf0-4ecc-8ae0-00af980f8cfc'
),
(
'a093e89d-47c4-4035-bbf3-a15658cf6c72',
'NodeJS',
'Fundamentos de node js',
'Avance',
'b88672a8-e5cc-4fd2-8321-f14666efaef1',
'43313742-846a-4049-af78-3d1cbcc30e37',
'bbcdd818-f2b1-494b-ac29-8e5ab5e74609',
'37cc8059-01fd-4c0a-908c-14b2f3dc4322'
);

insert into teachers(
id,
first_name,
last_name,
title
)values(
'dfabea17-b85a-445c-8399-0f6bde78d2f8',
'Kira',
'Barrios',
'Teacher'
),
(
'43313742-846a-4049-af78-3d1cbcc30e37',
'Jesus',
'Flores',
'Teacher'
);

insert into courses_videos(
id,
title,
url
)values(
'70c1d009-fe90-4cc0-84b2-99cdefc21131',
'Fundametos React',
'http://home/fundamentos_react'
),
(
'b88672a8-e5cc-4fd2-8321-f14666efaef1',
'Fundamentos NodeJs',
'http://home//fundamentos_nodejs'
);

insert into categorys(
id,
name
)values(
'14a33012-1d4b-4b94-a393-54755bf1e08e',
'frontend'
),
(
'bbcdd818-f2b1-494b-ac29-8e5ab5e74609',
'backend'
)




