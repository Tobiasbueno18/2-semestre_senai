drop database if exists gestao_pedidos;

create database gestao_pedidos;

use gestao_pedidos;

create table clientes (
    id int primary key not null auto_increment,
    nome varchar(100) not null,
    cep varchar(11) not null,
    numero int not null,
    complemento varchar(100)
);

create table telefones (
    id int primary key not null auto_increment,
    id_cliente int not null,
    numero varchar(15) not null,
    tipo varchar(20) not null
);

create table produtos (
    id int primary key not null auto_increment,
    nome varchar(100) not null
);

create table pedidos (
    id int primary key not null auto_increment,
    id_cliente int not null,
    id_produto int not null,
    valor_unitario decimal(10,2) not null,
    quantidade int not null
);

alter table telefones
add constraint fk_telefone_cliente
foreign key (id_cliente)
references clientes(id);

alter table pedidos
add constraint fk_pedido_cliente
foreign key (id_cliente)
references clientes(id);

alter table pedidos
add constraint fk_pedido_produto
foreign key (id_produto)
references produtos(id);

describe clientes;
describe telefones;
describe produtos;
describe pedidos;

show tables;