create table if not exists perfomance (
	id_name serial primary key,
	name varchar(40) unique not null
);

create table if not exists album (
	id_album serial primary key,
	name_album varchar(40) unique not null,
	year_album varchar(4) unique not null,	
	number_album varchar(40) unique not null,
	id_name integer references perfomance(id_name) not null
);

create table if not exists tracks (
	id_tracks serial primary key,
	name_tracks varchar(40) not null,
	time_tracks varchar(15) not null,
	id_album integer references album(id_album) not null
);