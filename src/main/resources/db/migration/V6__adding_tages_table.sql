create table tags (
    id int auto_increment,
    name varchar(255) not null,
    constraint tags_pk primary key (id)
);

create table user_tags (
    user_id bigint not null,
    tag_id int not null,
    constraint users_tags_pk primary key (user_id, tag_id),
    constraint fk_user_tags_users
        foreign key (user_id) references users(id) on delete cascade,
    constraint fk_user_tags_tags
        foreign key (tag_id) references tags(id) on delete cascade
);
