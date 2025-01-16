--1. Listar Vehículos Disponibles: Obtener una lista de todos los vehículos disponibles para la venta, incluyendo detalles como marca, modelo, y precio.

select 
	v.id,
	m2.nombre as fabricante,
	concat(m.nombre, ' ', m.año) as modelo,
	v.precio
from 
	vehiculo v
	join estado e on v.id_estado = e.id 
	join modelo m on v.id_modelo  = m.id 
	join marca m2 on m.id_marca = m2.id 
	left join venta v2 on v.id = v2.id_vehiculo
where
	v2.id is null
group by
	v.id,
	fabricante,
	modelo
order by
	fabricante asc;

--2. Clientes con Compras Recientes: Mostrar los clientes que han realizado compras recientemente, junto con la información de los vehículos adquiridos.

select
	v.id as id_venta,
	concat(c.nombre, ' ', c.apellido) as cliente,
	c.direccion,
	c.correo as "e-mail",
	v2.id as id_vehiculo,
	m2.nombre as fabricante,
	concat(m.nombre, ' ', m.año) as modelo,
	v2.precio,
	e.estado,
	v.fecha as fecha_transaccion
from
	venta v
	join vehiculo v2 on v.id_vehiculo = v2.id 
	join estado e on v2.id_estado = e.id 
	join modelo m on v2.id_modelo  = m.id 
	join marca m2 on m.id_marca = m2.id 
	join cliente c on v.id_cliente = c.id
where
	v.fecha > '2024-08-16';

--3. Historial de Servicios por Vehículo: Obtener el historial completo de servicios realizados para un vehículo específico, incluyendo detalles sobre los empleados involucrados y las fechas de servicio.

select
	hs.id as id_serivicio_realizado,
	v.id as id_vehiculo,
	e.id as id_empleado,
	concat(e.nombre, ' ', e.apellido) as empleado,
	hs.fecha
from
	historial_servicio hs
	join empleado e on hs.id_empleado = e.id
	join vehiculo v on hs.id_vehiculo = v.id
where
	v.id = 5;

--4. Proveedores de Piezas Utilizados: Listar los proveedores de piezas que han suministrado componentes utilizados en los servicios de mantenimiento.

select
	p.nombre as proveedor,
	p2.nombre as pieza_utilizada,
	hs.id as id_servicio
from
	proveedor p
	join pieza p2 on p.id = p2.id_proveedor
	join historial_servicio hs on p2.id = hs.id_pieza
where
	hs.id is not null;

--5. Rendimiento del Personal de Ventas: Calcular las comisiones generadas por cada empleado del departamento de ventas en un período específico.



--6. Servicios Realizados por un Empleado: Identificar todos los servicios de mantenimiento realizados por un empleado específico, incluyendo detalles sobre los vehículos atendidos.

select
	e.id as id_empleado,
	concat(e.nombre, ' ', e.apellido) as empleado,
	s.nombre as servicio_relizado,
	hs.fecha as fecha_mantenimiento,
	v.id as id_vehiculo,
	concat(m.nombre, ' ', m.año) as modelo
from 
	empleado e 
	join historial_servicio hs on e.id = hs.id_empleado 
	join vehiculo v on hs.id_vehiculo = v.id
	join servicio s on hs.id_servicio = s.id
	join modelo m on v.id_modelo = m.id
where
	e.id = 1;

--7. Clientes Potenciales y Vehículos de Interés: Mostrar información sobre los clientes potenciales y los vehículos de su interés, proporcionando pistas valiosas para estrategias de marketing.

select
	p.id as id_prospecto,
	concat(p.nombre, ' ', p.apellido)  as prospecto,
	p.correo as "e-mail",
	p.nota as Vehiculo_interesado,
	e.id as id_empleado,
	concat(e.nombre, ' ', e.apellido) as empleado
from
	prospecto p 
	join empleado e on p.id_empleado_seguimiento = e.id;

--8. Empleados del Departamento de Servicio: Listar todos los empleados que pertenecen al departamento de servicio, junto con sus horarios de trabajo.

select *
from empleado e
where e.id_rol = 1;

--9. Vehículos Vendidos en un Rango de Precios: Encontrar los vehículos vendidos en un rango de precios específico, proporcionando datos útiles para análisis de ventas.

select 
	v.id,
	m2.nombre as fabricante,
	concat(m.nombre, ' ', m.año) as modelo,
	v.precio
from 
	vehiculo v
	join estado e on v.id_estado = e.id 
	join modelo m on v.id_modelo  = m.id 
	join marca m2 on m.id_marca = m2.id 
	left join venta v2 on v.id = v2.id_vehiculo
where
	v2.id is not null and v.precio between 10000000 and 20000000
group by
	v.id,
	fabricante,
	modelo
order by
	fabricante asc;

--10. Clientes con Múltiples Compras: Identificar a aquellos clientes que han realizado más de una compra en el concesionario, destacando la lealtad del cliente.

select
	c.id,
	concat(c.nombre, ' ', c.apellido) as cliente,
	count(v.id) as compras_totales 
from 
	cliente c
	join venta v ON c.id = v.id_cliente
group by 
	c.id 
having 
	count(v.id) > 1;