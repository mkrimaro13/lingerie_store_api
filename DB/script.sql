CREATE USER docker;

create database lingerie;

GRANT ALL PRIVILEGES ON DATABASE lingerie TO docker;

\c lingerie

create table products(
	id SERIAL primary key,
	nombre varchar(100) not null,
	enlace_imagen text not null,
	descripcion varchar(100) not null,
	precio numeric not null,
	talla text,
	descuento int not null,
	unidades_disponibles int not null
);

INSERT INTO products (
    enlace_imagen,
    nombre,
    descripcion,
    precio,
    descuento,
    unidades_disponibles,
    talla
)
VALUES
    -- Aptenia
    ('https://images.unsplash.com/photo-1574539602047-548bf9557352?q=80&w=1965', 'Aptenia', 'Soft and Comfy', 500, 0, 5, 'L'),
    ('https://images.unsplash.com/photo-1574539602047-548bf9557352?q=80&w=1965', 'Aptenia', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1574539602047-548bf9557352?q=80&w=1965', 'Aptenia', 'Soft and Comfy', 500, 0, 5, 'S'),
    
    -- Welsh Mudwort
    ('https://images.unsplash.com/photo-1568663521381-33b7c467fda0?q=80&w=1922', 'Welsh Mudwort', 'Soft and Comfy', 500, 0, 5, 'L'),
    ('https://images.unsplash.com/photo-1568663521381-33b7c467fda0?q=80&w=1922', 'Welsh Mudwort', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1568663521381-33b7c467fda0?q=80&w=1922', 'Welsh Mudwort', 'Soft and Comfy', 500, 0, 5, 'S'),
    
    -- Shrubby Thoroughwort
    ('https://plus.unsplash.com/premium_photo-1661629259850-9a893425f1f5?q=80&w=1974', 'Shrubby Thoroughwort', 'Soft and Comfy', 500, 0, 5, 'L'),
    ('https://plus.unsplash.com/premium_photo-1661629259850-9a893425f1f5?q=80&w=1974', 'Shrubby Thoroughwort', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://plus.unsplash.com/premium_photo-1661629259850-9a893425f1f5?q=80&w=1974', 'Shrubby Thoroughwort', 'Soft and Comfy', 500, 0, 5, 'S'),
    
    -- Tree Shield Lichen
    ('https://images.unsplash.com/photo-1625023489823-c9c1e36d6f2b?q=80&w=1974', 'Tree Shield Lichen', 'Soft and Comfy', 500, 0, 5, 'L'),
    ('https://images.unsplash.com/photo-1625023489823-c9c1e36d6f2b?q=80&w=1974', 'Tree Shield Lichen', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1625023489823-c9c1e36d6f2b?q=80&w=1974', 'Tree Shield Lichen', 'Soft and Comfy', 500, 0, 5, 'S'),
    
    -- Marsh Parsley
    ('https://images.unsplash.com/photo-1584061634739-88035e420618?q=80&w=1935', 'Marsh Parsley', 'Soft and Comfy', 500, 0, 5, 'L'),
    ('https://images.unsplash.com/photo-1584061634739-88035e420618?q=80&w=1935', 'Marsh Parsley', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1584061634739-88035e420618?q=80&w=1935', 'Marsh Parsley', 'Soft and Comfy', 500, 0, 5, 'S'),
    
    -- Otros productos con talla asignada
    ('https://images.unsplash.com/photo-1628519555279-3eada894828b?q=80&w=1964', 'Meesia Moss', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1590397041404-a0cfb285a2a6?q=80&w=1965', 'Lady''s Nightcap', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://plus.unsplash.com/premium_photo-1683140483126-822729be146e?q=80&w=2070', 'Graceful Hawthorn', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1575186083127-03641b958f61?q=80&w=1965', 'Yellow Milkvetch', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1599544593314-090522e0c29d?q=80&w=1974', 'Calymperes Moss', 'Soft and Comfy', 500, 0, 5, 'M'),
    ('https://images.unsplash.com/photo-1572358764342-612d02e2d2d2?q=80&w=1980', 'Sedgeleaf Buckbrush', 'Soft and Comfy', 500, 0, 5, 'M');
