create table teacher(
	id serial not null primary key,
	first_name text not null,
	last_name text not null,
	email text not null
);

insert into teacher (first_name, last_name, email) values ('Lindani', 'Pani', 'lindani@email.com');
insert into teacher (first_name, last_name, email) values ('Siba', 'Khumalo', 'siba@khumalo.com');
insert into teacher (first_name, last_name, email) values ('Gorge', 'Smith', 'elliott@email.com');
insert into teacher (first_name, last_name, email) values ('Busiswa', 'Mogale', 'busi@khumalo.com');
insert into teacher (first_name, last_name, email) values ('John', 'Doe', 'john@email.com');
insert into teacher (first_name, last_name, email) values ('Chris', 'Ells', 'chris@khumalo.com');