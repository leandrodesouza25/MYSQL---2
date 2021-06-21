create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
id bigint auto_increment not null ,

classe varchar(255) not null,
item varchar(255) not null,
elemento varchar(255) not null,

primary key (id) 
);

insert into tb_classe(classe,item,elemento) values ("Mago" , "Cajado", "Ar");
insert into tb_classe(classe,item,elemento) values ("Arqueiro" , "Flechas", "Ar");
insert into tb_classe(classe,item,elemento) values ("Guerreiro" , "Espada e Escudo", "Terra");
insert into tb_classe(classe,item,elemento) values ("Curandeiro" , "Cajado", "Água");
insert into tb_classe(classe,item,elemento) values ("Elfo" , "Diversos itens", "Fogo");

select * from tb_classe;

create table tb_personagens(
id_personagem bigint auto_increment not null,

nome varchar(255) not null,
ataque int not null,
defesa int not null,
dano int not null,
habilidade_especial varchar(255) not null,

FK_classeid bigint,
primary key (id_personagem),
foreign key (FK_classeid) references tb_classe (id)


);

insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Azazel" , 1600,2400, 550, "Explosão em área",1);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Dimtri" , 2400,1750, 800, "Tank",3);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Azazel" , 1800,2100, 650, "Invisibilidade",4);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Cilya" , 2000,1900, 700, "Rajada",2);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Arietha" , 1300,2700, 600, "Buff e regeneração",4);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Lione" , 2150,1600, 950, "Teletransporte",1);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Omega" , 2500,1870, 790, "Velocidade",3);
insert into tb_personagens (nome,ataque,defesa,dano,habilidade_especial,FK_classeid) values ("Astrah" , 2000,1850, 900, "Campo de força",2);

select * from tb_personagens;
select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome like "C%";

select * from tb_personagens 
inner join tb_classe on tb_classe.id = tb_personagens.FK_classeid;

select * from tb_personagens 
inner join tb_classe on tb_classe.id = tb_personagens.FK_classeid  where id = 2;





