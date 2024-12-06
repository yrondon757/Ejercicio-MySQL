-- CREACION DE LA BASE DE DATOS

create database tienda_videojuegos;

-- CREACION DE LAS TABLAS

create table usuarios (
	id INT auto_increment primary key,
	nombre VARCHAR(50),
	apellido VARCHAR (50),
	edad INT,
	email VARCHAR(50),
	contrasena VARCHAR(20),
	rol CHAR(20),
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

create table categorias (
	id INT auto_increment primary key,
	nombre VARCHAR(50),
	tipo VARCHAR(20),
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);

create table productos (
	id INT auto_increment primary key,
	nombre_producto VARCHAR(50),
	usuario_id INT,
	precio FLOAT,
	stock INT,
	id_categoria INT,
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	foreign key (usuario_id) references usuarios(id),
	foreign key (id_categoria) references categorias(id)
);

create table ventas (
	id INT auto_increment primary key,
	producto_id INT,
	usuario_id INT,
	cantidad INT,
	precio_total FLOAT,
	fecha_creacion TIMESTAMP default CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
	foreign key (producto_id) references productos(id),
	foreign key (usuario_id) references usuarios(id)
);


-- INSERTAR DATOS EN LAS TABLAS

-- 1.- USUARIOS
insert into usuarios (nombre, apellido, edad, email, contrasena, rol) values
	("Jin","Kazama",25,"jinkazama@hotmail.com","tekken1al8","cliente"),
	("Shen","Long",30,"shenlong@gmail.com","bloodyroar2","cliente"),
	("Sasuke","Uchiha",21,"sharingan@hotmail.com","rinnegan01","cliente"),
	("Gado","Lion",45,"thelion@gmail.com","bloodyroar4ever","cliente"),
	("Ezio","Auditore",19,"credo4s3s1n0@gmail.com","assassins23","cliente"),
	("Bayek","De Siwa",29,"egipto400@hotmail.com","origins17","cliente"),
	("Thor","Odinson",30,"diosdeltrueno@gmail.com","trueno3000","cliente"),
	("Leon","Kennedy",27,"residentevil4@hotmail.com","virusT2005","cliente"),
	("Mario","Bros",40,"supermariobros@gmail.com","luigi10","cliente"),
	("David","Armstrong",26,"flashpoint@yahoo.com","operation26","cliente"),
	("Peter","Parker",17,"spidey626@yahoo.com","newyork90","cliente"),
	("Lionel","Messi",36,"nopuedotengofutbol@gmail.com","barca4ever","cliente"),
	("John","Price",40,"callofduty@tienda.com","tienda2929","empleado"),
	("John","MacTavish",29,"modernwarfare@tienda.com","videojuego4ever","empleado"),
	("Steve","Rogers",26,"captainamerica@tienda.com","firstavenger1945","empleado"),
	("Auron","Play",34,"auronelplayas@gmail.com","auroncito1","empleado"),
	("Ibai","Llanos",25,"veladadelano@hotmail.com","kingsleague01","empleado"),
	("Emily","Armstrong",27,"linkinpark@tienda.com","newsinger69","supervisor"),
	("Mike","Shinoda",34,"linkinpark01@tienda.com","b3stb4nd3v3r","supervisor"),
	("Goku","Son",30,"dragonball@gmail.com","esferasdr4g0nzgt","administrador");
	
select * from usuarios;

-- 2.- CATEGORIAS
insert into categorias (nombre, tipo) values 
	("Consola","Multimedia"),
	("Videojuego","Multimedia"),
	("Accesorio","Multimedia"),
	("FIgura de Accion","Juguete"),
	("Funkopop","Juguete"),
	("Smart TV","Electronico"),
	("Home Theater","Electronico");

select * from categorias;
	
-- 3.- PRODUCTOS
insert into productos (nombre_producto, usuario_id, precio, stock, id_categoria) values
	("Playstation 5",21,800.99,10,1),
	("Playstation 4",27,500.99,15,1),
	("Xbox Series S",32,750.99,10,1),
	("Xbox One",24,450.99,20,1),
	("Nintendo Switch",21,320.99,20,1),
	("Control PS5",21,150.99,30,3),
	("Control Xbox S",24,120.99,30,3),
	("Figura de Spiderman",30,220.99,5,4),
	("Figura de Deadpool",30,250.99,5,4),
	("Funko Goku",22,30.99,0,5),
	("Funko Naruto",22,30.99,0,5),
	("TV Samsung 55",24,330.99,0,6),
	("TV LG 42",24,270.99,8,6);
	
select * from productos;

-- 4.- VENTAS
insert into ventas (producto_id,usuario_id,cantidad,precio_total) values
	(1,21,1,800.99),
	(6,21,2,301.98),
	(5,21,1,320),
	(12,24,1,330),
	(3,32,1,750),
	(7,32,2,241.98),
	(10,22,1,30.99),
	(11,22,1,30.99),
	(13,24,2,571.98),
	(6,30,1,150.99);
	
select * from ventas;

-- CONSULTAS

-- 1ra. Consulta: Seleccionar los usuarios con un rol especifico.
select * from usuarios where rol = "cliente";
select * from usuarios where rol = "empleado";
select * from usuarios where rol = "supervisor";
select * from usuarios where rol = "administrador";
select * from usuarios where rol = "supervisor" or rol = "empleado";

-- 2da. Consulta: Obtener el sotck disponible de todos los productos.
select SUM(stock) as total_precios from productos; 

-- 3ra. Consulta: Calcular el total de ventas por usuario_id.
select usuario_id, COUNT(*) as total_ventas from ventas group by usuario_id;

-- 4ta. Consulta: Actualizar el precio de un producto mayor a 100 y aplicar descuento del 10%.
select * from productos;

update productos set precio = 150.99 * 0.9 where id = 6;

-- 5ta. Consulta: Eliminar ventas de un producto agotado (es decir con stock de 0).
select * from ventas;

select * from ventas
where producto_id IN (
    select id
    from productos
    where not stock = 0
);

