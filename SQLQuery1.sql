--TABLA CLIENTE

--create table Cliente(
--id_cliente int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--nombre varchar(100),
--apellido varchar(100),
--direccion varchar(100),
--telefono char(10),
--colonia varchar(100));

--TABLA EMPLEADO

--create table Empleado(
--id_empleado int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--nombre varchar(100),
--apellido varchar(100),
--telefono char(10));

--TABLA SUCURSAL

--create table Sucursal(
--id_sucursal int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--ciudad varchar(100),
--colonia varchar(100),
--id_empleado int,
--CONSTRAINT FK_Sucursal_id_empleado FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado)); 

--TABLA COLONIA
--create table Colonia(
--id_colonia int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--nombre varchar(50));

--TABLA CHOFER
--create table Chofer(
--id_chofer int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--nombre varchar(100),
--apellido varchar(100),
--telefono char(10),
--id_vehiculo int);
--LLAVE FORANEA DE ID_VEHICULO EN CHOFER FUERA DE LA TABLA
--ALTER TABLE Chofer ADD CONSTRAINT FK_Chofer_id_vehiculo FOREIGN KEY (id_vehiculo) REFERENCES Vehiculo (id_vehiculo);
--ALTER TABLE Chofer CHECK CONSTRAINT FK_Chofer_id_vehiculo;
--ALTER TABLE Chofer drop CONSTRAINT FK_Chofer_id_vehiculo;


--TABLA VEHICULO 
--create table Vehiculo(
--id_vehiculo int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--placa varchar(10),
--modelo varchar(50),
--peso_max decimal(10,2),
--color varchar(10),
--cant_tanque int);
--ALTER TABLE Vehiculo NOCHECK CONSTRAINT FK_Vehiculo_id_chofer; --BORRAR RESTRICCIONES
--ALTER TABLE Vehiculo drop CONSTRAINT FK_Vehiculo_id_chofer; --BORRAR LLAVE FORANEA CON RESTRICCIONES
--LLAVE FORANEA DE IF_CHOFER EN VEHICULO, FUERA DE LA TABLA
--ALTER TABLE Vehiculo ADD CONSTRAINT FK_Vehiculo_id_chofer FOREIGN KEY (id_chofer) REFERENCES Chofer (id_chofer);

--TABLA RUTA
--create table Ruta(
--id_ruta int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--hora_salida datetime,
--ALTER table Ruta ALTER column hora_salida time;
--fecha_salida date,
--id_chofer int,
--id_colonia int,
--CONSTRAINT FK_Ruta_id_chofer FOREIGN KEY (id_chofer) REFERENCES Chofer (id_chofer),
--CONSTRAINT FK_Ruta_id_colonia FOREIGN KEY (id_colonia) REFERENCES Colonia (id_colonia)); 

--TABLA Tipo_Tanque
--create table Tipo_Tanque(
--id_tipo_tanque int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--descripcion_tanque varchar(30),
--precio_kg tinyint,
--ALTER table Tipo_Tanque ALTER column precio_kg float;
--kilos int);

--TABLA TANQUE_RECARGA_CLIENTE
--create table Tanque_Recarga_Cliente(
--id_tanque_cliente int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--kilos int,
--precio_kg tinyint);
--ALTER table Tanque_Recarga_Cliente ALTER column precio_kg float;

--TABLA VENTA
--create table Venta(
--id_venta int PRIMARY KEY IDENTITY(1,1) NOT NULL,
--fecha_venta date,
--total_venta float,
--id_empleado int,
--id_cliente int,
--CONSTRAINT FK_Venta_id_empleado FOREIGN KEY (id_empleado) REFERENCES Empleado (id_empleado),
--CONSTRAINT FK_Venta_id_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente));

--TABLA DETALLE_VENTA
--create table Detalle_Venta(
--cantidad_tanques int,
--id_venta int,
--id_tipo_tanque int,
--id_tanque_cliente int,
--id_ruta int,
--CONSTRAINT FK_Detalle_Venta_id_venta FOREIGN KEY (id_venta) REFERENCES Venta (id_venta),
--CONSTRAINT FK_Detalle_Venta_id_tipo_tanque FOREIGN KEY (id_tipo_tanque) REFERENCES Tipo_Tanque (id_tipo_tanque),
--CONSTRAINT FK_Detalle_Venta_id_tanque_cliente FOREIGN KEY (id_tanque_cliente) REFERENCES Tanque_Recarga_Cliente (id_tanque_cliente),
--CONSTRAINT FK_Detalle_Venta_id_ruta FOREIGN KEY (id_ruta) REFERENCES Ruta (id_ruta));


--ELIMINAR DATOS DE LA TABLA
--DELETE FROM Tanque_Recarga_Cliente;
--RESETEAR
--DBCC CHECKIDENT(Tanque_Recarga_Cliente,RESEED,0)