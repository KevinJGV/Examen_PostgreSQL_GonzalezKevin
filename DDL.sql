--drop database if exists consecionariodb;
--create database consecionariodb encoding 'UTF8';

create table if not exists marca(
	id serial primary key,
	nombre varchar(80) not null unique
);

create table if not exists estado(
	id serial primary key,
	estado varchar(80) not null unique
);

create table if not exists cliente(
	id serial primary key,
	nombre varchar(120) not null,
	apellido varchar(120) not null,
	direccion varchar(120) not null,
	correo varchar(120) not null 
); 

create table if not exists rol(
	id serial primary key,
	rol varchar(80) not null unique
); 

create table if not exists proveedor(
	id serial primary key,
	nombre varchar(120) not null unique,
	correo varchar(120) not null
); 

create table if not exists pieza(
	id serial primary key,
	nombre varchar(120) not null,
	id_proveedor int not null references proveedor(id)
); 

create table if not exists servicio(
	id serial primary key,
	nombre varchar(120) not null unique,
	precio numeric(10,2) not null
); 

create table if not exists empleado(
	id serial primary key,
	nombre varchar(120) not null,
	apellido varchar(120) not null,
	direccion varchar(120) not null,
	correo varchar(120) not null,
	fecha_contratacion date not null,
	horario_actual varchar(80) not null,
	id_rol int not null references rol(id)
); 

create table if not exists modelo(
	id serial primary key,
	nombre varchar(120) not null,
	año smallint not null,
	id_marca int not null references marca(id)
); 

create table if not exists vehiculo(
	id serial primary key,
	precio numeric(10,2) not null,
	id_modelo int not null references modelo(id),
	id_estado int not null references estado(id)
); 

create table if not exists venta(
	id serial primary key,
	fecha date not null,
	id_vehiculo int not null references vehiculo(id),
	id_cliente int not null references cliente(id),
	id_empleado int not null references empleado(id)
);

create table if not exists prospecto(
	id serial primary key,
	nombre varchar(120) not null,
	apellido varchar(120),
	correo varchar(120) not null,
	nota text not null,
	id_empleado_seguimiento int not null references empleado(id)
); 

create table if not exists rendimiento(
	id serial primary key,
	porcentaje_individual numeric(5,2) not null,
	comisiones numeric(10,2) not null,
	n_ventas_totales int not null,
	id_empleado int not null references empleado(id)
); 

create table if not exists historial_servicio (
	id serial primary key,
	fecha date not null,
	id_cliente int not null references cliente(id),
	id_empleado int not null references empleado(id),
	id_servicio int not null references servicio(id),
	id_pieza int not null references pieza(id),
	id_vehiculo int not null references vehiculo(id)
); 