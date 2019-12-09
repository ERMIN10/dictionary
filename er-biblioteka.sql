DROP DATABASE IF EXISTS biblioteka;
CREATE DATABASE biblioteka;
USE biblioteka;

CREATE TABLE dobavljac (
	brfirme varchar(155) PRIMARY KEY,
	firma VARCHAR(255) NOT NULL
);

CREATE TABLE izdavac (
	naziv varchar(155) PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	

	drzava VARCHAR(100) NULL,
	
	CONSTRAINT fk_izdavac_dobavljac FOREIGN KEY (name)
		REFERENCES dobavljac(brfirme)
		ON DELETE cascade
		ON UPDATE CASCADE
);

create table autor(
id_autor varchar(255) primary key,
ime varchar(255),
prezime varchar(255),
biografija varchar(999) null


);

create table kupac(
id_kupac VARCHAR(255) primary key,
ime VARCHAR(255) not null,
prezime VARCHAR(255) not null,
datum_rodjenja date,
ulica varchar(100) null,
broj varchar(100) null,
mjesto varchar(100) null,
br_racuna varchar(100) null

 
);

CREATE TABLE knjiga  (
	barcode VARCHAR(155) PRIMARY KEY,
	izdavaci VARCHAR(255) not null,
	autori VARCHAR(255) not null,
	
	naslov VARCHAR(255) not null,
	
	godina_izdanja date null,
	
	constraint fk_knjiga_izdavac foreign key (izdavaci) references izdavac(name) on delete cascade on update cascade,
	constraint fk_knjiga_autor foreign key (autori) references autor(id_autor) on delete cascade on update cascade,
	constraint fk_knjiga_kupac foreign key (naslov) references kupac(id_kupac) on delete cascade on update cascade
    );

