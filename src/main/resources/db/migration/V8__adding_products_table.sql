create table products (
    id bigint not null,
    name varchar(255) not null,
    price decimal(10,2) not null,
    cat_id tinyint,
    constraint pro_pk primary key (id),
    constraint fk_pro_cat foreign key (cat_id)
        references categories(id)
);
