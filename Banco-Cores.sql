create database atividade;
use atividade;





--CLIENTE

create table cliente(id_cliente int constraint id_cliente_pk primary key identity, 
nome_Cli nvarchar(30) null,
sobrenome_cli nvarchar(40)not null,
sexo char(1) not null constraint sexo_ck check (sexo in ('f','m')),
cpf decimal(11,0) not null constraint uq_cpf unique,
data_nascimento date not null,
idade tinyint not null);



select * from cliente;


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('pedro','henrique','m','12345678944','23-06-1999','17');


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('Emerson','Oliveira','m','12345678999','23-05-1982','34');


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('Slow','Poke','f','42345678999','23-05-1992','24');


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('Rian','BleuBleu','f','42245678999','23-05-1924','92');


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('Maria','BleuBleu','f','42245688999','23-05-1984','3');


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('Antonia','BleuBleu','f','92245688999','23-10-1984','32');


insert into cliente(nome_Cli,sobrenome_cli,sexo,cpf,data_nascimento,idade)
values             ('Wagner','BleuBleu','f','24242424242','24-06-1992','24');









--TELEFONE
create table telefone (id_telefone int constraint id_telefone_pk primary key identity,
numero_telefone decimal(11,0) null unique);


select * from telefone;

insert into telefone (numero_telefone)
values               ('1142422517');

insert into telefone (numero_telefone)
values               ('1142422667');

insert into telefone (numero_telefone)
values               ('1146662517');

insert into telefone (numero_telefone)
values               ('1542422666');

insert into telefone (numero_telefone)
values               ('1199422517');

insert into telefone (numero_telefone)
values               ('1199422599');




--COR
create table cor (id_cor int constraint id_cor_pk primary key identity,nome_cor nvarchar(20) null);


select * from cor;

insert into cor(nome_cor)
values          ('azul');

insert into cor(nome_cor)
values          ('Amerelo');

insert into cor(nome_cor)
values          ('Verde');

insert into cor(nome_cor)
values          ('Vermelho');

insert into cor(nome_cor)
values          ('Laranja');

insert into cor(nome_cor)
values          ('Branco');





--TONALIDADE

create table tonalidade (id_ton int constraint id_ton_pk primary key identity, nome_ton nvarchar(20) null);

select * from tonalidade;

insert into tonalidade(nome_ton)
values               ('escuro');

insert into tonalidade(nome_ton)
values               ('Claro');

insert into tonalidade(nome_ton)
values               ('Brilhante');

insert into tonalidade(nome_ton)
values               ('Aveludado');

insert into tonalidade(nome_ton)
values               ('fosco');
insert into tonalidade(nome_ton)
values               ('nenhuma');





--PALETACORES

create table paletacores(id_paletacores int constraint id_paletacores_pk primary key identity,
id_cor_fk int not null constraint id_cor_fk foreign key references cor(id_cor) on delete cascade on update cascade,
id_ton_fk int not null constraint id_ton_fk foreign key references tonalidade(id_ton) on delete cascade on update cascade);

select * from paletacores;

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (1,1);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (1,2);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (1,3);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (1,4);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (2,1);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (2,2);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (2,3);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (2,4);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (3,1);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (3,2);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (3,3);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (3,4);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (4,1);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (4,2);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (4,3);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (4,4);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (5,1);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (5,2);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (5,3);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (5,4);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (6,1);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (6,2);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (6,3);

insert into paletacores(id_cor_fk,id_ton_fk)
values                 (6,4);
insert into paletacores(id_cor_fk,id_ton_fk)
values                 (6,6);
insert into paletacores(id_cor_fk,id_ton_fk)
values                 (5,6);
insert into paletacores(id_cor_fk,id_ton_fk)
values                 (4,6);







--TELEFONE_CLIENTE

create table telefone_cliente (id_telefone_cliente int constraint id_telefone_cliente_pk primary key identity,
id_cliente_fk int not null constraint id_cliente_fk foreign key references cliente(id_cliente) on delete cascade on update cascade,
id_telefone_fk int not null constraint id_telefone_fk foreign key references telefone(id_telefone) on delete cascade on update cascade);

select * from telefone_cliente;

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (1,1);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (1,2);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (1,3);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (2,1);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (2,2);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (2,3);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (3,1);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (3,2);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (3,3);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (4,1);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (4,2);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (4,3);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (5,1);


insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (5,2);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (5,3);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (6,1);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (6,2);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (6,3);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (6,4);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (6,5);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (6,6);

insert into telefone_cliente(id_cliente_fk,id_telefone_fk)
values                        (7,6);


--TIPO CANETA--

create table tipo_caneta (id_tipo_caneta int constraint id_tipo_caneta_pk primary key identity,
nometipo nvarchar(20) null);

select * from tipo_caneta;

insert into tipo_caneta (nometipo)
values                 ('de pena');

insert into tipo_caneta (nometipo)
values                 ('esfériografica');

insert into tipo_caneta (nometipo)
values                 ('do governo');

insert into tipo_caneta (nometipo)
values                 ('de botao');

-- PRODUTOS

create table produtos (id_prod int constraint id_prod_pk primary key identity,
nome_produto nvarchar(20) null,
valorProduto decimal(6,2) null,
id_paletacores_fk int not null constraint id_paletacores_fk foreign key references paletacores(id_paletacores) on delete cascade on update cascade,
id_tipo_caneta_fk int not null constraint id_tipo_caneta_fk foreign key references tipo_caneta(id_tipo_caneta) on delete cascade on update cascade);

select * from produtos;

insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('bic',1.50,1,1);

insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('bic',2.50,2,1);

insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('bic',3.0,2,1);

insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('bic',2.50,3,2);

insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('faber Castel',4.20,23,4);


insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('faber Castel',4.20,13,2);


insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values                ('faber Castel',3.29,23,2);




-- PEDIDOS

create table pedidos (id_pedidos int constraint id_pedidos_pk primary key identity,
id_prod_fk int not null constraint id_prod_fk foreign key references produtos(id_prod) on delete cascade on update cascade,
id_cliente_fk int not null constraint id_cliente_fk2 foreign key references cliente(id_cliente) on delete cascade on update cascade,
quant_comprada decimal(5,0),
id_telefone_cliente int not null constraint id_telefone_cliente_fk2 foreign key references telefone_cliente(id_telefone_cliente) on delete no action on update no action,
dataRegistro date not null default getdate());


select * from pedidos;

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada,id_telefone_cliente,dataRegistro)
values              (1,1,'20',2,'09-06-2000');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada,id_telefone_cliente,dataRegistro)
values              (1,1,'15',1,'10-10-2016');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (2,1,'20',4,'10-02-2011');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (4,1,'20', 5,'25-12-2010');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada,id_telefone_cliente,dataRegistro)
values              (3,3,'1',8,'10-11-2015');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (4,2,'2',9,'09-09-2016');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (4,4,'5',12,'07-07-1999');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (3,4,'8',10,'05-05-2000');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (3,1,'20',3,'06-06-2006');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (2,2,'200',7,'01-01-1999');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (1,5,'220',15,'10-10-1998');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (1,6,'100',14,'05-05-1980');

insert into pedidos (id_prod_fk,id_cliente_fk,quant_comprada, id_telefone_cliente,dataRegistro)
values              (1,8,'100',14,'05-05-1980');


select * from pedidos;
----------------------------------------------------------------------------------------------------------------------------

-- SELECIONANDO O NOME DO CLIENTE E A QUANTIDADE DE PEDIDOS--
select cliente.nome_Cli, pedidos.quant_comprada from pedidos inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente;


-- SELECIONANDO O NOME DO CLIENTE, NOME DA CANETA, TONALIDADE E QUANTIDADE QUE O CLIENTE ADIQUIRIU POR REGISTRO DE COMPRA--

select cliente.nome_Cli,produtos.nome_produto,tonalidade.nome_ton,pedidos.quant_comprada from pedidos inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente
inner join produtos on pedidos.id_prod_fk = produtos.id_prod 
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_cor_fk
inner join tonalidade on paletacores.id_ton_fk = tonalidade.id_ton
where pedidos.id_pedidos = 5;


--SELECIONANDO O NOME DO CLIENTE, TONALIDADE, QUANTIDADE POR TONALIDADE--

select cliente.nome_Cli, tonalidade.nome_ton,count(tonalidade.nome_ton)  'quantidade de tonalidades por caneta' from pedidos 
inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente
inner join produtos on pedidos.id_prod_fk = produtos.id_prod
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_cor_fk
inner join tonalidade on paletacores.id_ton_fk = tonalidade.id_ton
group by cliente.nome_Cli,tonalidade.nome_ton, tonalidade.nome_ton;







---------------------------------------------------------------------------------------------------------------------------------------
--SELECIONANDO O NOME DA CANETA, QUANTIDADE E VALOR TOTAL--
select produtos.nome_produto, count(produtos.nome_produto)'Quantidade de Canetas', produtos.valorProduto from produtos 
group by produtos.nome_produto,produtos.valorProduto;

--SELECIONANDO O NOME DA CANETA , QUANTIDADE , O TIPO E O VALOR TOTAL--
select produtos.nome_produto, count(produtos.nome_produto)'Quantidade de Canetas', produtos.valorProduto,tipo_caneta.nometipo from produtos 
inner join tipo_caneta on produtos.id_tipo_caneta_fk = tipo_caneta.id_tipo_caneta
group by produtos.nome_produto,produtos.valorProduto, tipo_caneta.nometipo;

--SELECIONANDO O NOME DA CANETA, QUANTIDADE , TIPO E MÉDIA DE VALORES--
select produtos.nome_produto,count( produtos.nome_produto)'Quantidade de Canetas', tipo_caneta.nometipo,AVG( produtos.valorProduto)'Média de Valor' from produtos
inner join tipo_caneta on produtos.id_tipo_caneta_fk = tipo_caneta.id_tipo_caneta
group by produtos.nome_produto,tipo_caneta.nometipo, produtos.valorProduto;

--SELECIONANDO O NOME DA CANETA, TIPO, A MAIS CARA E O NOME DA COR--
select produtos.nome_produto, tipo_caneta.nometipo, MAX( produtos.valorProduto) ' A caneta mais cara', cor.nome_cor from produtos
inner join tipo_caneta on produtos.id_tipo_caneta_fk = tipo_caneta.id_tipo_caneta
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_paletacores
inner join cor on paletacores.id_cor_fk = cor.id_cor
group by produtos.nome_produto,produtos.valorProduto,tipo_caneta.nometipo,cor.nome_cor;

--SELECIONANDO O NOME , VALOR DA MAIS CARA, COR COM O TIPO ESFÉRIOGRAFICA--
select produtos.nome_produto, MAX (produtos.valorProduto)'A mais cara',cor.nome_cor,tipo_caneta.nometipo from produtos
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_paletacores
inner join cor on paletacores.id_cor_fk = cor.id_cor
inner join tipo_caneta on produtos.id_tipo_caneta_fk = tipo_caneta.id_tipo_caneta
where tipo_caneta.nometipo like 'esfériografica'
group by produtos.nome_produto,produtos.valorProduto, cor.nome_cor,tipo_caneta.nometipo;
  
--SELECIONANDO O NOME E O VALOR DO PRODUTO, LEFT JOIN--
select produtos.nome_produto,produtos.valorProduto from produtos left join pedidos on pedidos.id_prod_fk = produtos.id_prod;

--SELECIONANDO NOME E VALOR RIGHT JOIN--
select produtos.nome_produto, produtos.valorProduto from produtos right join pedidos on pedidos.id_prod_fk = produtos.id_prod;

--SELECIONANDO NOME E VALOR, FULL JOIN--
select produtos.nome_produto,produtos.valorProduto,pedidos.quant_comprada from produtos full join pedidos on pedidos.id_prod_fk = produtos.id_prod;

--SELECIONANDO TODAS AS CORAS E TONALIDADES + CORES SEM NENHUMA TONALIDADE--
select cor.nome_cor,tonalidade.nome_ton from paletacores full join cor on paletacores.id_cor_fk = cor.id_cor
full join tonalidade on paletacores.id_ton_fk = tonalidade.id_ton;

--SELECIONANDO SO AS CORES QUE NAO TEM NENHUMA TONALIDADE--
select cor.nome_cor,tonalidade.nome_ton from paletacores full join cor on paletacores.id_cor_fk = cor.id_cor
full join tonalidade on paletacores.id_ton_fk = tonalidade.id_ton where tonalidade.nome_ton like 'nenhuma';

--SELECIONANDO TODOS OS CLIENTES COM TELEFONE E SEM TELEFONE--
select cliente.nome_Cli,telefone.numero_telefone from telefone_cliente full join cliente on telefone_cliente.id_cliente_fk = cliente.id_cliente
full join telefone on telefone_cliente.id_telefone_fk=telefone.id_telefone;

--TODOS OS CLIENTES DO SEXO FEMINO COM SEU TELEFONE QUE NÃO COMPRARAM A 5 ANOS--

select cliente.nome_Cli,telefone.numero_telefone from pedidos
inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente
inner join telefone_cliente on pedidos.id_telefone_cliente = telefone_cliente.id_telefone_cliente
inner join telefone on telefone_cliente.id_telefone_fk = telefone.id_telefone




--TODOS AS CANETAS COM SUAS TONALIDADES, QUE NÃO FORAM COMPRADAS NOS ULTIMOS 5 ANOS--



--TRANSACTION CLIENTE--


begin transaction cliente 

update cliente set nome_Cli='rian' where id_cliente = 100

if @@ERROR = 0 

commit transaction cliente

else

Rollback transaction cliente 
print ' deu erro'

--TRANSACTION CLIENTE <>--
begin transaction cliente

update cliente set idade=24 where id_cliente = 10

if @@ERROR <> 0

commit transaction cliente

else

Rollback transaction cliente
print' deu erro'
-------------------------------------------------------------------
begin transaction produtos
--PROMOÇÃO--
--TESTANDO UPDATE COM O ID 3--
update produtos set valorProduto=2.00 where id_prod=3;
if @@ERROR = 0

commit transaction produtos 
-- continua--

else
--para--
rollback transaction produtos

----------------------------------------------------
begin transaction produtos
--INSERINDO CANETA DO GOVERNO--
--PROMOÇÃO VOLTA AS AULAS--
--DEU CERTO TESTANDO COM DADOS CORRETOS--
insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values               ('bic',1.00,1,2);

if @@ERROR = 0

--CONTINUA--
commit transaction produtos


else
begin
--PARA--
rollback transaction produtos
print 'deu erro'
end
---------------------------------------------------------------------------------------------
begin transaction produtos
--INSERINDO CANETA DO GOVERNO--
--PROMOÇÃO VOLTA AS AULAS--
--DEU ERRO POR QUE NAO EXISTE O ID_TIPO_CANETA_FK--
insert into produtos (nome_produto,valorProduto,id_paletacores_fk,id_tipo_caneta_fk)
values               ('bic',1.00,1,200);

if @@ERROR = 0

--CONTINUA--
commit transaction produtos


else
begin
--PARA--
rollback transaction produtos
print 'deu erro'
end
------------------------------------------------------------------------------------------
begin transaction cliente

-- Deletar cliente com ID = 100--
-- Deu por nao existir ID cliente = 100--


delete produtos where id_prod = 20
if @@ERROR = 0

--CONTINUA--
commit transaction cliente


else
begin
--PARA--
rollback transaction cliente
print 'deu erro'
end
----------------------------------------------------------------------------------------------

backup database atividade to disk='F:\Terceiro módulo\TLBD3\SqlServer\Backup\atividade.bak';

restore database atividade from disk='C:\backup\atividade.bak';
----------------------------------------------------------------------------------------------

select * from produtos;
select * from pedidos;
select * from tipo_caneta;



declare @pedidos int set @pedidos = 2;
select cliente.nome_Cli,produtos.nome_produto,tonalidade.nome_ton,pedidos.quant_comprada from pedidos inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente
inner join produtos on pedidos.id_prod_fk = produtos.id_prod 
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_paletacores
inner join tonalidade on paletacores.id_ton_fk = tonalidade.id_ton
where pedidos.id_pedidos= @pedidos;


-- set @tipo = 'esfériografica';--
-- SELECIONANDO O NOME , VALOR DA MAIS CARA, COR COM O TIPO ESFÉRIOGRAFICA--
declare @tipo varchar(40) set @tipo = 'esfériografica';
select produtos.nome_produto,  max(produtos.valorProduto)'A mais cara',cor.nome_cor,tipo_caneta.nometipo from produtos
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_paletacores
inner join cor on paletacores.id_cor_fk = cor.id_cor
inner join tipo_caneta on produtos.id_tipo_caneta_fk = tipo_caneta.id_tipo_caneta
where tipo_caneta.nometipo = @tipo
group by produtos.nome_produto,produtos.valorProduto, cor.nome_cor,tipo_caneta.nometipo;


-- Selecionando aonde a quantidade é menor que 50 --
declare @quantidade2 int set @quantidade2 = 50;
select pedidos.quant_comprada,pedidos.dataRegistro,produtos.nome_produto,cliente.nome_Cli from pedidos
inner join produtos on pedidos.id_prod_fk = produtos.id_prod
inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente
where quant_comprada <@quantidade2;


declare @nome nvarchar(40) set @nome = '%a%';
select cliente.nome_Cli,produtos.nome_produto, pedidos.quant_comprada from pedidos
inner join produtos on pedidos.id_prod_fk = produtos.id_prod
inner join cliente on pedidos.id_cliente_fk = cliente.id_cliente
where cliente.nome_Cli like @nome;


select * from produtos;

declare @valor decimal(3,2) set @valor = '3.00';
select produtos.nome_produto, cor.nome_cor,tonalidade.nome_ton,produtos.valorProduto from produtos 
inner join paletacores on produtos.id_paletacores_fk = paletacores.id_paletacores
inner join cor on paletacores.id_cor_fk = cor.id_cor
inner join tonalidade on paletacores.id_ton_fk = tonalidade.id_ton
where produtos.valorProduto > @valor;


---------------------------------------------------------------------------------------------------------
