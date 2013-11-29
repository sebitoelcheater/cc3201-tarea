create table Datos_base (Rut varchar(12) not null, Nombre_usuario varchar(50) not null,Genero char(1) not null,Direccion varchar(100) not null, Fecha_nacimiento date not null, Fecha_inscripcion date not null, PRIMARY KEY(Rut));

create table Contacto_correo (Rut varchar(12) not null, Correo_electronico varchar(50) not null,PRIMARY KEY (Rut) ,  FOREIGN KEY (Rut) REFERENCES Datos_base(Rut));

create table Contacto_telefonico (Rut varchar(12) not null, Telefono int not null, PRIMARY KEY (Rut), FOREIGN KEY (Rut) REFERENCES Datos_base(Rut));

create table Servicios_base (Dispositivo varchar(50) not null, Servicio varchar(50) not null, Precio int not null, Duracion varchar(40) not null, Nombre_servicio varchar(20) not null, PRIMARY KEY(Nombre_servicio));

create table Triple_Plan (Nombre varchar(20) not null, Elemento1 varchar(40) not null, Elemento2 varchar(40) not null, Elemento3 varchar(40) not null, Precio int not null, Duracion varchar(20) not null, PRIMARY KEY(Nombre), FOREIGN KEY(Elemento1) REFERENCES Servicios_base(Nombre_servicio),FOREIGN KEY (Elemento2) REFERENCES Servicios_base(Nombre_servicio),FOREIGN KEY (Elemento3) REFERENCES Servicios_base(Nombre_servicio));

create table Tetra_Plan (Nombre varchar(20) not null, Elemento1 varchar(40) not null, Elemento2 varchar(40) not null, Elemento3 varchar(40) not null, Elemento4 varchar(40) not null, Precio int not null, Duracion varchar(20) not null, PRIMARY KEY(Nombre),FOREIGN KEY (Elemento1) REFERENCES Servicios_base(Nombre_servicio), FOREIGN KEY (Elemento2) REFERENCES Servicios_base(Nombre_servicio),FOREIGN KEY (Elemento3) REFERENCES Servicios_base(Nombre_servicio),FOREIGN KEY (Elemento4) REFERENCES Servicios_base(Nombre_servicio));

create table Proveedores (Nombre varchar(20) not null, Dispositivo varchar(20) not null, Servicio varchar(40) not null, PRIMARY KEY(Nombre, Dispositivo, Servicio));

create table Usuario_servicio_base(Rut varchar(12) not null, Nombre_servicio varchar(40) not null, Fecha_contratacion date not null, Empresa varchar(20) not null, PRIMARY KEY(Rut),FOREIGN KEY (Nombre_servicio) REFERENCES Servicios_base(Nombre_servicio),FOREIGN KEY (Rut) REFERENCES Datos_base(Rut),FOREIGN KEY (Empresa) REFERENCES Proveedores(Nombre));

create table Usuario_Tetra_Plan(Rut varchar(12) not null, Nombre_servicio varchar(40) not null, Fecha_contratacion date not null, Empresa varchar(20) not null, PRIMARY KEY(Rut), FOREIGN KEY (Nombre_servicio) REFERENCES Tetra_Plan(Nombre),FOREIGN KEY (Rut) REFERENCES Datos_base(Rut),FOREIGN KEY (Empresa) REFERENCES Proveedores(Nombre));

create table Usuario_Triple_Plan(Rut varchar(12) not null, Nombre_servicio varchar(40) not null, Fecha_contratacion date not null, Empresa varchar(20) not null, PRIMARY KEY(Rut),FOREIGN KEY (Nombre_servicio) REFERENCES Triple_Plan(Nombre),FOREIGN KEY (Rut) REFERENCES Datos_base(Rut),FOREIGN KEY (Empresa) REFERENCES Proveedores(Nombre));

create table Historial_Tripleplanes (Id varchar(3) not null, Rut varchar(12) not null, Nombre_servicio varchar(40) not null, Fecha_contratacion date not null, Fecha_termino date not null, Empresa varchar(20) not null, PRIMARY KEY(Rut,Id),FOREIGN KEY (Nombre_servicio) REFERENCES Triple_Plan(Nombre),FOREIGN KEY (Rut) REFERENCES Datos_base(Rut),FOREIGN KEY (Empresa) REFERENCES Proveedores(Nombre) );

create table Historial_Tetraplanes (Id varchar(3) not null, Rut varchar(12) not null, Nombre_servicio varchar(40) not null, Fecha_contratacion date not null, Fecha_termino date not null, Empresa varchar(20) not null, PRIMARY KEY(Rut,Id), FOREIGN KEY (Nombre_servicio) REFERENCES Tetra_Plan(Nombre),FOREIGN KEY (Rut) REFERENCES Datos_base(Rut),FOREIGN KEY (Empresa) REFERENCES Proveedores(Nombre));

create table Historial_servicios (Id varchar(3) not null, Rut varchar(12) not null, Nombre_servicio varchar(40) not null, Fecha_contratacion date not null, Fecha_termino date not null, Empresa varchar(20) not null, PRIMARY KEY(Rut,Id),FOREIGN KEY (Nombre_servicio) REFERENCES Servicios_base(Nombre_servicio),FOREIGN KEY (Rut) REFERENCES Datos_base(Rut),FOREIGN KEY (Empresa) REFERENCES Proveedores(Nombre));
