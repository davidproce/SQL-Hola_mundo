create table products(
	id int not null auto_increment,
    name varchar (50) not null,
    created_by int not null,
    marca varchar (50) not null,
    primary key (id),
    foreign key (created_by) references user (id)
);
-- Ahora vamos a cambiar el nombre de la tabla products a singular.
rename table  products to product;
-- Ahora vamos a insertar datos con un solo insert 
insert into product (name, created_by, marca) values
	('ipad', 1, 'apple'),
    ('iphone', 1, 'apple'),
    ('watch', 2, 'apple'),
    ('macbook', 1, 'apple'),
    ('imac', 3, 'apple'),
    ('ipad mini', 2, 'apple');
    select * from product;
    --
    -- LEFT JOIN
    -- Trae todos los registros de la tabla usuario y solo los registros de producto que esten asociados con la tabla usuario
    select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;
    --
    -- RIGHT JOIN
    -- Hace lo mismo qu ela anterior pero con la tabla producto como principal
    select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;
    -- En este caso no aparece chanchito ya que no tiene un producto asociado con u
    --
    -- CROSS JOIN
    -- Te devuelve el producto cartesiano entre dos tablas, (cada numero con cada letra)
    select u.id, u.name, p.id, p.name from user u cross join product p;
    --
    -- Group by
    -- Toma todos los registros en base a un pivote, agrupando registros individuales
    select count(id), marca from product group by marca;
    -- Otro ejemplo 
    select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by;
    -- con el script anterior vamos ha hacer que no este Nicolas en la lista al ser solo 1.alter
    select count(p.id), u.name from product p left join user u on u.id = p.created_by group by p.created_by having count(p.id) >= 2;
    --
    -- Drop table
    -- drop table product;
    -- drop table animales;
    -- drop table user;
    