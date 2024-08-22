create database Music_Library;

use Music_Library;

create table genre (
id int auto_increment primary key,
genre_name varchar(50)
);

Create table artists (
id int auto_increment primary key,
artists_name Varchar(75) not null,
genre_id int,
foreign key (genre_id) references genre(id)
);

use Music_Library;

create table albums (
id int auto_increment primary key,
title varchar(200) not null,
artists_id int,
genre_id int, 
foreign key (artists_id) references artists(id),
foreign key (genre_id) references genre(id),
release_year int not null,
total_tracks int not null
);

alter table albums
add total_duration int;
