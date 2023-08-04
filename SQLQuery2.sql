--INTRODUCIR DATOS TABLA CLIENTE

--INSERT INTO Cliente values('Jorge Antonio','Mendez','Av. Los Nortes','2291187523','El Coyol');
--INSERT INTO Cliente values('Gabriela','Lazcano','Calle 3','2292263120','Lomas de Rio Medio II');
--INSERT INTO Cliente values('José Alberto','Pava','Calle Heroica','2293143178','Julio Tejeda');
--INSERT INTO Cliente values('Marcela','Rodriguez', 'Piedra Lunar esq. Brillante','2841152666','Las Amapolas');
--insert into Cliente values('Luis Felipe','Santos','Cortés esq. Bravo','2299364510','Veracruz Centro');
--insert into Cliente values('Adriana','Gomez','Canal entre Madero e Hidalgo','2293171684','Veracruz Centro');
--insert into Cliente values('Camilo','Polanco','Calle 6 esq. Carlos Cruz','2230141820','21 de Abril');
--insert into Cliente values('Sandra Ximena','Ochoa','Calle 15 esq. Campero','2293162041','Pocitos y Rivera');
--insert into Cliente values('Olga','Uribe Antia','Cerro gordo entre Las Derrumbadas y Cerro la Estrella','2881156389','Los Volcanes');
--insert into Cliente values('Julian','Montoya R','Calle 20 entre Cortés y Juan Soto','2293524872','21 de Abril');
--insert into Cliente values('Ivan','Guerrero Vargas','Rio Viñasco entre Cabo Romain y Pazquel','2299547698','Lomas de Rio Medio III');
--insert into Cliente values('Ivan Andrés','Vargas Guerrero','Rio Misantla entre Rio Otate y Rio Cempoala','2294565120','Lomas de Rio Medio');

--INTRODUCIR DATOS TABLA EMPLEADO
--insert into Empleado values('Claudia','Pinzon','2299253633');
--insert into Empleado values('Mario','Mora','2299211252');
--insert into Empleado values('Fernando','Contreras','2299342308'); 
--insert into Empleado values('Natalia','Rojas','2299891818');
--insert into Empleado values('Fabian Oscar','Larios','2299891819');

--INTRODUCIR DATOS TABLA SUCURSAL
--insert into Sucursal values('Veracruz','Las Bajadas','2');
--insert into Sucursal values('Veracruz','Francisco Villa','1');
--insert into Sucursal values('Veracruz','Cristobal Colón','3');
--insert into Sucursal values('Veracruz', 'Las bajadas','4');
--insert into Sucursal values('Veracruz','Francisco Villa','5');

--INTRODUCIR DATOS TABLA VEHICULO
--insert into Vehiculo values('WLU-94-96','Chevrolet',7,'Roja',12);
--insert into Vehiculo values('YBU-80-66','Star Truck',3.5,'Blanca',12);
--insert into Vehiculo values('YJB-13-12','Nissan Chasis',7,'Gris',15);
--insert into Vehiculo values('YEZ-901-A','Toyota Hilux',7,'Blanca',12);
--insert into Vehiculo values('XYJ-113-A','Toyota Hilux',7,'Blanca',12);
--insert into Vehiculo values('YHZ-19-26','Star Truck',3.5,'Blanca',12);
--insert into Vehiculo values('YLF-52-09','Chevrolet',7,'Roja',12);
--insert into Vehiculo values('YGL-71-59','Star Truck',3.5,'Blanca',12);

--INTRODUCIR DATOS TABLA CHOFER
--insert into Chofer values('Pedro','Carsolio','2299200603','1');
--insert into Chofer values('Hugo','Soto','2291658488','2');
--insert into Chofer values('Rafael','Morales','2294150694','3');
--insert into Chofer values('Vicente','Guevara','2293634844','4');
--insert into Chofer values('Erick Raul','Santos','2841151698','5');
--insert into Chofer values('Alfonso','Zaragoza','2293746088','6');
--insert into Chofer values('Dante','Herrera','2841146359','7');
--insert into Chofer values('Ricardo','Sandoval','2293657523','8');

--INTRODUCIR DATOS TABLA COLONIA
--insert into Colonia values('Pocitos y Rivera');
--insert into Colonia values('El Coyol 1era sección');
--insert into Colonia values('Julio Tejeda');
--insert into Colonia values('Lomas de Rio Medio');
--insert into Colonia values('21 de Abril');
--insert into Colonia values('Lomas de Rio Medio II');
--insert into Colonia values('Los Volcanes');
--insert into Colonia values('Veracruz Centro');
--insert into Colonia values('Lomas de Rio Medio III');
--insert into Colonia values('Las Amapolas');

--INTRODUCIR DATOS TABLA RUTA
--insert into Ruta values('09:00','15-05-2022','1','1');
--insert into Ruta values('09:00','15-05-2022','2','2');
--insert into Ruta values('10:00','15-05-2022','3','3');
--insert into Ruta values('10:00','15-05-2022','4','4');
--insert into Ruta values('14:00','15-05-2022','5','5');
--insert into Ruta values('14:00','15-05-2022','6','6');
--insert into Ruta values('15:00','15-05-2022','7','7');
--insert into Ruta values('15:00','15-05-2022','8','8');
--insert into Ruta values('10:00','16-05-2022','3','1');
--insert into Ruta values('10:00','16-05-2022','6','2');
--insert into Ruta values('14:00','16-05-2022','2','8');

--INTRODUCIR DATOS TABLA TIPO_TANQUE
--insert into Tipo_Tanque values('Color azul, buen estado',486,20);
--insert into Tipo_Tanque values('Color naranja, buen estado',737,30);
--insert into Tipo_Tanque values('Color rojo, buen estado',250,10);
--insert into Tipo_Tanque values('Color naranja, buen estado',625,25);
--insert into Tipo_Tanque values('Color blanco, buen estado',1126,45);
--insert into Tipo_Tanque values('Color rojo, buen estado',375,15);
--insert into Tipo_Tanque values('Color azul, buen estado',737,30);
--insert into Tipo_Tanque values('Color rojo, buen estado',486,20);
--insert into Tipo_Tanque values('Color naranja, buen estado',625,25);
--insert into Tipo_Tanque values('Color blanco, buen estado',486,20);

--INTRODUCIR DATOS TABLA TANQUE_RECARGA_CLIENTE
--insert into Tanque_Recarga_Cliente values(20,486);
--insert into Tanque_Recarga_Cliente values(30,737);
--insert into Tanque_Recarga_Cliente values(15,375);
--insert into Tanque_Recarga_Cliente values(20,486);
--insert into Tanque_Recarga_Cliente values(8,200);
--insert into Tanque_Recarga_Cliente values(6,150);
--insert into Tanque_Recarga_Cliente values(10,250);
--insert into Tanque_Recarga_Cliente values(0,0);

--INTRODUCIR DATOS TABLA VENTA
--insert into Venta values('15-05-2022',486,1,1);
--insert into Venta values('15-05-2022',737,3,2);
--insert into Venta values('15-05-2022',250,2,8);
--insert into Venta values('15-05-2022',1126,3,5);
--insert into Venta values('15-05-2022',486,4,4);
--insert into Venta values('15-05-2022',250,5,12);

--INTRODUCIR DATOS TABLA DETALLE_VENTA
--insert into Detalle_Venta values(1,1,1,NULL,2);
--insert into Detalle_Venta values(1,4,NULL,6,3);
--insert into Detalle_Venta values(1,2,NULL,2,4);
--insert into Detalle_Venta values(1,6,3,NULL,2);

