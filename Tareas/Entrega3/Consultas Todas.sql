
select l.pelicula, d.Director, l.dislikes as n_dislikes, d.Precio
from cc320114_db.likeo_peliculas as l join cc320114_db.Directores_pelicula as d on l.pelicula = d.Pelicula
where l.dislikes > 2 and l.likes < 3;

----------

select f.nombre, f.n_followers, f.servicio, s.Precio
from cc320114_db.followers_servicios as f join cc320151_db.Servicios_base as s on f.servicio = s.Nombre_servicio
where n_followers > 4;

---------
select s.pelicula, s.director, s.total_likes_pelicula, s.total_likes_elenco
from(
	select p.titulo as pelicula, p.director as director, l.likes - l.dislikes as total_likes_pelicula, sum(t.Likes - t.Dislikes) as total_likes_elenco 
	from cc320114_db.peliculas as p
	join cc320114_db.likeo_peliculas as l on p.titulo = l.pelicula 
	join cc320114_db.casting as c on p.pelicula_ID = c.pelicula  
	join cc320114_db.Tag_de_actores as t on c.actor = t.Actor
	group by l.pelicula) as s
where total_likes_pelicula < 2 and total_likes_elenco > 2;
