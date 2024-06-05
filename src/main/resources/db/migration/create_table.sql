create table if not exists "restaurant"(
    id serial primary key,
    location varchar(50) not null
);

create table if not exists "menu" (
    id serial primary key,
    name varchar(50) not null,
    selling_price double precision not null
    );

create table if not exists "restaurant_has_menu" (
    id serial primary key,
    id_restaurant int references restaurant(id),
    id_menu int references menu(id)
);

create table if not exists "measurement_unit"(
    id serial primary key,
    value varchar(10) not null
);

create table if not exists "ingredient" (
    id serial primary key,
    name varchar(50) not null,
    price double precision not null,
    id_unit int references measurement_unit(id)
);

create table if not exists "menu_has_ingredient" (
    id serial primary key,
    id_menu int references menu(id),
    id_ingredient int references ingredient(id),
    quantity double precision not null
);

create table if not exists "sale" (
    id serial primary key,
    sale_datetime timestamp not null default current_timestamp,
    id_restaurant int references restaurant(id)
);

create table if not exists "sale_with_menu" (
    id serial primary key,
    id_sale int references sale(id),
    id_menu int references menu(id),
    sold_quantity int not null
);

create table if not exists "stock" (
    id serial primary key,
    stock_datetime timestamp not null default current_timestamp,
    id_restaurant int references restaurant(id)
);

create table if not exists "stockmove" (
    id serial primary key,
    id_stock int references stock(id),
    id_ingredient int references ingredient(id),
    quantity int not null,
    type varchar(10) not null
);
