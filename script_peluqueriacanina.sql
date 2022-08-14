
drop database if exists peluqueriacanina;

CREATE DATABASE peluqueriacanina;
USE peluqueriacanina;
CREATE TABLE dueno
(DNI int primary key not null,
nombre varchar(30) not null,
apellido varchar(30) not null,
telefono int not null,
direccion varchar(30) not null
);

CREATE TABLE perro
(ID_perro int primary key not null,
nombre varchar(20),
fecha_nac date,
sexo varchar(9),
DNI_dueno int not null,
foreign key (DNI_dueno) references dueno (DNI)
);

CREATE TABLE historial
(ID_historial int primary key not null,
fecha date,
perro int not null,
descripcion varchar(100),
monto float,
foreign key (perro) references perro(ID_perro)
);

INSERT INTO dueno values (36057825 , 'Jose', 'Ruiz', 155452255, 'dorrego al 200'); 
INSERT INTO dueno values (20587998 , 'juan', 'lopez', 155789258, 'calle publica sin numero');
INSERT INTO dueno values (40885435 , 'dahiana', 'molina', 154547598, 'absalon rojas al 1458');
INSERT INTO dueno values (43227824 , 'adriana', 'navarrete', 156993215, 'misky mayo 784');
INSERT INTO perro values (0000001, 'Fido', '02-07-21','macho', 36057825);
INSERT INTO perro values (0000002, 'berta', '02-07-16','hembra', 20587998);
INSERT INTO perro values (0000003, 'casimiro', '02-07-14','macho', 40885435);
INSERT INTO perro values (0000004, 'cochi', '02-07-22','hembra', 43227824);

-- se eligio el punto 4 que dice : "Actualice la fecha de nacimiento de algún animal (perro) que usted considere"-- 

UPDATE perro set fecha_nac = '05-05-05' where ID_perro = 0000002;

