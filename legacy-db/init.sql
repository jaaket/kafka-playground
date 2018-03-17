-- CREATE DATABASE legacy;

CREATE TABLE artist (
    id bigserial primary key,
    name varchar(256) not null
);

CREATE TABLE album (
    id bigserial primary key,
    name varchar(256) not null,
    release_date date not null
);

CREATE TABLE album_artist (
    album int references album(id),
    artist int references artist(id)
);

CREATE TABLE song (
    id bigserial primary key,
    album int references album(id),
    title varchar(256) not null,
    duration_ms int
);