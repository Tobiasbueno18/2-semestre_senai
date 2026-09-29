drop database if exists amparo_taxi;
create database amparo_taxi;
use amparo_taxi;

create table motorista (
    id int auto_increment primary key,
    nome varchar(100),
    cpf varchar(15),
    cnh varchar(20),
    celular varchar(15),
    email varchar(100),
    obs text,
    status enum('ATIVO','INATIVO')
);

create table veiculo (
    id int auto_increment primary key,
    placa varchar(10) unique,
    modelo varchar(20),
    marca varchar(20),
    cor varchar(20),
    ano int,
    motorista_id int,
    foreign key (motorista_id) references motorista(id)
);

create table passageiro (
    id int auto_increment primary key,
    nome varchar(100),
    cpf varchar(15),
    celular varchar(15),
    email varchar(100),
    obs text,
    status enum('ATIVO','BANIDO'),
    avaliacao int
);

create table viagem (
    id int auto_increment primary key,
    passageiro_id int,
    placa varchar(10),
    valor decimal(10,2),
    origem varchar(50),
    hora_partida datetime,
    destino varchar(50),
    hora_chegada datetime,
    avaliacao_motorista int,
    avaliacao_passageiro int,
    foreign key (passageiro_id) references passageiro(id),
    foreign key (placa) references veiculo(placa)
);