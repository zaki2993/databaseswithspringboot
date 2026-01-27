create table profiles(
  id bigint not null,
  bio text, 
  phone_number varchar(15),
  date_of_birth date,
  loyalty_points int unsigned default 0 ,
  constraint profiles_pk primary key(id),
  constraint fk_profiles_users foreign key (id) references users(id)
);
