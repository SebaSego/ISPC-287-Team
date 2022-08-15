create database veterinaria;
use veterinaria;

create table Dueno(
clave_Dni bigint,
Nombre varchar(25),
Apellido varchar(25),
Telefono bigint,
Direccion varchar(150),
constraint pk_cDni primary key (clave_Dni)
);

insert into Dueno values(40858796, 'Florencia', 'Perez', 4666352, 'Venezuela 342');

create table Perro(
clave_IdPerro int,
Nombre varchar(25),
Fecha_nac date,
Sexo varchar(25),
clave_Dni1 bigint,
constraint pk_cIdPerro primary key (clave_IdPerro),
constraint fk_fDni1 foreign key (clave_Dni1) references Dueno(clave_Dni)
);

/* Punto 2) */
insert into Perro values(1, 'zenon', "2019-02-24", 'Macho',40858796);
insert into Perro values(2, 'Homero', "2020-05-06", 'Macho', 40858796);
insert into Perro values(3, 'Thor', "2021-08-15", 'Macho',40858796 );
select * from Perro where Fecha_nac between "2020-01-01" and "2022-12-31";

create table Historial(
clave_IdHistorial bigint,
Fecha date,
clave_IdPerro1 int,
Descripcion varchar(150),
Monto float,
constraint pk_cIdHistorial1 primary key (clave_IdHistorial),
constraint fk_fIdPerro1 foreign key (clave_IdPerro1) references Perro(clave_IdPerro)
);