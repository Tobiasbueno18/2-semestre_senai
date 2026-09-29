-- crud (criar, ler, atualizar e deletar)
-- ddl (data definition language)
-- crud ddl (create, [show, describe], alter, drop)

-- excluir o banco caso ele já exista
drop database if exists transporte;

-- criar o banco de dados
create database transporte;

-- selecionar o banco para uso
use transporte;

-- criar a tabela motorista
create table motorista (
    id_motorista int primary key not null auto_increment,
    nome varchar(100) not null,
    cpf varchar(14) not null,
    telefone varchar(20) not null,
    cnh varchar(20) not null
);

-- criar a tabela veiculo
create table veiculo (
    id_veiculo int primary key not null auto_increment,
    placa varchar(10) not null,
    modelo varchar(50) not null,
    capacidade int not null,
    ano int not null
);

-- criar a tabela rota
create table rota (
    id_rota int primary key not null auto_increment,
    id_motorista int not null,
    id_veiculo int not null,
    origem varchar(100) not null,
    destino varchar(100) not null,
    data date not null
);

-- criando os relacionamentos da tabela rota
alter table rota
add constraint realiza
foreign key (id_motorista)
references motorista(id_motorista);

alter table rota
add constraint utiliza
foreign key (id_veiculo)
references veiculo(id_veiculo);

-- exibir a estrutura das tabelas
describe motorista;
describe veiculo;
describe rota;

-- exibir todas as tabelas do banco
show tables;