--PRACTICA 1
select * from Cliente;
select * from Empleado
select * from [192.168.1.66].Mabarak.dbo.Venta;
select * from Venta;
INSERT INTO [192.168.1.66].Mabarak.dbo.Venta (fecha_venta,total_venta,id_empleado,id_cliente) 
VALUES ('2022-07-15',1126,dbo.buscarIdEmp('Fernando','Contreras'),4);

select * from [192.168.1.66].Mabarak.dbo.Venta;

--PRACTICA 2
CREATE VIEW TIKET AS
SELECT DV.id_venta, DV.id_tipo_tanque, DV.id_tanque_cliente, DV.id_ruta FROM Detalle_Venta DV
INNER JOIN RUTA R ON R.id_ruta = DV.id_ruta
INNER JOIN Tipo_Tanque TT ON TT.id_tipo_tanque = DV.id_tipo_tanque

CREATE VIEW TIKET AS
SELECT R.id_ruta, TT.precio_kg, TT.kilos, V.fecha_venta FROM Detalle_Venta DV
INNER JOIN RUTA R ON R.id_ruta = DV.id_ruta
INNER JOIN Tipo_Tanque TT ON TT.id_tipo_tanque = DV.id_tipo_tanque
INNER JOIN Venta V ON V.id_venta = DV.id_venta


DROP VIEW TIKET
SELECT * FROM TIKET
SELECT * FROM VENTA;

SELECT * FROM Vehiculo
SELECT * FROM Chofer
SELECT * FROM Cliente

CREATE VIEW TIKET AS
SELECT R.id_ruta, TT.precio_kg, TT.kilos, V.fecha_venta FROM [192.168.1.66].Mabarak.dbo.Detalle_Venta DV
INNER JOIN [192.168.1.66].Mabarak.dbo.Ruta R ON R.id_ruta = DV.id_ruta
INNER JOIN [192.168.1.66].Mabarak.dbo.Tipo_tanque TT ON TT.id_tipo_tanque = DV.id_tipo_tanque
INNER JOIN [192.168.1.66].Mabarak.dbo.Venta V ON V.id_venta = DV.id_venta

SELECT * FROM tiket

SELECT modelo FROM [192.168.1.66].Mabarak.dbo.Vehiculo WHERE id_vehiculo = 2;
SELECT telefono FROM [192.168.1.66].Mabarak.dbo.Chofer WHERE nombre = 'Rafael';
SELECT direccion FROM [192.168.1.66].Mabarak.dbo.Cliente WHERE apellido = 'Gomez';

SELECT id_ruta FROM tiket WHERE fecha_venta = '2022-05-15'
SELECT precio_kg FROM tiket WHERE kilos = 20 
SELECT fecha_venta FROM tiket WHERE id_ruta = 2 




--PRACTICA 3


select R.id_ruta, R.id_chofer,R.hora_salida from Ruta R 
LEFT JOIN Chofer C on C.id_chofer = R.id_chofer
LEFT JOIN  [192.168.1.66].Mabarak.dbo.Detalle_Venta DV on DV.id_venta = R.id_ruta;





--LEFT JOIN [192.168.1.66].Mabarak.dbo.Colonia CO on CO.id_colonia = R.id_colonia
SELECT * FROM Ruta

--PRACTICA 4

--SELECT * FROM Vehiculo;

--SELECT count(id_vehiculo) as VehiculosStartruck FROM Vehiculo WHERE modelo = 'Star truck'

--SELECT id_chofer FROM Chofer WHERE id_vehiculo = (SELECT count(id_vehiculo) as VehiculosStartruck FROM Vehiculo WHERE modelo = 'Star truck');

--MUESTRA EL ID DEL CHOFER DONDE CUENTE LOS NUMEROS DE VEHICULOS QUE SON MODELO START TRUCK EN CADA RUTA QUE HAYA TENIDO EL CHOFER

SELECT id_ruta, fecha_salida, id_chofer FROM Ruta 
	WHERE id_chofer = (
		SELECT id_chofer FROM [192.168.1.66].Mabarak.dbo.Chofer WHERE id_vehiculo = (
			SELECT count(id_vehiculo) as VehiculosStartruck FROM [192.168.1.66].Mabarak.dbo.Vehiculo WHERE modelo = 'Star truck')
	)

--PRACTICA 5

--PRACTICA 6
use master
go

use Mabarak
create login usuario2 with PASSWORD ='usuario2345'
create user usuario3 for login usuario2
grant select on OBJECT::Cliente(nombre) to usuario3 with grant option


--PRACTICA 7

CREATE PROCEDURE ingresarColonia(
@id int,
@Nombre varchar(50)) as
BEGIN
if exists (select * from Colonia where nombre=@Nombre)
begin
SELECT 'La colonia ya existe'
end
	else
begin 
insert into Colonia (id_colonia,nombre) values (@id,@Nombre);
SELECT 'Colonia agregada con exito'
	end
end;

select * from Colonia

exec ingresarColonia '','21 de Abril';

exec ingresarColonia '11','Sabalos';

--PRACTICA 8
CREATE TRIGGER ingresarRutChofer ON Ruta instead of INSERT AS
BEGIN
DECLARE @id_ru as int
DECLARE @hora_sal as time
DECLARE @fecha_sal as date
DECLARE @id_ch as int
DECLARE @id_col as int

SET @hora_sal = (SELECT hora_salida from INSERTED)
SET @fecha_sal = (SELECT fecha_salida from INSERTED)
SET @id_ch = (SELECT id_chofer from INSERTED)
SET @id_col = (SELECT id_colonia from INSERTED)
if exists (select * from Ruta where id_chofer=@id_ch and hora_salida=@hora_sal)
BEGIN
SELECT 'EL CHOFER YA VA EN RUTA'
END
else
BEGIN
insert into Ruta values(@hora_sal,@fecha_sal,@id_ch,@id_col);
SELECT 'RUTA AGREGADA'
END
END;

insert into Ruta values('09:00','2022-05-15',1,1);

insert into Ruta values('15:00','2022-05-16',1,3);

select * from Ruta;

select * from Tipo_Tanque;
select * from chofer;
select * from Ruta;
--Practica 9

SELECT * FROM Colonia


INSERT INTO Colonia VALUES('bajadas');

CREATE TRIGGER deleteCol
ON Colonia
AFTER INSERT
AS
BEGIN
	INSERT INTO Colonia VALUES('Bajadas')
	if exists(SELECT 1 FROM [192.168.1.66].Mabarak.dbo.Colonia WHERE nombre = 'Bajadas')
	BEGIN
		DELETE FROM [192.168.1.66].Mabarak.dbo.Colonia WHERE nombre = 'Bajadas'
	END
END;

CREATE TRIGGER DeleteCol ON Colonia instead of DELETE AS
BEGIN
DECLARE @id_ru as int
DECLARE @hora_sal as time
DECLARE @fecha_sal as date
DECLARE @id_ch as int
DECLARE @id_col as int

SET @hora_sal = (SELECT hora_salida from INSERTED)
SET @fecha_sal = (SELECT fecha_salida from INSERTED)
SET @id_ch = (SELECT id_chofer from INSERTED)
SET @id_col = (SELECT id_colonia from INSERTED)
if exists (select * from Ruta where id_chofer=@id_ch and hora_salida=@hora_sal)
BEGIN
SELECT 'EL CHOFER YA VA EN RUTA'
END
else
BEGIN
insert into Ruta values(@hora_sal,@fecha_sal,@id_ch,@id_col);
SELECT 'RUTA AGREGADA'
END
END;