--vista 1 (la cantidad de likes y dislikes de las peliculas (pelicula, like, dislike))
create view cc320114_db.likeo_peliculas as
select t1.t as pelicula, t1.l as likes, t2.dl as dislikes 
from cc320114_db.likeo_peliculas_likes as t1 join cc320114_db.likeo_peliculas_dislikes as t2 on t1.t = t2.t;

create view cc320114_db.likeo_peliculas_likes as
select p.titulo as t, count(l.type) as l
from cc320114_db.peliculas as p
join cc320125_db.source as s 
on p.pelicula_id = s.id_source 
join cc320125_db.liking as l
on s.id = l.id_source 
where l.type = 1
group by l.id_source;
	
create view cc320114_db.likeo_peliculas_dislikes as
select p.titulo as t, count(l.type) as dl
from cc320114_db.peliculas as p
join cc320125_db.source as s 
on p.pelicula_id = s.id_source 
join cc320125_db.liking as l
on s.id = l.id_source 
where l.type = 0
group by l.id_source;

-- vista 2 los proveedores y la cantidad de peliculas que ofrecen de cierto genero (en este caso drama)
create view cc320114_db.empresas_peliculas_drama as
select us.empresa as proveedor, count(g.pelicula) as n_peliculas
from cc320114_db.genero as g 
join cc320114_db.peliculas as p
on g.pelicula = p.pelicula_ID
join cc320151_db.Usuario_servicio_base as us
on p.titulo = us.Nombre_servicio
where g.genero = 'drama'
group by us.empresa

union

select utp.Empresa as proveedor, count(g.pelicula) as n_peliculas
from cc320114_db.genero as g
join cc320114_db.peliculas as p
on g.pelicula = p.pelicula_ID,
cc320151_db.Triple_Plan as tp
join cc320151_db.Usuario_Triple_Plan as utp
on tp.Nombre = utp.Nombre_servicio
where (p.titulo =tp.Elemento1 or p.titulo =tp.Elemento2 or p.titulo =tp.Elemento3) and g.genero = 'drama'

union

select utp.Empresa as proveedor, count(g.pelicula) as n_peliculas
from cc320114_db.genero as g
join cc320114_db.peliculas as p
on g.pelicula = p.pelicula_ID,
cc320151_db.Triple_Plan as tp
join cc320151_db.Usuario_Tetra_Plan as utp
on tp.Nombre = utp.Nombre_servicio
where (p.titulo =tp.Elemento1 or p.titulo =tp.Elemento2 or p.titulo =tp.Elemento3) and g.genero = 'drama';
