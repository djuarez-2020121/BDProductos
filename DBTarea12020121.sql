create database DBTarea12020121;
use DBTarea12020121;
/*-Daniel Alejandro Juárez García 2020121 IN5AV-*/

/*-Creacion de la tabla categoria-*/
create table Categorias(
	codigoCategoria int not null auto_increment,
	descripcionCategoria varchar(50) not null,
	primary key PK_codigoCategoria(codigoCategoria)
);

/*-Insertando 5 registros en la tabla Categorias-*/ 
insert into Categorias(codigoCategoria,descripcionCategoria) values(1,'Excelente');
insert into Categorias(codigoCategoria,descripcionCategoria) values(2,'Bueno');
insert into Categorias(codigoCategoria,descripcionCategoria) values(3,'Regular');
insert into Categorias(codigoCategoria,descripcionCategoria) values(4,'Duradero');
insert into Categorias(codigoCategoria,descripcionCategoria) values(5,'Fragil');
select * from Categorias;

/*-Creacion de la tabla tallas-*/
create table Tallas(
	codigoTalla int not null auto_increment,
    descripcionTalla varchar(50) not null,
    primary key PK_codigoTalla (codigoTalla)
);

/*-Insertanto 5 registros a la tabla Tallas-*/
insert into Tallas(codigoTalla,descripcionTalla) values(1,'Small');
insert into Tallas(codigoTalla,descripcionTalla) values(2,'Medium');
insert into Tallas(codigoTalla,descripcionTalla) values(3,'Large');
insert into Tallas(codigoTalla,descripcionTalla) values(4,'Extra Grande');
insert into Tallas(codigoTalla,descripcionTalla) values(5,'Extra Small');
select * from Tallas;

/*-Creacion de la tabla marcas-*/
create table Marcas(
	codigoMarca int not null auto_increment,
    descripcionMarca varchar(50) not null,
    primary key PK_codigoMarca (codigoMarca)
);

/*-Insertando 5 registros a la tabla Marcas-*/ 
insert into Marcas(codigoMarca,descripcionMarca) values(1,'Adidas');
insert into Marcas(codigoMarca,descripcionMarca) values(2,'Nike');
insert into Marcas(codigoMarca,descripcionMarca) values(3,'Puma');
insert into Marcas(codigoMarca,descripcionMarca) values(4,'Champion');
insert into Marcas(codigoMarca,descripcionMarca) values(5,'Skechers');
select * from Marcas;

/*-Creacion de la tabla productos-*/
create table Productos(
	codigoProducto int not null auto_increment,
    descripcionProducto varchar(50) not null,
    precioUnitario int(10) not null,
    precioDocena int(10) not null,
    precioMayor int(10) not null,
    codigoCategoria int not null,
    constraint FK_Productos_Categorias 
		foreign key (codigoCategoria) references Categorias (codigoCategoria),
    codigoTalla int not null,
    constraint FK_Productos_Tallas
		foreign key (codigoTalla) references Tallas (codigoTalla),
    codigoMarca int not null,
    constraint FK_Productos_Marcas 
		foreign key (codigoMarca) references Marcas (codigoMarca),
    primary key PK_codigoProducto (codigoProducto)
);

/*-Insertando 5 registros a la tabla Productos-*/
insert into Productos(codigoProducto,descripcionProducto,precioUnitario,precioDocena,precioMayor,
codigoCategoria,codigoTalla,codigoMarca) values(101,'Producto extranjero resistente a todo',350,275,100,1,5,1);
insert into Productos(codigoProducto,descripcionProducto,precioUnitario,precioDocena,precioMayor,
codigoCategoria,codigoTalla,codigoMarca) values(201,'Producto fragil',400,250,90,2,4,2);
insert into Productos(codigoProducto,descripcionProducto,precioUnitario,precioDocena,precioMayor,
codigoCategoria,codigoTalla,codigoMarca) values(301,'Producto todo terreno',200,100,75,3,3,3);
insert into Productos(codigoProducto,descripcionProducto,precioUnitario,precioDocena,precioMayor,
codigoCategoria,codigoTalla,codigoMarca) values(401,'Producto Japones excelente',770,550,390,4,2,4);
insert into Productos(codigoProducto,descripcionProducto,precioUnitario,precioDocena,precioMayor,
codigoCategoria,codigoTalla,codigoMarca) values(501,'Producto hecho en Italia muy bueno',1000,500,325,5,1,5);
select * from Productos;