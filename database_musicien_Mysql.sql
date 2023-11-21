create database festival_de_music;
use festival_de_music;
create table representation(
num_rep int primary key,
titre_rep varchar(20),
lieu varchar(20)
);
create table musicien(
num_mus int primary key,
nom varchar(20),
num_rep int,
foreign key (num_rep) references representation(num_rep)
);
create table programmer(
date varchar(20) primary key,
num_rep int,
tarif int,
foreign key (num_rep) references representation(num_rep)
);
insert into representation values(1,'Wable','Daniel Sorano');
insert into representation values(2,'Ima','Bercy');
insert into representation values(3,'Toxic','Daniel Sorano');
insert into representation values(4,'Daliii','Grand theatre');
insert into representation values(5,'Chocolat','Accor Arena');

insert into musicien values(1,'Dadju',1);
insert into musicien values(2,'Dadju',2);
insert into musicien values(3,'Tayc',3);
insert into musicien values(4,'MameNdiaye',4);
insert into musicien values(5,'YaLevis',5);

insert into programmer values('25 juillet 2023',1,90000);
insert into programmer values('16 mars 2023',2,80000);
insert into programmer values('29 Août 2023',3,20000);
insert into programmer values('08 novembre 2023',4,70000);
insert into programmer values('14 decembre 2023',5,60000);
SELECT titre_rep
FROM representation;
SELECT titre_rep
FROM representation
WHERE lieu = 'Daniel Sorano';
SELECT musicien.nom, representation.titre_rep
FROM musicien
JOIN representation ON musicien.num_rep = representation.num_rep;
SELECT representation.titre_rep, representation.lieu, Programmer.tarif
FROM representation
JOIN programmer ON representation.num_Rep = programmer.num_rep
WHERE programmer.date = '25 juillet 2023';
SELECT COUNT(*) AS nombre_de_musiciens
FROM musicien
WHERE num_rep = 1;
SELECT representation.titre_rep, programmer.tarif
FROM representation
JOIN programmer ON representation.num_Rep = programmer.num_rep
WHERE programmer.tarif <= 20000;




