-- tabla que contiene el nombre de los directores, con su sexo, nacionalidad y fecha de nacimiento
-- llave primaria: nombre
create table directores(nombre varchar(100) primary key, sexo varchar(10), nacionalidad varchar(20), fecha_de_nacimiento date);

-- tabla que contiene el nombre de los actores, con su sexo, nacionalidad y fecha de nacimiento
-- llave primaria: nombre
create table actores(nombre varchar(100) primary key, sexo varchar(10), nacionalidad varchar(20), fecha_de_nacimiento date);

-- tabla que contiene los cines y la ciudad donde estan
-- llave primaria:nombre_cine
create table cines(nombre_cine varchar(100) primary key, ciudad varchar(100));

-- tabla que contiene las peliculas con, la informacion basica: titulo, genero, director, productora, duracion en minutos, pais de origen, presupuesto, recaudacion, si es de animacion o no, si es a color o no, y resumen de la pelicula
-- llave primaria: pelicula_ID
-- llave foranea: director
create table peliculas(pelicula_ID int primary key, titulo varchar(100), año int, director varchar(50), productora varchar(20), duracion_min int, pais varchar(20), presupuesto int, recaudacion int, animacion varchar(4), color varchar(15), resumen varchar(1000), foreign key(director) references directores(nombre));

-- tabla que contiene todas las peliculas que han ganado un premio, junto con el premio ganado
-- llave foranea: pelicula
create table premios_peliculas(pelicula int, premio varchar(100), festival varchar(100), foreign key(pelicula) references peliculas(pelicula_ID), primary key(pelicula, premio, festival));

-- tabla que relaciona las peliculas con los actores que actuaron en ella, además del rol de cada actor en la pelicula
-- llave primaria: pelicula, actor
-- llave foranea: pelicula, actor
create table casting(pelicula int, actor varchar(100), rol varchar(20), foreign key(pelicula) references peliculas(pelicula_ID), foreign key(actor) references actores(nombre), primary key(pelicula, actor));

-- tabla que relaciona las peliculas con los actores que han ganado un premio en dicha pelicula
-- llave foranea: (pelicula, actor), (pelicula, premio, festival)
create table casting_ganador(pelicula int, actor varchar(100), premio varchar(100), festival varchar(100), foreign key(pelicula, actor) references casting(pelicula, actor), foreign key(pelicula, premio, festival) references premios_peliculas(pelicula, premio, festival));

-- tabla que relaciona el genero con la pelicula
-- llave foranea: pelicula
create table genero(pelicula int, genero varchar(20), foreign key(pelicula) references peliculas(pelicula_ID));

-- tabla que relaciona las palabras claves con las peliculas
-- llave foranea: pelicula
create table palabras_claves (pelicula int, palabra varchar(100), foreign key(pelicula) references peliculas(pelicula_ID));

-- tabla que relaciona las peliculas con los cines donde se presentan y las fechas de estreno
-- llave primaria: pelicula, cine
-- llave foranea: pelicula, cine
create table estrenos (pelicula int, cine varchar(100), fecha_estreno date, fecha_retiro date, foreign key(pelicula) references peliculas(pelicula_ID), foreign key(cine) references cines(nombre_cine), primary key(pelicula, cine));
