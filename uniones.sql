select genres.name, series.title 
from genres inner join series on 
genres.id = series.genre_id; 
-- consulta de una tabla con una TEA 
select episodes.title, actors.first_name, actors.last_name
from episodes
inner join actor_episode on actor_episode.episode_id=episodes.id
inner join actors on actors.id= actor_episode.actor_id ;

select distinct actors.first_name ,actors.last_name , movies.title
from actors
inner join actor_movie on actor_movie.actor_id =actors.id
inner join movies on movies.id = actor_movie.movie_id 
where movies.title like '%la guerra de las%';

select movies.title , COALESCE(genres.name, 'NO TIENE GENERO') 
from movies 
left join genres on movies.genre_id = genres.id;

select genres.name , COALESCE(movies.title, 'NO HAY PELICULA') 
from movies 
right join genres on movies.genre_id = genres.id;

select title ,datediff(end_date,release_date) as duracion
from series;
-- Listar los actores ordenados alfabéticamente cuyo nombre sea mayor a 6 caracteres.
select first_name from actors where LENGTH(first_name) > 6 order by first_name ;

-- Debemos mostrar la cantidad total de los episodios guardados en la base de datos.

select count(id) as cantidad from episodes;

/* Para el siguiente desafío nos piden que obtengamos el título de todas las series y el total
de temporadas que tiene cada una de ellas.*/

select series.title , count(seasons.number)
from series 
inner join seasons on series.id=seasons.serie_id group by series.title;

/*Mostrar, por cada género, la cantidad total de películas que posee, siempre que sea mayor
o igual a 3*/

select genres.name, count(movies.title) as cantidad_pelis
from genres 
inner join movies on genres.id =movies.genre_id 
GROUP BY genres.name having count(movies.title)>2
