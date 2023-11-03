CREATE SCHEMA tienda_zapatillas ;
USE tienda_zapatillas ;

CREATE TABLE empleados (
id_empleados INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(45) NOT NULL,
tienda VARCHAR (45) NOT NULL,
salario INT NULL,
fecha_incorporacion DATE NOT NULL,
PRIMARY KEY (id_empleados)
);


CREATE TABLE facturas (
id_factura INT NOT NULL AUTO_INCREMENT,
numero_factura VARCHAR(45),
fecha DATE NOT NULL,
id_zapatillas INT NOT NULL, 
id_empleados INT NOT NULL, 
id_clientes INT NOT NULL, 
PRIMARY KEY (id_factura),
CONSTRAINT fk_facturas_zapatilla
	FOREIGN KEY (id_zapatillas) REFERENCES zapatillas (id_zapatillas),
CONSTRAINT fk_facturas_empleados   
	FOREIGN KEY (id_empleados) REFERENCES empleados (id_empleados),
CONSTRAINT fk_facturas_clientes
	FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes)
);


CREATE TABLE zapatillas (
id_zapatillas INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(45) NOT  NULL,
color VARCHAR(45) NOT NULL,
PRIMARY KEY (id_zapatillas)
);


CREATE TABLE clientes (
id_clientes INT NOT NULL AUTO_INCREMENT, 
nombre VARCHAR(45) NOT NULL,
numero_telefono INT NOT NULL,
email VARCHAR(45) NOT NULL,
direccion VARCHAR(45) NOT NULL,
ciudad VARCHAR(45) NULL,
provincia VARCHAR(45) NULL,
pais VARCHAR(45) NOT NULL,
codigo_postal VARCHAR(45) NOT NULL,
PRIMARY KEY (id_clientes)
);

/* EJERCICIOS MODIFICACIÓN E INSERCIÓN DE DATOS */
/*EJERCICIO 1*/
/*1*/
ALTER TABLE zapatillas
ADD COLUMN talla INT NOT NULL;

/*2*/
ALTER TABLE empleados
MODIFY COLUMN salario FLOAT NOT NULL;

/*3*/
ALTER TABLE clientes
DROP COLUMN pais;

/*4*/
ALTER TABLE facturas
ADD COLUMN total_facturas FLOAT;


/*EJERCICIO 2*/
/*1*/
INSERT INTO zapatillas
(modelo,color,marca,talla)
VALUES ('XQYUN', 'Negro','Nike',42),
('UOPMN','Rosas','Nike', 39),
('OPNYT', 'Verdes','Adidas',35);

/*2*/
INSERT INTO empleados
(nombre,tienda,salario,fecha_incorporacion)
VALUES ('Laura','Alcobendas',25987,'2010-09-03'),
('María','Sevilla', 0, '2001-11-04'),
('Ester','Oviedo',30165.98,'2000-11-29');

/*3*/
INSERT INTO clientes
(nombre,numero_telefono,email,direccion,ciudad,provincia,codigo_postal)
VALUES ('Mónica',1234567289,'monica@email.com','Calle Felicidad','Mostoles','Madrid','28176'),
('Lorena',289345678,'lorena@email.com','Calle Alegría','Barcelona','Barcelona','12346'),
('Carmen',298463759,'carmen@email.com','Calle Del color','Vigo','Pontevedra','23456');

/*4*/
INSERT INTO facturas
(numero_factura,fecha,id_zapatillas,id_empleados,id_clientes,total_facturas)
VALUES ('123','2001-12-11', 1,10,1,54.98),
('1234', '2005-05-23',1,11,3,89.91),
('12345','2015-09-18',2,12,3,76.23);

/*EJERCICIO 3*/
/*1*/
UPDATE zapatillas
SET color = 'amarillas'
WHERE id_zapatillas = 2;

/*2*/
UPDATE empleados
SET tienda = 'A Coruña'
WHERE id_empleados = 10;

/*3*/
UPDATE clientes
SET numero_telefono = 123456728
WHERE id_clientes = 1;

/*4*/
UPDATE facturas
SET total_facturas = 89.91
WHERE id_zapatillas = 2;