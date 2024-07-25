insert into genres (name,ranking,active)
values ('investigación',13,1)

update genres set name ='investigacion científica' 
where name='investigación'

select name,id from genres;

delete from genres where id=13;

select * from movies;

select first_name,last_name,rating from actors;

select title from series;

select first_name,last_name from actors where rating >7.5;

select title,rating,awards from movies where rating >7.5 and awards>2 order by rating

select title from movies limit 3;

select title, rating from movies;

select title,rating from movies order by rating desc limit 5;

select title,rating from movies order by rating desc limit 10;

select first_name,last_name from actors limit 10;

select first_name,last_name from actors limit 10 offset 21;

select title,rating from movies where title like "%Harry potter%";

select first_name,last_name from actors where first_name like "%Sam%"

select title,release_date from movies where release_date between '2004-01-01' and '2008-12-30'