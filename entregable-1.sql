CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "course_id" int,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" text NOT NULL,
  "age" int,
  "role_id" int NOT NULL
);

CREATE TABLE "courses" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" text NOT NULL,
  "course_level_id" int NOT NULL,
  "category_id" int,
  "teacher" varchar NOT NULL
);

CREATE TABLE "courses_levels" (
  "id" int PRIMARY KEY,
  "level" varchar NOT NULL
);

CREATE TABLE "course_videos" (
  "id" int PRIMARY KEY,
  "title" varchar NOT NULL,
  "URL" varchar NOT NULL,
  "course_id" int NOT NULL
);

CREATE TABLE "categories" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" int PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "users" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("category_id") REFERENCES "categories" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("course_level_id") REFERENCES "courses_levels" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

insert into roles (id, name) values (
	1,
	'admin'
),(
	2,
	'teacher'
),(
	3,
	'student'
);

insert into courses_levels (id, level) values (
	1,
	'easy'
),(
	2,
	'normal'
),(
	3,
	'hard'
);

insert into categories (id, name) values (
	1,
	'engineering'
),(
	2,
	'arts and design'
),(
	3,
	'medicine'
),(
	4,
	'marketing'
);

insert into courses (id, title, description, course_level_id, category_id, teacher) values (
	1,
	'ingenieria mecanica',
	'La ingeniería mecánica es una de las ramas más antiguas de la ingeniería. Combina los principios de la física de la ingeniería y las matemáticas con la ciencia de los materiales, a fin de diseñar, analizar, fabricar y mantener sistemas mecánicos.',
	3,
	1,
	'Carbajal, ElMariana'
),(
	2,
	'fotografia',
	'La fotografía (de foto- y -grafía)​ es el arte y la técnica de obtener imágenes duraderas debido a la acción de la luz. ​ Es el proceso de proyectar imágenes, capturarlas y plasmarlas bien por medio del fijado en un medio sensible a la luz o por la conversión en señales electrónicas.',
	1,
	2,
	'Salazar, Pablots'
),(
	3,
	'diseño publicitario',
	'¿Qué es el diseño publicitario? El diseño publicitario engloba todos aquellos elementos cuyo objetivo es presentar una empresa, negocio, servicio o producto y despertar la curiosidad e interés del público. Son varios los elementos que podemos incluir dentro de este concepto.',
	2,
	4,
	'Jairo Garcia, el calvo'
),(
	4,
	'primeros auxilios',
	'Los primeros auxilios son aquellas medidas inmediatas que se toman en una persona lesionada, inconsciente o súbitamente enferma, en el sitio donde ha ocurrido el incidente (escena) y hasta la llegada de la asistencia sanitaria (servicio de emergencia).',
	1,
	3,
	'Quintana, SovietWomble'
),(
	5,
	'ingenieria de sistemas',
	'Los ingenieros de sistemas diseñan, desarrollan y mejoran sistemas de ingeniería. Trabajan en el sistema completo y pueden estar implicados en todos los aspectos del diseño, desarrollo, integración, fabricación y marketing.',
	3,
	1,
	'Prada, Mendoza'
);

insert into users (id, course_id, name, email, password, age, role_id) values (
	'8662c16f-a41b-49f5-b6ed-7a830c98abf5',
	null,
	'David Martinez',
	'DavidMartinez@gmail.com',
	'Adam Smasher',
	22,
	1
),(
	'13c09225-4b40-4369-826f-436e17af23d4',
	null,
	'Jordan Shoriner',
	'JordanShoriner@gmail.com',
	'sweetyCat',
	60,
	2
),(
	'cea0381e-e2f0-4ae4-a857-fb7122f821ef',
	4,
	'Juan Alberto',
	'JuanAlberto@gmail.com',
	'juanitocamelas',
	17,
	3
),(
	'6eb89e11-1b8c-46a5-a0d8-9fe9053849e1',
	null,
	'Geison Torrentes',
	'GeisonTorrentes@gmial.com',
	'tarantinopla',
	32,
	2
),(
	'fec622f6-8f58-4522-9897-7d59da7f005e',
	2,
	'Marcos Bahia',
	'MarcosBahia@gmail.com',
	'diavenger',
	24,
	3
),(
	'8b094d99-5252-4578-b253-e011e557efcb',
	5,
	'Pablo Escamilla',
	'PabloEscamilla@gmail.com',
	'yeyquintupley',
	18,
	3
);

insert into course_videos (id, title, "URL"  , course_id) values (
	1,
	'introduccion a la mecanica',
	'https://www.youtube.com/watch?v=uzKnnNizimM',
	1
),(
	2,
	'RCP',
	'https://www.youtube.com/watch?v=A0mwqH152oo',
	4
),(
	3,
	'configuracion de camara',
	'https://www.youtube.com/watch?v=w69hqBnZxZE',
	2
),(
	4,
	'introduccion a la ingenieria de sistemas',
	'https://www.youtube.com/watch?v=7knXXEB5lzY',
	5
);