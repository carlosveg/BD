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
    Tipo char,
    Raza varchar(10)
);

create table Descripcion(
	IDDESCRIPCION integer auto_increment,
    TIPOANIMAL integer,
    IDRESCATISTA integer,
    Historia varchar(255),
    Edad tinyint,
    Color varchar(8),
    Sexo char,
    Vacuna char,
    
    foreign key (TIPOANIMAL) references Tipo (IDTIPO)
    on delete cascade
    on update cascade,
    foreign key (IDRESCATISTA) references Rescatista (IDRESC)
    on delete cascade
    on update cascade,
    primary key (IDDESCRIPCION, TIPOANIMAL, IDRESCATISTA)
);

create table Mascota(
	IDMASCOTA integer auto_increment,
    IDRESCATISTA integer,
	Nombre varchar(10),
    
    foreign key (IDRESCATISTA) references Rescatista (IDRESC)
    on delete cascade
    on update cascade,
    primary key (IDMASCOTA, IDRESCATISTA)
);

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
	tipo char,
    raza varchar(10)
)
begin
	insert into Tipo (Tipo, Raza)
    values (tipo, raza);
end**
delimiter ;

delimiter **
create procedure descripcion_add (
    historia varchar(255),
    edad tinyint,
    color varchar(8),
    sexo char,
    vacuna char
)
begin
	insert into Descripcion (Historia, Edad, Color, Sexo, Vacuna)
    values (historia, edad, color, sexo, vacuna);
end**
delimiter ;

delimiter **
create procedure mascota_add (
	nombre varchar(10)
)
begin
	insert into Mascota (Nombre)
    values (nombre);
end**
delimiter ;