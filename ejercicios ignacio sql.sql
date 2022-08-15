create database peluqueria_canina;
use peluqueria_canina;

#Tabla dueno 

create table Dueno(
dni_d int,
nombre_d varchar(50),
apellido_d varchar(50),
telefono_d bigint,
direccion_d varchar(50),
constraint pk_cd primary key(dni_d)
);

#Tabla Perro
create table Perro(
id_p int,
nombre_p varchar(50),
fecha_nac_p date,
sexo_p char(1),
dni_d1 int,
constraint pk_cp primary key(id_p),
constraint fk_d1 foreign key(dni_d1) references Dueno (dni_d)
);

#Tabla Historial
create table Historial(
id_h int,
fecha_h date,
id_p1 int,
descripcion_h varchar(100),
monto_h float,
constraint pk_ci primary key(id_h),
constraint fk_p1 foreign key(id_p1) references Perro (id_p)
);	

insert into dueno values (35869789, "Diego", "Soria", 3512654987, "Av Colon 3521");
insert into perro values (32, "Baco", 200826, "M", 35869789);

select sum(monto_h) from Historial where fecha_h between 220701 and 220731;