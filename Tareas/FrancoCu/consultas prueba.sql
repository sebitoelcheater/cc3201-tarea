--Directores hombres que han dirigido peliculas que han ganado mas de $10.000.000 en recaudación, con la respectiva pelicula (puede ser un empresario codicioso y machista).
select d.nombre, p.titulo, p.recaudacion
from directores as d, peliculas as p
where d.nombre=p.director and d.sexo='masculino' and p.recaudacion > 10000000;

--

--Peliculas que hayan ganado un premio y que duren menos de 100 minutos (puede ser un cliente exigente pero con poco tiempo libre).
select p.titulo, pp.premio, p.duracion_min
from peliculas as p, premios_peliculas as pp
where p.titulo=pp.pelicula and p.duracion_min < 100;

--

--Actor que haya trabajado en una pelicula que sea del mismo pais que su nacionalidad y que no sea de animacion, con la respectiva pelicula (sinceramente no sé por qué alguien querría eso)
select a.nombre, p.titulo, p.pais
from peliculas as p, actores as a, casting as c
where p.titulo=c.pelicula and a.nombre=c.actor and a.nacionalidad=p.pais and p.animacion='no'; 

--------------------------------------------------------

--consultas pedidas

--Lista de peliculas estrenadas el 2012 junto con algunos detalles de las peliculas (lo cambie a 2013 porque no tenia ni una en 2013)
select distinct p.titulo, p.año, p.resumen
from peliculas as p join estrenos as e on p.pelicula_ID = e.pelicula
where e.fecha_estreno >= '2013-01-01' and
e.fecha_estreno < '2014-01-01';

--Lista con las 6 películas Chilenas más premiadas de un año determinado (lo cambia a peliculas de EEUU porque tengo mas, aun asi necesito mas peliculas)

select p.titulo, count(pp.premio) as 'cantidad de premios'
from peliculas as p join premios_peliculas as pp on p.pelicula_ID = pp.pelicula
where p.pais = 'Estados Unidos'
group by p.titulo
order by count(pp.premio) desc
limit 6;

--Lista con todas las películas a cargo de director Chileno bajo una productora determinada (lo cambie a EEUU porque tengo mas peliculas, la productora elegida es Patapon Pictures)

select p.titulo
from peliculas as p join directores as d on p.director = d.nombre
where p.productora = 'Patapon Pictures' and
d.nacionalidad = 'Estados Unidos';

--Lista de las películas que ha dirigido un determinado director bajo una productora determinada (Director: Stanley Kirby Prodctora: Argmax)
select p.titulo
from peliculas as p join directores as d on p.director = d.nombre
where p.productora = 'Argmax' and
d.nombre = 'Stanley Kirby';

--Lista de los actores que han participado en más de N películas del género drama (con N un input entregado por el usuario) (N = 1)
select a.nombre as 'nombre actor', count(a.nombre) as 'n peliculas'
from actores as a, casting as c, peliculas as p, genero as g
where a.nombre = c.actor
and p.pelicula_ID = c.pelicula
and p.pelicula_ID = g.pelicula 
and g.genero = 'drama'
group by a.nombre
having(count(a.nombre) > 1);

--Director con más premios en sus películas dirigidas
select e.nombre as 'nombre director', max(e.c) as 'nro premios' 
from(
	select d.nombre, count(d.nombre) as c
	from directores as d join peliculas as p on d.nombre = p.director
	join premios_peliculas as pp on p.pelicula_ID = pp.pelicula
	group by d.nombre) e;
	
--Actor con más años en el rubro del cine (años en rubro = año ultima pelicula - año primera pelicula)

select nombre1 as nombre, año_max - año_min as años_rubro
from(
	select a.nombre as nombre1, min(p.año) as año_min
	from peliculas as p join casting as c on p.pelicula_ID = c.pelicula join actores as a on c.actor = a.nombre
	group by a.nombre) as t1

join(
	select a.nombre as nombre2, max(p.año) as año_max
	from peliculas as p join casting as c on p.pelicula_ID = c.pelicula join actores as a on c.actor = a.nombre
	group by a.nombre) as t2
on t1.nombre1 = t2.nombre2
order by años_rubro desc
limit 1;

--Todas las películas en donde el director también es actor y que se encuentran actualmente en cartelera en mi ciudad. (hoy es 2014-01-05, mi ciudad es Concepcion)
select p.titulo
from peliculas as p join estrenos as e on p.pelicula_ID = e.pelicula join cines as c on e.cine = c.nombre_cine join casting as ca on p.pelicula_ID = ca.pelicula join actores as a on ca.actor = a.nombre
where p.director = a.nombre and
e.fecha_estreno <= '2014-01-05' and
e.fecha_retiro >= '2014-01-05' and
c.ciudad = 'Concepcion';

