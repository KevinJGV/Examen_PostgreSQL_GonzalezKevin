# (4H) Concesionario de vehículos

Este exámen tiene como objetivo mejorar la gestión de información en un concesionario de vehículos, utilizando una base de datos diseñada en PostgreSQL y archivos SQL para consultas. Se busca crear una base de datos bien estructurada que incluya detalles sobre el inventario de vehículos, clientes y ventas, historial de servicios, proveedores de piezas, empleados y departamentos. Se prioriza la implementación de consultas específicas para mejorar la eficiencia en la gestión de ventas y servicios, así como para proporcionar análisis útiles para la toma de decisiones.



### **Especificaciones**



El concesionario de vehículos desea mejorar la administración de su información. Se requiere una base de datos que permita gestionar eficientemente el inventario de vehículos, los clientes, el historial de servicios realizados, las transacciones de ventas, los proveedores de piezas, los empleados y los departamentos de servicio y ventas.



### **Requerimientos para la base de datos:**

- Inventario de Vehículos:
- El concesionario mantiene un registro de todos los vehículos disponibles para la venta, especificando detalles como marca, modelo, año, precio, estado (nuevo/usado), etc.
- Clientes y Ventas:
- Se desea almacenar la información de los clientes que realizan compras, incluyendo sus datos personales y el historial de transacciones de ventas.
- Historial de Servicios:
- El concesionario realiza servicios de mantenimiento y reparación. Es necesario mantener un historial de servicios que incluya la información de los vehículos, los empleados que realizaron el servicio y las fechas.
- Proveedores de Piezas:
- Se requiere un registro de los proveedores que suministran piezas para los servicios de mantenimiento.
- Empleados:
- La base de datos debe contener información sobre los empleados del concesionario, incluyendo datos personales, roles y fechas de contratación.
- Departamento de Ventas:
- Para mejorar la gestión interna, se desea conocer información sobre el rendimiento del personal de ventas, las comisiones generadas y las ventas realizadas.
- Departamento de Servicio:
- Se necesita un registro de los empleados del departamento de servicio, los servicios realizados y los horarios de trabajo.
- Clientes Potenciales:
- El concesionario desea mantener un seguimiento de clientes potenciales que han mostrado interés en los vehículos, pero aún no han realizado una compra.



**Se necesita:** El diseño de la base de datos en un archivo de tipo imagen con buena resolución y los archivos SQL (Basados en PostgreSQL) con las querys de creaciones, inserciones y las siguientes consultas:

1. Listar Vehículos Disponibles: Obtener una lista de todos los vehículos disponibles para la venta, incluyendo detalles como marca, modelo, y precio.
2. Clientes con Compras Recientes: Mostrar los clientes que han realizado compras recientemente, junto con la información de los vehículos adquiridos.
3. Historial de Servicios por Vehículo: Obtener el historial completo de servicios realizados para un vehículo específico, incluyendo detalles sobre los empleados involucrados y las fechas de servicio.
4. Proveedores de Piezas Utilizados: Listar los proveedores de piezas que han suministrado componentes utilizados en los servicios de mantenimiento.
5. Rendimiento del Personal de Ventas: Calcular las comisiones generadas por cada empleado del departamento de ventas en un período específico.
6. Servicios Realizados por un Empleado: Identificar todos los servicios de mantenimiento realizados por un empleado específico, incluyendo detalles sobre los vehículos atendidos.
7. Clientes Potenciales y Vehículos de Interés: Mostrar información sobre los clientes potenciales y los vehículos de su interés, proporcionando pistas valiosas para estrategias de marketing.
8. Empleados del Departamento de Servicio: Listar todos los empleados que pertenecen al departamento de servicio, junto con sus horarios de trabajo.
9. Vehículos Vendidos en un Rango de Precios: Encontrar los vehículos vendidos en un rango de precios específico, proporcionando datos útiles para análisis de ventas.
10. Clientes con Múltiples Compras: Identificar a aquellos clientes que han realizado más de una compra en el concesionario, destacando la lealtad del cliente.



Resultado esperado

Para desarrollar dicho exámen se deben tener los siguientes puntos en cuenta:

- Se puede realizar en equipos de 1 personas, donde se deberá aportar periódicamente al repositorio de GitHub. Para este caso, se creará un repositorio privado llamado “Examen_PostgreSQL_Apellido1Nombre1” con dicho fin.
- En dicho repositorio se agregarán mínimo cuatro archivos, uno para el/los diagrama E-R (logico-fisico-conceptual con el proceso de normalización), otro para la estructura PSQL, inserciones y consultas, todos con las reglas de documentación anteriormente mencionadas.
- Solamente se permitirá usar PostgreSQL para la persistencia de datos, pues la idea es realizar las consultas pertinentes.