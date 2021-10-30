
Create database HospitalCoolPrueba

Use HospitalCool

select * from Pacientes

Create table Pacientes(
NumeroDeSeguridadSocial int primary key,
NombreDePaciente varchar(30),
ApellidoDePaciente varchar(30),
Domicilio varchar(30),
Sexo varchar(15),
CodigoPostal varchar(15),
Provincia varchar(30),
Num_Historial_Clinico int,
Observaciones varchar(100)
);

insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia, Num_Historial_Clinico,Observaciones)
values (55324,'Josue', 'Aguilar', '11 calle poniente ', 'Masculino', 1318, 'Nueva Concepcion', 1, 'Fiebre' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (451654,'Ariel', 'Alas', 'Av. vicente ', 'Masculino', 1318, 'Nueva Concepcion', 3, 'Temperatura alta' ); 

insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (87498,'Manuel', 'Portillo', 'Barrio el Rosario  ', 'Masculino', 1318, 'Nueva Concepcion',  1, 'Ojos rojos' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (96955,'Josselin', 'Yaneth', 'Barrio el Rosario ', 'Femenino', 1318, 'Nueva Concepcion', 3, 'Dolor en las articulaciones' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (46455,'Astrid', 'Lebron', 'Colonia las Brisas', 'Femenino', 1318, 'Nueva Concepcion', 1, 'Presenta mareros ' ); 

insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (54664,'Juan', 'Hernandez', 'Colonia las Brisas', 'Masculino', 1318, 'Nueva Concepcion',1, ' Paro Cardiaco' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (97889,'Ronald', 'Valle', 'Barrio el Rosario', 'Masculino', 1318, 'Nueva Concepcion', 1, 'Nauseas ' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia, Num_Historial_Clinico,Observaciones)
values (100154,'Sonia', 'Menjivar', 'Av. vicente', 'Femenino', 1318, 'Nueva Concepcion', 3, 'Dificultades para respirar ' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia,  Num_Historial_Clinico,Observaciones)
values (169895,'Kevin', 'Villeda', 'Barrio el Rosario', 'Masculino', 1318, 'Nueva Concepcion',1, 'Temperatura alta' ); 


insert into Pacientes (NumeroDeSeguridadSocial, NombreDePaciente, ApellidoDePaciente, Domicilio, Sexo, CodigoPostal, Provincia , Num_Historial_Clinico,Observaciones)
values (296598,'Alex', 'Cortez', 'Colonia las Brisas', 'Masculino', 1318, 'Nueva Concepcion',3, 'Dolor en las articulaciones ' ); 


Select* from Medicos
drop table Medicos

Create table Medicos(
Cod_Medico int primary key identity(1,1),
Nombres_Medico varchar(30),
Apellidos_Medico varchar(30),
Numero_Colegiado Varchar(50) unique,
Observaciones varchar(30)
)

insert into Medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, Observaciones)
values('Piter','Aguilar', 2444543 , 'Exito en sus diagnosticos ');

insert into Medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Anabel', 'López', 21122211, 'ninguna');

insert into Medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Angel', 'Gómez', 12321256,'ninguna');

insert into Medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Rosa', 'Méndez', 11215161 , 'ninguna');

insert into Medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Marlon', 'Cruz', 99887766 , 'ninguna');

insert into Medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Eriberto', 'Cañas', 34557766,'ninguna');

select *from Ingresos

Create table Ingresos(
Id_Ingresos int primary key identity(1,1),
Procedencia varchar(30),
FechaDeIngreso date,
NumeroDePlanta  int,
NumeroDeCama int,
Observaciones varchar(90),
NumeroDeSeguridadSocial int foreign key(NumeroDeSeguridadSocial) references Pacientes(NumeroDeSeguridadSocial),
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico)
);


insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion','21-02-2015', 1, 556, 'Fiebre'); 

insert into Ingresos(Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-02-2015', 2, 301, 'Temperatura alta'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', 2, 302, 'Temperatura alta'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '300', 'Temperatura alta'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '296', 'Ojos rojos'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '145', 'Dolor en las articulaciones'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '2', '516', 'Presenta mareros'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '2', '196', 'Dolor en las articulaciones '); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion',' 21-01-2015', '1', '87', 'Paro Cardiaco'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '95', 'Dolor en las articulaciones'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '2', '526', 'Nauseas'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion',' 21-01-2015', '1', '326', 'Dificultades para respirar'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion',' 21-01-2015', '1', '253', 'Dificultades para respirar'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion',' 21-01-2015', '1', '146', 'Temperatura alta'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '144', 'Dolor en las articulaciones'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '556', 'Dificultades para respirar'); 

insert into Ingresos (Procedencia,FechaDeIngreso, NumeroDePlanta, NumeroDeCama, Observaciones) 
values ( 'Nueva Concepcion', '21-01-2015', '1', '556', 'Dolor en las articulaciones'); 




select* from Contacto

drop table Contacto

Create table Contacto (
IdContacto int primary key identity(1,1),
Num_Telefonico int
);

insert into Contacto( Num_Telefonico) values ( +50389757244);

insert into Contacto( Num_Telefonico) values ( +50378954794);

insert into Contacto( Num_Telefonico) values ( +50376445446);

insert into Contacto( Num_Telefonico) values ( +50377445579);

insert into Contacto( Num_Telefonico) values ( +50377445596);

insert into Contacto( Num_Telefonico) values ( +50379151365);

insert into Contacto( Num_Telefonico) values ( +50370644841);

insert into Contacto( Num_Telefonico) values ( +50371448598);

insert into Contacto( Num_Telefonico) values ( +5037224564);

insert into Contacto( Num_Telefonico) values ( +50377213589);


select *from Contacto_Paciente 

drop table Contacto_Paciente
Create Table Contacto_Paciente(
Contacto_Del_Paciente int primary key identity(1,1), 
Contacto int foreign key(Contacto) references Contacto(IdContacto),
NumeroDeSeguridadSocial int foreign key(NumeroDeSeguridadSocial) references Pacientes(NumeroDeSeguridadSocial)
);

into into Contacto_Paciente (Contacto_Del_Paciente, Contacto )



select * from Especialidades
drop table Especialidades

Create table Especialidades(
Id_Especialidad int primary key identity(1,1),
Nombre varchar(50)
);

insert into Especialidades( Nombre)
values('Cirujano')


drop table Especiales_Medicos 
select *from Especiales_Medicos 

Create table Especiales_Medicos( 
Id_Especialidad_Medico int primary key identity(1,1), 
Id_Especialidad int foreign key(Id_Especialidad) references Especialidades(Id_Especialidad),
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico)
);

select *from Cargos
drop table Cargos 

Create table Cargos(
Id_Cargo int primary key identity(1,1),
Nombre varchar(30),
Descripción varchar(60)
)

insert into Cargos( Nombre, Descripción)
values ('Cirujano','Realizar operaciones')
insert into Cargos( Nombre, Descripción)
values('Laboratorio',' Realizar examenes');
insert into Cargos( Nombre, Descripción)
values ('Administración','Gestonar la empresa')
insert into Cargos( Nombre, Descripción)
values('Secretario', 'Hacer apuntes generales')
insert into Cargos( Nombre, Descripción)
values('Enfermera', 'Atender pacientes')




drop table Medicos_Cargos 

Create table Medicos_Cargos(
Id_Especialidad_Medico int primary key identity(1,1), 
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico),
Id_Cargo int foreign key(Id_Cargo) references cargos(Id_Cargo)
)