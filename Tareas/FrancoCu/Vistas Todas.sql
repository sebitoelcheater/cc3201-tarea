--vista 1 (la cantidad de likes y dislikes de las peliculas (pelicula, like, dislike))
create view cc320114_db.likeo_peliculas as
select t1.t as pelicula, t1.l as likes, t2.dl as dislikes 
from cc320114_db.likeo_peliculas_likes as t1
join cc320114_db.likeo_peliculas_dislikes as t2
on t1.t = t2.t;

create view cc320114_db.likeo_peliculas_likes as
select p.titulo as t, SUM(CASE WHEN l.type = 1 THEN 1 ELSE 0 END) as l
from cc320114_db.peliculas as p
left join cc320125_db.source as s 
on p.pelicula_id = s.id_source 
join cc320125_db.liking as l
on s.id = l.id_source
group by p.titulo;

	
create view cc320114_db.likeo_peliculas_dislikes as
select p.titulo as t, SUM(CASE WHEN l.type = 0 THEN 1 ELSE 0 END) as dl
from cc320114_db.peliculas as p
left join cc320125_db.source as s 
on p.pelicula_id = s.id_source 
join cc320125_db.liking as l
on s.id = l.id_source
group by p.titulo;

-----------------------------------------------------------------------------------------------------------------------------
-- vista 2 los proveedores y la cantidad de peliculas que ofrecen de cierto genero (en este caso drama)
create view cc320114_db.union_servicios as
select us.empresa as proveedor, g.genero as genero, count(g.pelicula) as n_peliculas
from cc320114_db.genero as g 
join cc320114_db.peliculas as p
on g.pelicula = p.pelicula_ID
join cc320151_db.Usuario_servicio_base as us
on p.titulo = us.Nombre_servicio
group by us.empresa, g.genero

union

select utp.Empresa as proveedor, g.genero as genero, count(g.pelicula) as n_peliculas
from cc320114_db.genero as g
join cc320114_db.peliculas as p
on g.pelicula = p.pelicula_ID,
cc320151_db.Triple_Plan as tp
join cc320151_db.Usuario_Triple_Plan as utp
on tp.Nombre = utp.Nombre_servicio
where (p.titulo =tp.Elemento1 or p.titulo =tp.Elemento2 or p.titulo =tp.Elemento3)
group by utp.empresa, g.genero

union

select utp.Empresa as proveedor, g.genero as genero, count(g.pelicula) as n_peliculas
from cc320114_db.genero as g
join cc320114_db.peliculas as p
on g.pelicula = p.pelicula_ID,
cc320151_db.Tetra_Plan as tp
join cc320151_db.Usuario_Tetra_Plan as utp
on tp.Nombre = utp.Nombre_servicio
where (p.titulo =tp.Elemento1 or p.titulo =tp.Elemento2 or p.titulo =tp.Elemento3 or p.titulo =tp.Elemento4)
group by utp.empresa, g.genero;

-- view sumadora

create view empresas_genero_peliculas as
select u.proveedor as proveedor, u.genero as genero, sum(u.n_peliculas) as n_peliculas
from union_servicios as u
group by u.proveedor, u.genero;

-------------------------------------------------------------------------------
--otra vista: los usuarios que son amigos y que contratan uno o mas servicio del mismo proveedor (usuario1, usuario2, servicio, proveedor)

create view cc320114_db.amigos_servicios as
select u1.name as usuario1, u2.name as usuario2, usb1.Nombre_servicio as servicio, usb1.Empresa as proveedor
from cc320125_db.user as u1 
join cc320125_db.friendship as f on u1.id = f.id_requester
join cc320125_db.user as u2 on f.id_requested = u2.id
join cc320151_db.Contacto_correo as cc1 on u1.mail = cc1.Correo_electronico
join cc320151_db.Usuario_servicio_base as usb1 on cc1.Rut = usb1.Rut
join cc320151_db.Contacto_correo as cc2 on u2.mail = cc2.Correo_electronico
join cc320151_db.Usuario_servicio_base as usb2 on cc2.Rut = usb2.Rut
where usb1.Nombre_servicio = usb2.Nombre_servicio

union

select u1.name as usuario1, u2.name as usuario2, utp1.Nombre_servicio as servicio, utp1.Empresa as proveedor
from cc320125_db.user as u1 
join cc320125_db.friendship as f on u1.id = f.id_requester
join cc320125_db.user as u2 on f.id_requested = u2.id
join cc320151_db.Contacto_correo as cc1 on u1.mail = cc1.Correo_electronico
join cc320151_db.Usuario_Triple_Plan as utp1 on cc1.Rut = utp1.Rut
join cc320151_db.Contacto_correo as cc2 on u2.mail = cc2.Correo_electronico
join cc320151_db.Usuario_Triple_Plan as utp2 on cc2.Rut = utp2.Rut
where utp1.Nombre_servicio = utp2.Nombre_servicio

union 

select u1.name as usuario1, u2.name as usuario2, utp1.Nombre_servicio as servicio, utp1.Empresa as proveedor
from cc320125_db.user as u1 
join cc320125_db.friendship as f on u1.id = f.id_requester
join cc320125_db.user as u2 on f.id_requested = u2.id
join cc320151_db.Contacto_correo as cc1 on u1.mail = cc1.Correo_electronico
join cc320151_db.Usuario_Tetra_Plan as utp1 on cc1.Rut = utp1.Rut
join cc320151_db.Contacto_correo as cc2 on u2.mail = cc2.Correo_electronico
join cc320151_db.Usuario_Tetra_Plan as utp2 on cc2.Rut = utp2.Rut
where utp1.Nombre_servicio = utp2.Nombre_servicio;

-------------------------------------------------------------------------------
--otra vista: los usuarios con mas de n followers, la cantidad de followers y los servicios que contratan (usuario, n° followers, servicios) 

create view cc320114_db.n_followers as
select u.name as nombre, u.mail as mail, count(f.id_follower) as n_followers 
from cc320125_db.user as u
join cc320125_db.following as f
on u.id = f.id_followed 
group by u.id

create view cc320114_db.followers_servicios as
select nf1.nombre as nombre, nf1.n_followers as n_followers, usb1.Nombre_servicio as servicio
from cc320114_db.n_followers as nf1
join cc320151_db.Contacto_correo as cc1 on nf1.mail = cc1.Correo_electronico
join cc320151_db.Usuario_servicio_base as usb1 on cc1.Rut = usb1.Rut
order by nf1.n_followers desc

-------------------------------------------------------------------------------------------
--vista pablo: directores con sus peliculas mas caras

create view cc320114_db.Directores_pelicula as 
	Select peliculas.director as Director, peliculas.titulo as Pelicula, MAX(Servicios_base.precio) as Precio 
	From cc320114_db.peliculas, cc320151_db.Servicios_base 
	Where Servicios_base.Servicio = 'Streaming' and Servicios_base.Nombre_servicio = peliculas.titulo 
	Group by (peliculas.director)
	Order by (precio) asc;
	
-------------------------------------------------------------------------------------------
--vista pablo: likes y dislikes de los tags de actores

create view cc320114_db.dlikes as
	Select DISTINCT (tag_liking.id_user) as Users,actores.nombre as Actor,tag_liking.id_tag as id_tag,tag_liking.type as type
	From cc320125_db.tag,cc320125_db.tag_liking,cc320114_db.actores
	Where tag_liking.type=0 and tag.id=tag_liking.id_tag and tag.tag=actores.nombre;

create view cc320114_db.likes as
	Select DISTINCT (tag_liking.id_user) as Users,actores.nombre as Actor,tag_liking.id_tag as id_tag,tag_liking.type as type
	From cc320125_db.tag,cc320125_db.tag_liking,cc320114_db.actores
	Where tag_liking.type=1 and tag.id=tag_liking.id_tag and tag.tag=actores.nombre;

create view cc320114_db.likes_num as
	Select actores.nombre as Actor,Count(id_tag) as likes
	From cc320114_db.actores
	Left join cc320114_db.likes on actores.nombre=likes.Actor
	Group by(Actor);

create view cc320114_db.dlikes_num as
	Select actores.nombre as Actor,Count(id_tag) as dlikes
	From cc320114_db.actores
	Left join cc320114_db.dlikes on actores.nombre=dlikes.Actor
	Group by(Actor);

create view cc320114_db.Tag_de_actores as
	Select Distinct(dlikes_num.Actor) as Actor, likes_num.likes as Likes, dlikes_num.dlikes as Dislikes
	From cc320114_db.dlikes_num,cc320114_db.likes_num
	Where dlikes_num.Actor=likes_num.Actor
	Order by (Actor) asc;



