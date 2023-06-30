



/*

create database upd_database

use upd_database

DROP TABLE USUARIOS;
DROP TABLE CATEGORIA;
DROP TABLE PRODUCTO;
DROP TABLE H_PRODUCTO;
DROP TABLE CARRITO_COMPRA;
*/


--/////////////////////////USUARIOS///////////////////////////////////////////

IF OBJECT_ID('USUARIOS', 'U') IS NOT NULL 
  DROP TABLE USUARIOS; 
GO

CREATE TABLE USUARIOS
(
  "ID"                          INT IDENTITY(1,1),
  "USER_NAME"                   VARCHAR(40) NOT NULL,
  "NOMBRE_COMPLETO"             VARCHAR(100) NOT NULL,
  "PASSWORD"		            VARCHAR(100) NOT NULL,
  "USUARIO_REGISTRO"            VARCHAR(50) DEFAULT SYSTEM_USER NOT NULL,
  "FECHA_REGISTRO"              DATETIME DEFAULT getdate() NOT NULL,
  "ESTADO_REGISTRO"				INT DEFAULT 1 NOT NULL, 
  CONSTRAINT USUARIOS_PK		PRIMARY KEY (ID)
);

--/////////////////////////CATEGORIA///////////////////////////////////////////

IF OBJECT_ID('CATEGORIA', 'U') IS NOT NULL 
  DROP TABLE CATEGORIA; 
GO

CREATE TABLE CATEGORIA
(
  "ID"                          INT IDENTITY(1,1),
  "NOMBRE"						VARCHAR(100) NOT NULL,
  "USUARIO_REGISTRO"            VARCHAR(50) DEFAULT SYSTEM_USER NOT NULL,
  "FECHA_REGISTRO"              DATETIME DEFAULT getdate() NOT NULL,
  "ESTADO_REGISTRO"				INT DEFAULT 1 NOT NULL, 
  CONSTRAINT CATEGORIA_PK		PRIMARY KEY (ID)
);


  

/*


select * from USUARIOS
select * from CATEGORIA
select * from PRODUCTO
select * from H_PRODUCTO
select * from CARRITO_COMPRA






INSERT INTO [dbo].[CATEGORIA]([NOMBRE]) VALUES ('Limpieza') 


INSERT INTO [dbo].[PRODUCTO]([NOMBRE], [ID_CATEGORIA]) VALUES ('Categoria 1', 1) 
INSERT INTO [dbo].[PRODUCTO]([NOMBRE], [ID_CATEGORIA]) VALUES ('Pro 2', 1) 
INSERT INTO [dbo].[PRODUCTO]([NOMBRE], [ID_CATEGORIA]) VALUES ('Pro 3', 1) 


INSERT INTO [dbo].[USUARIOS]([USER_NAME], [NOMBRE_COMPLETO], [PASSWORD]) VALUES ('123', '456', '789') 


INSERT INTO [dbo].[CARRITO_COMPRA]([FECHA], [ID_USUARIO]) VALUES (getdate(), 1) 


INSERT INTO [dbo].[H_PRODUCTO]([CANTIDAD], [ID_PRODUCTO], [ID_CARRITO_COMPRA]) VALUES (10, 1, 1) 
INSERT INTO [dbo].[H_PRODUCTO]([CANTIDAD], [ID_PRODUCTO], [ID_CARRITO_COMPRA]) VALUES (5, 2, 1) 
INSERT INTO [dbo].[H_PRODUCTO]([CANTIDAD], [ID_PRODUCTO], [ID_CARRITO_COMPRA]) VALUES (1, 3, 1) 



















 "USUARIO_REGISTRO" -> UsuariosRegistro



*/