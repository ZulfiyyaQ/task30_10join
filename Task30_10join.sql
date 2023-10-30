Create database Company

use Company

create table roles (
id int primary key identity,
name varchar (30)
) 

create table  users(
id int primary key identity,
username varchar(30) not null,
password char(12) ,
roleid int references roles(id)
)

insert into roles(name) values 
('CEO'),
('Administrator'),
('Shef'),
('Su shef'),
('Ofisiant')

insert into users (username,password,roleid) values
('Zuzu','45aa34',1),
('Samama','678re00',3),
('Mehriban','123ee43',2),
('Mehemmed','abr4533',5),
('Asiman','333gfg9',4)

select u.username,r.name as Roles from users as u 
join roles as r 
on u.roleid=r.id


