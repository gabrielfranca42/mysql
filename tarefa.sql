
create database exercicio;
-- deve ser apagado tabela pos exercico entregue
-- respostas a) o banco de dados e um conjunto de tabelas e valores 
-- B) e sim sistema de gerenciamento de banco de dados
-- c) e um modelo de uso de multiplos bancos de dados e dados relacioando eles em um unico conjuntio
-- d) chave primaria a chave que identifica sua tabela e estrangeira que identifica outra tabela
-- e) e sobre a segurança do seus dados e integridade de gerenciamento de maneira tal que nao se perca dados nem valores

-- 2) o banco de dados nosql nao tem estrutura relacional portanto sendo menos seguro em integridade de dados porem sendo mais flexivel sendo usado em sistemas de documentos

create table contatos(
nome_sobrenome varchar(100) not null,
apelido varchar(100) not null,
relacao varchar(100) not null,
proximo enum ('ativo','desativado'),
frequencia_contato enum('diario','semanal','anual','raramente','indefinido'),
telefone char(11)not null,
email varchar (200) not null,
link text not null,
cidade varchar(30) not null,
estado char(2)not null,
pais varchar (30)  default 'brasil',
data_de_contato date not null
);

INSERT INTO contatos (nome_sobrenome, apelido, relacao, proximo, frequencia_contato, telefone, email, link, cidade, estado, pais, data_de_contato) 
VALUES 
('João da Silva', 'João', 'Amigo', 'ativo', 'diario', '11987654321', 'joao.silva@email.com', 'https://www.joaosilva.com', 'São Paulo', 'SP', 'brasil', '2025-03-18'),
('Maria Oliveira', 'Mari', 'Colega de trabalho', 'desativado', 'semanal', '11912345678', 'maria.oliveira@email.com', 'https://www.mariaoliveira.com', 'Rio de Janeiro', 'RJ', 'brasil', '2025-03-12'),
('Fernanda Costa', 'Nanda', 'Amiga de infância', 'ativo', 'anual', '61912345678', 'fernanda.costa@email.com', 'https://www.fernandacosta.com', 'Brasília', 'DF', 'brasil', '2025-03-05'),
('Ricardo Almeida', 'Ric', 'Mentor', 'desativado', 'diario', '31987654321', 'ricardo.almeida@email.com', 'https://www.ricardoalmeida.com', 'Porto Alegre', 'RS', 'brasil', '2025-01-15');
alter table contatos
add column id   int not null auto_increment primary key;
-- 4 
-- a)exercio
-- b)contatos
-- c) nome_sobrenome, apelido, relacao, proximo, frequencia_contato ,telefone ,email, link ,cidade, estado, pais, data_de_contato 
-- d) varchar, char, enum, text, date,
-- e) sim comando not null
-- f) id

-- tabela do exercicio _5- abaixo criado no banco de dados 5
create database _5_;
create table itens_magicos (
id int auto_increment primary key,
nome varchar (100) not null,
raridade varchar(50) not null,
poder int not null);
 create table encantamentos(
 item_id int auto_increment primary key,
foreign key (item_id) references itens_magicos(id),
descricao varchar(255),
custo_mana int);
alter table itens_magicos
add column nivel_minimo char(3) not null after nome;
alter table itens_magicos 
modify column poder decimal(5,2) not null;
alter table itens_magicos
change column raridade categoria varchar(50);
drop table itens_magicos
