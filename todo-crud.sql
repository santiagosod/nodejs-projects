CREATE TABLE "homeworks" (
  "id" int PRIMARY KEY,
  "to_do" varchar NOT NULL,
  "date_to_do" timestamp,
  "is_finished" boolean NOT NULL
);

insert into homeworks (id, to_do, date_to_do, is_finished) 
values(
	1,
	'clean house',
	'2020/08/20',
	true
),
(
	2, 
	'go to work',
	'2020/07/12',
	false
),
(
	3,
	'feed the cat',
	'2020/07/18',
	true
)

--GET values

select * from homeworks

select * from homeworks where is_finished = true

select id, to_do, date_to_do  from homeworks where to_do = 'clean house'

select * from homeworks where date_to_do > '2020/07/30'