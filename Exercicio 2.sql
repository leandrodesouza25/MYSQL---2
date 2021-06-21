create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment not null ,

tamanho varchar(255) not null,
sabor varchar(255) not null,
borda varchar(255) not null,

primary key (id) 
);

insert into tb_categoria (tamanho,sabor,borda) values ("Grande","Salgada" , "Recheada");
insert into tb_categoria (tamanho,sabor,borda) values ("Pequena", "Salgada" , "Sem Recheio");
insert into tb_categoria (tamanho,sabor,borda) values ("Pequena" ,"Doce" , "Com Recheio Doce");
insert into tb_categoria (tamanho,sabor,borda) values ("Grande","Doce" , "Recheada");
insert into tb_categoria (tamanho,sabor,borda) values ("Grande","Mista" , "Recheada");



select * from tb_categoria;

create table tb_pizza(

id_pizza bigint auto_increment not null,

nome varchar(255) not null,
preco decimal (9,2) not null,
ingredientes varchar(255) not null,
tempero varchar (255) not null,


FK_categoria_id bigint ,
primary key (id_pizza),
foreign key (FK_categoria_id) references tb_categoria (id)

);


insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Mussarela" , 25.00 , "Tomate" , "Orégano" , 1);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Calabresa" , 23.00 , "Cebola" , "Cheiro-Verde" , 1);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Escarola" , 30.00 , "Azeitona" , "Azeite" , 2);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Chocolate" , 46.00 , "M&M" , "Beijinho" , 3);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Bananinha" , 35.00 , "Chocolate Ralado" , "Leite Ninho" , 5);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Portuguesa" , 32.00 , "Ovo" , "Orégano" , 1);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Brócolis" , 34.00 , "Palmito" , "Vinagre" , 1);
insert into tb_pizza (nome,preco,ingredientes, tempero, FK_categoria_id) values ("Beirute Especial" , 65.00 , "Tomate, Cebola, Batata, Salada" , "Especial MIX" , 1);

select * From tb_pizza;
select * from tb_pizza where preco  > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "C%";

select  tb_pizza.nome, tb_pizza.preco , tb_pizza.ingredientes , tb_pizza.tempero , tb_pizza.FK_categoria_id
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.FK_categoria_id;

select  tb_pizza.nome, tb_pizza.preco , tb_pizza.ingredientes , tb_pizza.tempero , tb_pizza.FK_categoria_id
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.FK_categoria_id where id = 3;


