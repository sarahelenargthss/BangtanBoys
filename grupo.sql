create schema bts charset latin1 collate latin1_general_cs;
use bts;

create table filmografia (
	titulo varchar(60) not null,
    episodios varchar(60) not null,
    membros varchar(60) not null,
    canal varchar(60) not null,
    ano int not null,
	cod_filmografia int auto_increment primary key,
    tipo varchar(25) not null
);