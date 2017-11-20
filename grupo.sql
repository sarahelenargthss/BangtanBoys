create schema grupo charset latin1 collate latin1_general_cs;
use grupo;

create table filmografia (
	titulo varchar(60) not null,
    episodios varchar(60) not null,
    membros varchar(60) not null,
    canal varchar(60) not null,
    ano int not null,
	cod_filmografia int auto_increment primary key,
    tipo varchar(25) not null,
    grupo varchar(60) not null
);

insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Rookie King: Channel Bangtan', 'SBS MTV', 'Episódio 1-8', 'Todos os membros', 2013, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('After School Club', 'Arirang', 'Episódio 24', 'Todos os membros', 2013, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Idol Star Athletics Championships', 'MBC', 'Edição 2014', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('A Song for you', 'KBS World', '-', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('4 Things Show - Rap Monster', 'Mnet', 'Episodio 3', 'Documentario sobre Rap Monster', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('American Hustle Life', 'Mnet', 'Episódio 1-8', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Yinyuetai BTS China Job', '-', '-', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('BTS GO!', 'Mnet America', 'Episodio 7', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('After School Club', 'Arirang', 'Episódio 46', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Weekly Idol', 'MBC Every 1', 'Episodio 144', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('ASC After Show', 'Arirang', 'Episodio 56', 'Rap Monster e Jimin', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('ASC After Show', 'Arirang', 'Episodio 63 e 64', 'Rap Monster', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Beatles Code 3D', 'Mnet', '-', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('ASC After Show', 'Arirang', 'Episodios 68 e 70', 'Rap Monster, Jimin e Jungkook', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('After School Club', 'Arirang', 'Episódio 95', 'Todos os membros', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('100 Choice, Best Ramyun', 'MBC Every 1', '-', 'J-Hope', 2014, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Problematic Men', 'TVN', 'Episódio 1-22', 'Rap Monster', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('4 Things Show - MFBTY', 'Mnet', 'Episódio 11', 'Rap Monster - Documentário sobre Tiger JK', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Yaman TV', 'Mnet', 'Episódio 24', 'Todos os membros', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Hello Counselor', 'KBS', 'Episódio 233', 'Rap Monster e V', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Star King', 'SBS', 'Episódio 413', 'Rap Monster e V', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Running Man', 'SBS', 'Episódio 265', 'Rap Monster', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Same Bed, Different Dreams', 'Same Bed, Different Dreams', 'Episódio 32', 'Rap Monster', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Quiz to Change the World', 'MBC', 'Episódio 315', 'Rap Monster', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Weekly Idol', 'MBC Every 1', 'Episódio 203 e 229', 'Todos os Membros', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('After School Club', 'Arirang', 'Episódio 158', 'Todos os Membros', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Idol Star Athletics Championships', 'MBC', 'Chuseok Special PT. 1 e Chuseok Special PT. 2', 'Todos os Membros', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('After School Club', 'Arirang', 'Episódio 191', 'Todos os Membros', 2015, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Birth of a Rapstar', 'MBC', 'Documentário Especial', 'Rap Monster', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('The Boss is Watching', 'SBC', 'Episódio 1', 'Todos os Membros', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Idol Star Athletics Championships', 'MBC', 'Lunar New Year Special PT.1 e Lunar New Year Special PT.2', 'Todos os Membros', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('National Idol Singing Contest', 'KBS2', 'Episódio 1', 'Todos os Membros', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Celebrity Bromance', 'MBig TV', 'Episódio 1-4', 'V - Reality Show Móvel com Kim Min-Jae', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Star King', 'SBS', '-', 'J-Hope e V', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Close-Up Observation Diary on Idol: Find Me', 'MBig TV', 'Episódio 2', 'Rap Monster', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Star King', 'SBS', '-', 'Rap Monster, J-Hope e Jimin', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Running Man', 'SBS', 'Episódio 300', 'Todos os Membros', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Celebrity Bromance', 'MBig TV', 'Reality Show Móvel com Lee Min-Woo', 'Jungkook', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Duet Song Festival', 'MBC', 'Episódio 13', 'Rap Monster', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Gods Workplace', 'SBS', 'Episódio 1', 'Jimin e J-Hope', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('King of Mask Singer', 'MBC', 'Participante como "Fencing Man", Episódio 71-72', 'Jungkook', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Idol Chef King', 'MBC', 'Chuseok Special', 'Jin', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Idol Star Athletics Championships', 'MBC', 'Edição 2016', 'Todos os Membros (V não participou por causa do cronograma de filmagem de Hwarang)', 2016, 'programa', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Hwarang: The Beginning', 'KBS2', '-', 'V (Personagem: Han-Sung)', 2016, 'drama', 'bts');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Dream Knight', 'Youku Tudou', 'Colaboração entre a JYPE e a Youku Tudou', 'Todos os membros', 2015, 'drama', 'got7');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Big Debut Plan', 'MBC', '-', 'Todos os membros', 2015, 'programa', 'svt');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Seventeens One Fine Day', 'MBC', '-', 'Todos os membros', 2016, 'programa', 'svt');
insert into filmografia (titulo, canal, episodios, membros, ano, tipo, grupo) values('Seventeens One Fine Day in Japan', 'MBC', '-', 'Todos os membros', 2017, 'programa', 'svt');