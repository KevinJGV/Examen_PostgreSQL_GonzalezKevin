insert into marca(nombre) values 
('honda'),
('kia'),
('tesla'),
('land rover'),
('mercedez benz');

insert into estado(estado) values 
('nuevo'),
('usado');

insert into cliente(nombre, apellido, direccion, correo) values 
('Peter', 'Parker', 'Calle 123', 'correo@plantilla.si'),
('Usain', 'Bolt', 'Calle 345', 'correo@plantilla.si'),
('Emperador', 'Sullivan', 'Calle 567', 'correo@plantilla.si'),
('Peter', 'Pan', 'Calle 789', 'correo@plantilla.si'),
('Owevuevuewe', 'Iyanwevuewe', 'Calle 901', 'correo@plantilla.si');

insert into rol(rol) values 
('servicio'),
('venta');

insert into proveedor(nombre, correo) values 
('Fordinho', 'correo@plantilla.si'),
('Hondihno', 'correo@plantilla.si'),
('Yamahinho', 'correo@plantilla.si'),
('Kikirikinho', 'correo@plantilla.si'),
('Piezhino', 'correo@plantilla.si');

insert into pieza(nombre, id_proveedor) values 
('Bujia 2300', 1),
('Motor 125cc', 2),
('Neumetico 170mm', 3),
('Piston YGQW5', 4),
('Neumetico 170mm', 3),
('Piston YGQW5', 4),
('Leche entera', 5);

insert into servicio(nombre, precio) values 
('Cambio de aceite', 70000),
('Reemplazo de motor', 170000),
('Sincronizacion de motor', 100000),
('Lavado de vehiculo', 50000),
('Ajuste de tren rotatorio', 70000);

insert into empleado(nombre, apellido, direccion, correo, fecha_contratacion, horario_actual ,id_rol) values 
('Rodillo', 'Cepillo', 'Carrera 123', 'correo@plantilla.si', '2000-05-20', 'Mañana',1),
('Tapete', 'Trujillo', 'Carrera 345', 'correo@plantilla.si', '2018-09-07', 'Tarde',2),
('Yamileth', 'Yamilin', 'Carrera 567', 'correo@plantilla.si', '2021-12-24', 'Mañana',2),
('Franca', 'Manca', 'Carrera 789', 'correo@plantilla.si', '2010-01-07', 'Tarde',2),
('Facilin', 'Facilona', 'Carrera 901', 'correo@plantilla.si', '2002-11-02', 'Pendiente por asignar',1);

insert into modelo(nombre,año,id_marca) values 
('XR150', '2021', 1),
('XTZ300', '2016',2),
('NXR160 BROS', '2024',3),
('IAO', '2023',4),
('URUS', '2500',5);

insert into vehiculo(precio,id_modelo,id_estado) values 
(10000000,1,1),
(15000000,2,2),
(17000000,3,1),
(80000000,4,2),
(50000000,5,1),
(10000000,1,1),
(15000000,2,2),
(17000000,3,1),
(80000000,4,2),
(50000000,5,1),
(10000000,1,1),
(15000000,2,2),
(17000000,3,1),
(80000000,4,2),
(50000000,5,1);

insert into venta(fecha,id_vehiculo,id_cliente,id_empleado) values 
('2025-01-01',1,1,3),
('2024-12-12',3,2,4),
('2024-11-11',5,3,2),
('2024-10-10',7,3,2),
('2024-09-09',9,2,3),
('2024-08-08',11,1,4),
('2024-07-07',13,5,2),
('2024-06-06',15,4,4),
('2024-05-05',2,3,4);

insert into prospecto(nombre, apellido, correo, nota, id_empleado_seguimiento) values 
('Carlos','Aguilar','correo@plantilla.si', 'Interes un una moto',1),
('Alvaro','Uribe','correo@plantilla.si', 'Interes en una camioneta de Fordinho',2),
('Elon','Musk','correo@plantilla.si', 'XTZ en seguimiento',1),
('Fandiño','Frutiño','correo@plantilla.si', 'Cita programada en 3 dias',3),
('Xin','Xiao','correo@plantilla.si', 'Necesita un camion',1);

insert into rendimiento(porcentaje_individual,comisiones,n_ventas_totales,id_empleado) values 
(30,150000,4,2),
(20,300000,3,3),
(10,50000,5,4);

insert into historial_servicio(fecha,id_cliente,id_empleado,id_servicio,id_pieza, id_vehiculo) values 
('2024-12-24',2,1,1,1,3),
('2024-12-31',2,1,2,2,9),
('2024-10-31',3,1,3,3,5),
('2025-01-07',3,5,4,4,7),
('2025-01-16',3,5,5,5,5);