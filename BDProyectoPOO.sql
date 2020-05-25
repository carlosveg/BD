create database PROYECTO;

use PROYECTO;

create table Administrador(
	IDADMIN integer auto_increment primary key,
    Nombre varchar(15),
    ApPat varchar(15),
    ApMat varchar(15),
    Telefono integer,
    Usuario varchar(15),
    Contraseña varchar(10)
);

create table Rescatista(
	IDRESC integer auto_increment primary key,
    Nombre varchar(15),
    ApPat varchar(15),
    ApMat varchar(15),
    Telefono integer
);

create table Tipo(
	IDTIPO integer auto_increment primary key,
    Tipo varchar(6),
    Raza varchar(20)
);

create table Descripcion(
	IDDESCRIPCION integer auto_increment,
    TIPOANIMAL integer,
    Historia varchar(255),
    Edad integer,
    Color varchar(30),
    Sexo varchar(10),
    Vacuna varchar(10),
    urlImagen varchar(300),
    
    foreign key (TIPOANIMAL) references Tipo (IDTIPO)
    on delete cascade
    on update cascade,
    primary key (IDDESCRIPCION)
);	

create table Mascota(
	IDMASCOTA integer auto_increment,
    IDRESCATISTA integer,
    IDDESC integer,
	Nombre varchar(20),
    
    foreign key (IDRESCATISTA) references Rescatista (IDRESC)
    on delete cascade
    on update cascade,
    foreign key (IDDESC) references Descripcion (IDDESCRIPCION)
    on delete cascade
    on update cascade,
    primary key (IDMASCOTA)
);

/* Procedimientos para agregar */

delimiter **
create procedure admin_add (
	nombre varchar(15),
    appat varchar(15),
    apmat varchar(15),
    telefono integer,
    usuario varchar(15),
    contra varchar(10)
)
begin
	insert into Administrador (Nombre, ApPat, ApMat, Telefono, Usuario, Contraseña) 
    values (nombre, appat, apmat, telefono, usuario, contra);
end**
delimiter ;

delimiter **
create procedure rescatista_add (
	nombre varchar(15),
    appat varchar(15),
    apmat varchar(15),
    telefono integer
)
begin
	insert into Rescatista (Nombre, ApPat, ApMat, Telefono)
    values (nombre, appat, apmat, telefono);
end**
delimiter ;

delimiter **
create procedure tipo_add (
	tipo varchar(6),
    raza varchar(20)
)
begin
	insert into Tipo (Tipo, Raza)
    values (tipo, raza);
end**
delimiter ;

delimiter **
create procedure descripcion_add (
    tipo integer,
    historia varchar(255),
    edad tinyint,
    color varchar(30),
    sexo varchar(10),
    vacuna varchar(10),
    url varchar(300)
)
begin
	insert into Descripcion (TIPOANIMAL, Historia, Edad, Color, Sexo, Vacuna, urlImagen)
    values (tipo, historia, edad, color, sexo, vacuna, url);
end**
delimiter ;

delimiter **
create procedure mascota_add (
	rescatista integer,
    descripcion integer,
	nombre varchar(20)
)
begin
	insert into Mascota (IDRESCATISTA, IDDESC, Nombre)
    values (rescatista, descripcion, nombre);
end**
delimiter ;

/*
Procedimientos para modificar.
*/

delimiter **
create procedure admin_update (
	id integer,
    nombre varchar(15),
    appat varchar(15),
    apmat varchar(15),
    telefono integer,
    usuario varchar(15),
    contraseña varchar(10)
)
begin
	update administrador set Nombre = nombre where IDADMIN = id;
    update administrador set ApPat = appat where IDADMIN = id;
    update administrador set ApMat = apmat where IDADMIN = id;
    update administrador set Telefono = telefono where IDADMIN = id;
    update administrador set Usuario = usuario where IDADMIN = id;
    update administrador set Contraseña = contraseña where IDADMIN = id;
end**
delimiter ;

delimiter **
create procedure rescatista_update (
	id integer,
	nombre varchar(15),
    appat varchar(15),
    apmat varchar(15),
    telefono integer
)
begin
	update rescatista set Nombre = nombre where IDRESC = id;
    update rescatista set ApPat = appat where IDRESC = id;
    update rescatista set ApMat = apmat where IDRESC = id;
    update rescatista set Telefono = telefono where IDRESC = id;
end**
delimiter ;

delimiter **
create procedure tipo_update (
	id int,
    tipo varchar(6),
    raza varchar(20)
)
begin
	update tipo set TIPO = tipo where IDTIPO = id;
    update tipo set Raza = raza where IDTIPO = id;
end**
delimiter ;

delimiter **
create procedure descripcion_update (
	id int,
    tipo int,
    historia varchar(255),
    edad int,
    color varchar(30),
    sexo varchar(10),
    vacuna varchar(10),
    url varchar(300)
)
begin
	update descripcion set TIPOANIMAL = tipo where IDDESCRIPCION = id;
    update descripcion set Historia = historia where IDDESCRIPCION = id;
    update descripcion set Edad = edad where IDDESCRIPCION = id;
    update descripcion set Color = color where IDDESCRIPCION = id;
    update descripcion set Sexo = sexo where IDDESCRIPCION = id;
    update descripcion set Vacuna = vacuna where IDDESCRIPCION = id;
    update descripcion set urlImagen = url where IDDESCRIPCION = id;
end**
delimiter ;

delimiter **
create procedure mascota_update (
	id int,
    idr int,
    idd int,
    nombre varchar(20)
)
begin
	update mascota set IDRESCATISTA = idr where IDMASCOTA = id;
    update mascota set IDDESC = idd where IDMASCOTA = id;
    update mascota set Nombre = nombre where IDMASCOTA = id;
end**
delimiter ;

/*
Procedimientos para eliminar.
*/

delimiter **
create procedure admin_delete (
	id integer
)
begin
	delete from administrador where IDADMIN = id;
end**
delimiter ;

delimiter **
create procedure rescatista_delete (
	id integer
)
begin
	delete from rescatista where IDRESC = id;
end**
delimiter ;

delimiter **
create procedure tipo_delete (
	id int
)
begin
	delete from tipo where IDTIPO = id;
end**
delimiter ;

delimiter **
create procedure descripcion_delete (
	id int
)
begin
	delete from descripcion where IDDESCRIPCION = id;
end**
delimiter ;

delimiter **
create procedure mascota_delete (
	id int
)
begin
	delete from mascota where IDMASCOTA = id;
end**
delimiter ;