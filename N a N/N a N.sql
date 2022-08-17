/*
N:N Las ventas pueden tener N productos por cada una de ellas
*/

CREATE DATABASE Actividad_1_2_3
GO
USE Actividad_1_2_3
GO
CREATE TABLE Venta(
	CodigoVenta INT PRIMARY KEY,
	Valor MONEY NOT NULL CHECK (Valor > 0)
)
CREATE TABLE Producto(
	ID SMALLINT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(25) NOT NULL
)
GO
CREATE TABLE ProductoxVenta(
	CodigoVenta INT NOT NULL FOREIGN KEY REFERENCES Venta (CodigoVenta),
	IDProducto SMALLINT NOT NULL FOREIGN KEY REFERENCES Producto(ID)
)
GO