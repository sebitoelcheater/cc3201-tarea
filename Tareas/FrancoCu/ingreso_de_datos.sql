--datos tabla directores
insert into directores values('Franco Coppola', 'masculino', 'Estados Unidos', '1939-06-07');
insert into directores values('Stanley Kirby', 'masculino', 'Estados Unidos', '1928-07-26');
insert into directores values('Mary Verry', 'femenino', 'Hungria', '1903-01-05');
insert into directores values('Eduardo Pachuca', 'masculino', 'Chile', '1950-10-21');
insert into directores values('Garrett Allison', 'masculino', 'Inglaterra', '1953-10-09');
insert into directores values('Franziska von Karma', 'femenino', 'Alemania', '1947-10-07');
insert into directores values('Tsubasa Kagome', 'femenino', 'Corea del Sur', '1936-10-11'); 
insert into directores values('Isabella Hudson', 'femenino', 'Estados Unidos', '1944-04-30');
insert into directores values('Raito Yagami', 'masculino', 'Japon', '1936-04-18');

--datos tabla actores
insert into actores values('Valentina Soto', 'femenino', 'Chile', '1953-02-09');
insert into actores values('Mario Vergari', 'masculino', 'Italia', '1962-06-13');
insert into actores values('Fernandich Moraliz', 'masculino', 'Alemania', '1911-06-27');
insert into actores values('Sebastian Needles', 'masculino', 'Estados Unidos', '1934-09-18');
insert into actores values('Nataly Lais', 'femenino', 'Estados Unidos', '1945-08-01');
insert into actores values('Li Shang', 'femenino', 'China', '1939-09-02');
insert into actores values('Jean Cagli', 'masculino', 'Francia', '1901-12-12');
insert into actores values('Alexander Grecco', 'masculino', 'Grecia', '1928-10-23');
insert into actores values('Eduardo Pachuca', 'masculino', 'Chile', '1950-10-21');
insert into actores values('Catalina Vargas', 'femenino', 'Argentina', '1973-03-15');
insert into actores values('Isadora Lyons', 'femenino' , 'Nigeria', '1948-01-09');
insert into actores values('Will Powers', 'masculino', 'Estados Unidos', '1945-09-14');
insert into actores values('Maya Fey', 'femenino', 'India', '1930-07-26');
insert into actores values('Beatrix Deaximun', 'femenino', 'Francia', '1959-08-25');
insert into actores values('Jack Hammer', 'masculino', 'Inglaterra', '1963-03-16');
insert into actores values('Phoenix Trite', 'masculino', 'Canada', '1970-01-14');
insert into actores values('Milles Edgar', 'masculino', 'Suiza', '1983-04-16');
insert into actores values('Diego Armando', 'masculino', 'Mexico', '1976-06-19');
insert into actores values('Tanya Cannon', 'femenino', 'Dinamarca', '1960-08-14');
insert into actores values('Aurelia Dodson', 'femenino', 'Islandia', '1943-09-16');
insert into actores values('Sebastian Hernandez', 'masculino', 'España', '1952-07-19');
insert into actores values('Pablo Polanco', 'masculino', 'Chile', '1967-02-14'); 

--datos cine
insert into cines values('cine 1', 'Santiago');
insert into cines values('cine 2', 'Santiago');
insert into cines values('cine 3', 'Viña del Mar');
insert into cines values('cine 4', 'Concepcion');
insert into cines values('cine 5', 'Antofagasta');
insert into cines values('cine 6', 'Valparaiso');
insert into cines values('cine 7', 'Copiapo');
insert into cines values('cine 8', 'Punta Arenas');


--datos tabla peliculas
insert into peliculas values(001, 'La Madrina', 1972,'Franco Coppola', 'Patapon Pictures', 175, 'Estados Unidos', 6000000, 130000000, 'no', 'color', 'Pelicula de gangsters');
insert into peliculas values(002, 'La Manzana Mecanica', 1971, 'Stanley Kirby', 'Argmax', 137, 'Estados Unidos', 2200000, 26000000, 'no', 'color', 'Hay musica clasica');
insert into peliculas values(003, 'Dracula', 1931,'Mary Verry', 'Patapon Pictures', 75, 'Estados Unidos', 355000, 1200000, 'no', 'blanco y negro', 'Hay vampiros');
insert into peliculas values(004, 'El Rey Castor', 1991, 'Franco Coppola', 'Disnay', 76, 'Estados Unidos', 2340000, 23234300, 'si', 'color', 'Los castores dominan el mundo');
insert into peliculas values(005, 'Arcade Paradiso', 1988, 'Stanley Kirby', 'Galaxial Studios', 155, 'Italia', 5000000, 11000000, 'no', 'color', 'Video juegos, amor y sufirmiento');
insert into peliculas values(006, 'Pachuca', 1973, 'Eduardo Pachuca', 'Chilean Films', 133, 'Chile', 10000, 990000, 'no', 'blanco y negro', 'Pelicula basada en hechos historicos');
insert into peliculas values(007, 'Trece Hombres Sin Piedad', 1957, 'Garrett Allison', 'Patapon Pictures', 122, 'Estados Unidos', 340000, 1100000, 'no', 'blanco y negro', '13 hombres de jurado deciden la la vida de un hombre');
insert into peliculas values(008, 'Pulp Triction', 1993, 'Tsubasa Kagome', 'Argmax', 154, 'Japon', 3400000, 200000000, 'no', 'color', 'Comedia negra');
insert into peliculas values(009, 'La Venganza Es Mia', 1972, 'Franziska von Karma', 'Galaxial Studios', 140, 'Japon', 12000000, 54000000, 'no', 'color', 'Venganza al estilo aleman-japones');
insert into peliculas values(010, 'Historia de Dos Hermanastras', 2003, 'Tsubasa Kagome', 'Dictator Movies', 115, 'Corea del Sur', 3700000, 54000000, 'no', 'color', 'Horror sicologico coreano');
insert into peliculas values(011, 'Zulander', 2001, 'Isabella Hudson', 'Patapon Pictures', 89, 'Estados Unidos', 28000000, 60000000, 'no', 'color', 'Comedia de moda y accion');
insert into peliculas values(012, 'El Vello y la Bestia', 1988, 'Garrett Allison', 'Disnay', 76, 'Estados unidos', 2300000, 3400000, 'si', 'color', 'Una bestia que se intenta peinar');
insert into peliculas values(013, 'Death Book', 1995, 'Raito Yagami', 'Dictator Movies', 88, 'Japon', 7000000, 45000000, 'si', 'blanco y negro', 'Un estudiante encuentra una libreta con la habilidad de matar a la gente');
insert into peliculas values(014, 'Tres Hombres en un Auto', 1965, 'Isabella Hudson', 'Galaxial Studios', 100, 'Estados Unidos', 2300000, 49994442, 'no', 'blanco y negro', 'Comedia de tres hombres encerrados en un auto');
insert into peliculas values(015, 'Mi Peor Amigo', 1989, 'Eduardo Pachuca', 'Chilean ', 99, 'Chile', 265400, 3000000, 'no', 'color', 'pelicula belica entre Chile y Argentina');

--datos tabla premios_peliculas
insert into premios_peliculas values(001, 'Mejor Pelicula', 'Oscars');
insert into premios_peliculas values(001, 'Mejor Guion', 'Oscars');
insert into premios_peliculas values(001, 'Mejor Director', 'Oscars');
insert into premios_peliculas values(001, 'Mejor Actor Principal', 'Oscars');
insert into premios_peliculas values(002, 'Mejor Director', 'Oscars');
insert into premios_peliculas values(004, 'Mejor Pelicula Animada', 'Oscars');
insert into premios_peliculas values(005, 'Mejor Pelicula', 'Oscars');
insert into premios_peliculas values(005, 'Mejor Efectos Visuales', 'Oscars');
insert into premios_peliculas values(005, 'Mejor Actriz Principal', 'Globos de Oro');
insert into premios_peliculas values(011, 'Mejor Actor Principal', 'Globos de Oro');
insert into premios_peliculas values(009, 'Mejor Actriz Principal', 'Oscars');
insert into premios_peliculas values(008, 'Mejor Actor de Reparto', 'Cannes');
insert into premios_peliculas values(013,'Mejor Actor de Reparto', 'Cannes');
insert into premios_peliculas values(010,'Mejor Director', 'Cannes');
insert into premios_peliculas values(008,'Mejor Pelicula', 'Cannes');
insert into premios_peliculas values(007, 'Mejor Guion', 'Oscars');
insert into premios_peliculas values(012,'Mejor Efectos Visuales', 'Globos de Oro');
insert into premios_peliculas values(013,'Mejor Pelicula Animada', 'Globos de Oro');

--datos tabla casting
insert into casting values(001, 'Mario Vergari', 'principal');
insert into casting values(001, 'Fernandich Moraliz', 'secundario');
insert into casting values(001, 'Sebastian Needles', 'extra');
insert into casting values(002, 'Alexander Grecco', 'principal');
insert into casting values(002, 'Nataly Lais', 'secundario');
insert into casting values(003, 'Fernandich Moraliz', 'principal');
insert into casting values(003, 'Jean Cagli', 'secundario');
insert into casting values(004, 'Li Shang', 'principal');
insert into casting values(004, 'Mario Vergari', 'secundario');
insert into casting values(004, 'Nataly Lais', 'extra');
insert into casting values(005, 'Valentina Soto', 'principal');
insert into casting values(005, 'Jean Cagli', 'secundario');
insert into casting values(005, 'Sebastian Needles', 'extra');
insert into casting values(006, 'Eduardo Pachuca', 'principal');
insert into casting values(006, 'Valentina Soto', 'secundario');
insert into casting values(006, 'Li Shang', 'secundario');
insert into casting values(008, 'Catalina Vargas', 'principal');
insert into casting values(008, 'Will Powers', 'secundario');
insert into casting values(008, 'Phoenix Trite', 'secundario');
insert into casting values(008, 'Beatrix Deaximun', 'extra');
insert into casting values(007, 'Fernandich Moraliz', 'principal');
insert into casting values(007, 'Sebastian Needles', 'secundario');
insert into casting values(007, 'Eduardo Pachuca', 'secundario');
insert into casting values(009, 'Maya Fey', 'principal');
insert into casting values(009, 'Isadora Lyons', 'secundario');
insert into casting values(009, 'Tanya Cannon', 'secundario');
insert into casting values(010, 'Li Shang', 'principal');
insert into casting values(010, 'Aurelia Dodson', 'principal');
insert into casting values(010, 'Milles Edgar', 'secundario');
insert into casting values(011, 'Diego Armando', 'principal');
insert into casting values(011, 'Jack Hammer', 'secundario');
insert into casting values(011, 'Isadora Lyons', 'secundario');
insert into casting values(011, 'Jean Cagli', 'extra');
insert into casting values(012, 'Alexander Grecco', 'principal');
insert into casting values(012, 'Beatrix Deaximun', 'principal');
insert into casting values(012, 'Valentina Soto', 'secundario');
insert into casting values(013, 'Phoenix Trite', 'principal');
insert into casting values(013, 'Milles Edgar', 'principal');
insert into casting values(013, 'Will Powers', 'secundario');
insert into casting values(013, 'Jack Hammer', 'secundario');
insert into casting values(013, 'Diego Armando', 'secundario');
insert into casting values(013, 'Beatrix Deaximun', 'secundario');
insert into casting values(013, 'Catalina Vargas', 'extra');
insert into casting values(014, 'Alexander Grecco', 'principal');
insert into casting values(014, 'Fernandich Moraliz', 'principal');
insert into casting values(014, 'Jean Cagli', 'principal');
insert into casting values(015, 'Sebastian Hernandez', 'principal');
insert into casting values(015, 'Pablo Polanco', 'secundario');

--datos tabla casting_ganador
insert into casting_ganador values(001, 'Mario Vergari', 'Mejor Actor Principal', 'Oscars');
insert into casting_ganador values(005, 'Valentina Soto', 'Mejor Actriz Principal', 'Globos de Oro');
insert into casting_ganador values(011, 'Diego Armando', 'Mejor Actor Principal', 'Globos de Oro');
insert into casting_ganador values(009, 'Maya Fey', 'Mejor Actriz Principal', 'Oscars');
insert into casting_ganador values(008, 'Phoenix Trite', 'Mejor Actor de Reparto', 'Cannes');
insert into casting_ganador values(013, 'Will Powers', 'Mejor Actor de Reparto', 'Cannes');

--datos genero
insert into genero values(001, 'crimen');
insert into genero values(001, 'drama');
insert into genero values(001, 'misterio');
insert into genero values(002, 'drama');
insert into genero values(003, 'terror');
insert into genero values(004, 'infantil');
insert into genero values(005, 'drama');
insert into genero values(005, 'romance');
insert into genero values(006, 'drama');
insert into genero values(006, 'historica');
insert into genero values(007, 'crimen');
insert into genero values(007, 'drama');
insert into genero values(007, 'misterio');
insert into genero values(008, 'satirica');
insert into genero values(008, 'accion');
insert into genero values(009, 'accion');
insert into genero values(009, 'venganza');
insert into genero values(010, 'terror');
insert into genero values(010, 'misterio');
insert into genero values(010, 'ciencia ficcion');
insert into genero values(011, 'comedia');
insert into genero values(011, 'accion');
insert into genero values(012, 'infantil');
insert into genero values(013, 'drama');
insert into genero values(013, 'accion');
insert into genero values(013, 'crimen');
insert into genero values(013, 'ciencia ficcion');
insert into genero values(014, 'comedia');


--datos palabras_clave
insert into palabras_claves values(001, 'gangsters');
insert into palabras_claves values(001, 'clasica');
insert into palabras_claves values(001, 'muerte');
insert into palabras_claves values(001, 'mafia');
insert into palabras_claves values(001, 'drogas');
insert into palabras_claves values(002, 'experimentos');
insert into palabras_claves values(002, 'vandalos');
insert into palabras_claves values(002, 'Beethoven');
insert into palabras_claves values(002, 'violencia');
insert into palabras_claves values(003, 'vampiro');
insert into palabras_claves values(003, 'murcielago');
insert into palabras_claves values(003, 'sangre');
insert into palabras_claves values(004, 'castores');
insert into palabras_claves values(004, 'selva');
insert into palabras_claves values(004, 'hakunamatata');
insert into palabras_claves values(004, 'venganza');
insert into palabras_claves values(005, 'video juegos');
insert into palabras_claves values(005, 'amor');
insert into palabras_claves values(005, 'amistad');
insert into palabras_claves values(006, 'Chile');
insert into palabras_claves values(006, 'golpe de estado');
insert into palabras_claves values(006, 'dictadura');
insert into palabras_claves values(006, 'sociedad');
insert into palabras_claves values(006, 'niños');
insert into palabras_claves values(006, 'escuela');
insert into palabras_claves values(007, 'juicio');
insert into palabras_claves values(007, 'asesinato');
insert into palabras_claves values(008, 'violencia');
insert into palabras_claves values(008, 'robos');
insert into palabras_claves values(008, 'baile');
insert into palabras_claves values(008, 'mafia');
insert into palabras_claves values(009, 'venganza');
insert into palabras_claves values(009, 'cuchillos');
insert into palabras_claves values(009, 'sushi');
insert into palabras_claves values(010, 'familia');
insert into palabras_claves values(010, 'sangre');
insert into palabras_claves values(010, 'fantasma');
insert into palabras_claves values(011, 'moda');
insert into palabras_claves values(011, 'peluqueria');
insert into palabras_claves values(011, 'agente secreto');
insert into palabras_claves values(012, 'castillo');
insert into palabras_claves values(012, 'bestia');
insert into palabras_claves values(012, 'princesa');
insert into palabras_claves values(012, 'amor');
insert into palabras_claves values(013, 'libro');
insert into palabras_claves values(013, 'investigacion');
insert into palabras_claves values(013, 'detective');
insert into palabras_claves values(013, 'asesinato');
insert into palabras_claves values(014, 'auto');
insert into palabras_claves values(014, 'tontos');
insert into palabras_claves values(014, 'vacaciones');

--datos estrenos
insert into estrenos values(001, 'cine 1', '2013-07-23', '2013-11-05');
insert into estrenos values(001, 'cine 3', '2013-02-11', '2013-06-12');
insert into estrenos values(002, 'cine 1', '2013-11-01', '2013-12-20');
insert into estrenos values(002, 'cine 4', '2013-10-01', '2013-10-31');
insert into estrenos values(003, 'cine 1', '2014-01-14', '2014-02-14');
insert into estrenos values(003, 'cine 3', '2014-03-01', '2014-03-28');
insert into estrenos values(004, 'cine 1', '2013-12-11', '2013-12-25');
insert into estrenos values(004, 'cine 4', '2013-12-11', '2013-12-25');
insert into estrenos values(005, 'cine 2', '2014-07-07', '2014-07-30');
insert into estrenos values(005, 'cine 3', '2014-04-04', '2014-04-20');
insert into estrenos values(006, 'cine 4', '2014-01-01', '2014-01-07');
insert into estrenos values(006, 'cine 5', '2014-01-01', '2014-01-07');
insert into estrenos values(007, 'cine 2', '2014-01-01', '2014-12-05');
insert into estrenos values(007, 'cine 7', '2014-12-02', '2014-12-15');
insert into estrenos values(008, 'cine 6', '2014-04-12', '2014-09-08');
insert into estrenos values(008, 'cine 8', '2013-11-13', '2014-01-02');
insert into estrenos values(009, 'cine 1', '2014-02-23', '2014-03-17');
insert into estrenos values(009, 'cine 7', '2014-02-01', '2014-02-28');
insert into estrenos values(010, 'cine 3', '2013-12-12', '2014-02-20');
insert into estrenos values(010, 'cine 2', '2013-12-12', '2014-02-20');
insert into estrenos values(011, 'cine 4', '2014-06-07','2014-07-27');
insert into estrenos values(011, 'cine 1', '2014-06-07','2014-07-27');
insert into estrenos values(012, 'cine 2', '2013-12-30','2014-02-04');
insert into estrenos values(012, 'cine 8', '2013-12-16','2014-02-23');
insert into estrenos values(013, 'cine 3', '2013-09-04','2014-03-03');
insert into estrenos values(013, 'cine 6', '2013-08-20','2014-01-29');
insert into estrenos values(014, 'cine 7', '2013-11-11','2014-04-21');
insert into estrenos values(014, 'cine 5', '2013-11-12','2014-01-03');
insert into estrenos values(014, 'cine 8', '2014-02-12','2014-04-12');
