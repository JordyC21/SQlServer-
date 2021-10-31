Create database Hospital 

use Hospital 


Create Table Paciente
(
NumeroDeSeguridadSocial INT ,
NombreDePaciente Varchar (20),
ApellidoDePaciente Varchar (21),
Domicilio Varchar(50),
Sexo Varchar (53),
CodigoPostal INT,
Provincia Varchar (55),
NumeroDeTelefono INT,
NumeroHistorialClinico int,
Observaciones VarChar (50),
);

Select*From Paciente

drop table Paciente

Create Table Ingreso
(
ID INT PRIMARY KEY IDENTITY (1,1), 
Procedencia Varchar (28),
FechaDeIngreso Date,
NumeroDePlanta INT,
NumeroDeCama INT,
Observacion Varchar(29),
);

Select*From Ingreso

drop table Ingreso

Create Table Medicos
(
CodigoDeIdentificacion int UNIQUE Identity (2431,130),
Nombre Varchar (30) ,
Apellido Varchar (31),
Especialidad Varchar (32),
NumeroColegiado int ,
Cargo Varchar(50),
Observacion text 
);

Select*From Medicos

drop table Medicos 