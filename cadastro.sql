create database cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null ,
nascimento date,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20) default 'Brasil',
primary key (id)
);

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Lisa', '1997-03-27', 'F', '50', '1.67', 'Tailandia');

select * from pessoas;

select id, nome, nascimento from pessoas
order by id, nome;

select id, nome, nascimento from pessoas
where nascimento = '1997-02-02'
order by id, nome;