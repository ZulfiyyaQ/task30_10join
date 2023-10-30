create database store

use store



create table categories (
id int primary key identity,
name varchar (50) not null)

create table products (
id int primary key identity,
name varchar(50)not null,
price decimal (10,2),
cost decimal (10,2),
categoryid int references categories(id) )

create table color (
id int primary key identity,
name varchar (50) not null)

create table productcolors (
productid int references products(id),
colorid int references color(id) )

insert into categories (name) values 
('Lipstick'),
('Mascara'),
('Powder'),
('Blush'),
('Eye pencil')

insert into products (name,price,cost,categoryid) values
('Maybeline',30.99,18,1),
('Loreal',44.99,30,3),
('NYX',59.99,50,2),
('mac',24.99,18,5),
('Pastel',14.90,10,4)

insert into color (name) values 
('red'),
('pink'),
('black'),
('beige'),
('brown')

insert into productcolors values 
(1,1),(2,4),(3,3),(4,5),(5,2)


select P.Name as 'Product Name',
C.Name as 'Category Name',
color.Name as 'Color Name'

from Products P
JOIN Categories C on P.categoryid=C.Id
JOIN ProductColors PC on P.Id=PC.ProductId
JOIN Color color on PC.ColorID=color.Id