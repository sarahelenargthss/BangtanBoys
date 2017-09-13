create schema bts charset latin1 collate latin1_general_cs;
use bts;

create table filmografia (
	cod_filmografia int auto_increment primary key,
	titulo varchar(60) not null,
    episodios varchar(60) not null,
    canal varchar(60) not null,
    ano int not null,
    membros varchar(60)
);
