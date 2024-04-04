/* |Trabalho de Banco de dados | Gabriel D'andrea Coro Rocha | RA: G495DE0 | 12/05/2023| */

Create Database Adega;

  --use Adega 

create table Cliente
(
  Id_Cliente int primary key,
  Nome varchar(30) not null,
  Endereco varchar(30)not null,
  Cidade varchar(20)not null,
  Ceep int not null,
  UF varchar(10)not null,
  CNPJ bigint not null,
  IE int null

);
create table Vendedores
(
 Id_Vendedor int,
 Nome varchar(30),
 Salario decimal(10,2),
 Comissao char


);

create table pedido
(
 Id_Pedido int,
 Prazo int,
 Id_Cliente int,
 Id_Vendedor int
);

create table Produto
(
 Id_Produto int,
 Unidade_Produto varchar(10),
 Descricao_Produto varchar(10),
 Valor_unitario decimal(10,2)
 );

 create table Item_Pedido
 (
  Id_Pedido int,
  Id_Produto int,
  Quantidade int
  );


/*INSERÇÃO DOS DADOS NAS TABELAS*/

insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (720,'ana','rua 17 n. 19','niteroi', 24358310, 'RJ', 121132122121, 2134);

	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (870,'flavio','Av. Pres. Vargas','São Paulo', 22763931, 'sp', 2253412693879, 4631);
	
	insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (110,'jorge','Rua Caiapo 13','Curitiba', 30078500, 'PR', 1451276498349, NULL);
	insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	(222,'lucia','Rua Itabira 123 loja 9','Belo horizonte', 22124391, 'MG', 2831521393488, 2995);
	insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	(830,'mauricio','Av. Paulista 1236 sl 2345',' São paulo', 3012683, 'SP', 3281698574656, 9343);
	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	(130,'Edmar','rua da praia sn','Salvador', 30079300, 'BA', 234632842349, 7121 );
	insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	(410,'rodolfo','largo da lapa 27 sobrado','Rio de janeiro', 30078900, 'RJ', 1283512823468, 7431);
	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (20,'beth','av. climerio 45','São Paulo', 25679300, 'sp', 3248512673268, 9280);
	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (157,'paulo','tv. moraes c/3','londrina','' , 'PR', 328482233242, 1923);
	 
	 
	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (180, 'livio','Av. beira mar n. 1256','florianopolis',30077500,'SC',1273657123474, NULL);
	
	insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (260, 'susano','Rua lopes mendes 12','niteroi',30046500,'RJ',217635712329, 2530);
	 	 
	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 (290, 'renato','rua meireles 123 bl 2 sl.345','Sao paulo',30335900,'SP',1327657112314, 1820);

	 	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	 	 (390, 'sebastiao','rua da igreja 10','uberaba',30438700,'MG',321765472133, 9071);
	 	 insert into Cliente (Id_Cliente, Nome, Endereco, Cidade, Ceep, UF, CNPJ, IE)
     values
	     (234, 'jose','quadra 3 bloco 3 sl 1003','brasilia',22641650,'DF',2176357612323, 2931);

     INSERT INTO Item_Pedido (Id_Pedido, Id_Produto, Quantidade) 
     VALUES 
(121,25, 10), 
(121,31, 35), 
(97,77, 20), 
(101,31, 9), 
(101,78, 18), 
(101,13, 5), 
(98,77, 5), 
(148,45, 8), 
(148,31, 7), 
(148,77, 3), 
(148,25, 10), 
(148,78, 30), 
(104,53, 32), 
(203,31, 6), 
(189,78, 45), 
(143,31, 20), 
(143,78, 10), 
(105,78, 10), 
(111,25, 10), 
(111,78, 70), 
(103,53, 37), 
(91,77, 40), 
(138,22, 35), 
(138,77, 18), 
(138,53, 17), 
(108,13, 17), 
(119,77, 40), 
(119,13, 6), 
(119,22, 10), 
(119,53, 43), 
(137,13, 8);

INSERT INTO Pedido (Id_Pedido, Prazo, ID_Cliente, ID_Vendedor)
VALUES 
  (121,20,410,209),
  (97,20,720,101),
  (101,15,720,101),
  (137,20,720,720),
  (148,20,720,101),
  (189,15,870,213),
  (104,30,110,101),
  (203,30,830,250),
  (98,20,410,209),
  (143,30,20,111),
  (105,15,180,240),
  (111,20,260,240),
  (103,20,260,11),
  (91,20,260,11),
  (138,20,260,11),
  (108,15,290,310),
  (119,30,390,250),
  (127,10,410,11);

INSERT INTO Produto (Id_Produto, Unidade_Produto, Descricao_Produto, Valor_unitario)
VALUES 
  (25, 'Kg', 'Queijo', 0.97),
  (31, 'BAR', 'Chocolate', 0.87),
  (78, 'L', 'Vinho', 2),
  (22, 'M', 'Linho', 0.11),
  (30, 'SAC', 'Açúcar', 0.3),
  (53, 'M', 'Linha', 1.8),
  (13, 'G', 'Ouro', 6.18),
  (45, 'M', 'Madeira', 0.25),
  (87, 'M', 'Cano', 1.97),
  (77, 'M', 'Papel', 1.05);

  INSERT INTO Vendedores (Id_Vendedor, Nome, Salario, Comissao)
VALUES 
  (209,'Jose',1800.00,'C'),
  (111,'Carlos',2490.00,'A'),
  (11,'João',2780.00,'C'),
  (240,'Antônio',9500.00,'C'),
  (720,'Felipe',4600.00,'A'),
  (213,'Jonas',2300.00,'A'),
  (101,'João',2650.00,'C'),
  (310,'Josias',870.00,'B'),
  (250,'Maurício',2930.00,'B');
  
  /*Exercicios de BD Select*/

  /*Listar todos os produtos com as respectivas descrições, unidades e valores unitários, obtendo o
seguinte resultado (SELECT simples sem WHERE com especificação de todos os campos):*/
select Descricao_Produto, Unidade_Produto, Valor_unitario
from Produto

/*Listar da tabela CLIENTE o CNPJ, o nome do cliente e seu endereço, obtendo o seguinte resultado
(idem com especificação de parte dos campos):*/
select * from Cliente
select CNPJ, Nome, Endereco
from Cliente
ORDER BY Nome

/*Listar todo o conteúdo de vendedor, obtendo o seguinte resultado (SELECT sem a especificação de 
campos – coringa *):*/
select * from Vendedores

/*Listar o numero do pedido, o código do produto e a quantidade dos itens do pedido com a quantidade
igual a 35 da tabela item de pedido, obtendo o seguinte resultado (SELECT com WHERE):*/
SELECT Id_Pedido, Id_Produto, Quantidade
from Item_Pedido
where Quantidade = 35

/*Quais são os clientes que moram em Niterói?*/
select  Nome from Cliente
where Cidade = 'niteroi'
ORDER BY Nome

/*Listar os produtos que tenham unidade igual a ‘M’ e valor unitário igual a R$ 1,05 da tabela produto,
obtendo o seguinte resultado (operadores lógicos):*/
select  Descricao_Produto from Produto
where Valor_unitario = 1.05

/*Listar o código e a descrição dos produtos que tenham o valor unitário na faixa de R$ 0,32 até R$ 2,00, 
obtendo o seguinte resultado (operador between): */
select Id_Produto, Descricao_Produto
 from Produto
where Valor_unitario between '0.32' and '2.00'

/*Listar todos os produtos que tenham o seu nome começando por Q, obtendo o seguinte resultado 
(operador LIKE, com os coringas _ - um caractere - e % - vários caracteres):*/
select Id_Produto, Descricao_Produto
 from Produto
where Descricao_Produto like'Q%'

/*Listar os vendedores que não começam por ‘Jo’, , obtendo o seguinte resultado (operador LIKE, com os
coringas _ - um caractere - e % - vários caracteres)*/
SELECT Id_Vendedor, Nome
FROM Vendedores
WHERE Nome NOT LIKE 'Jo%';

/*Listar os vendedores que são da faixa de comissão A e B, obtendo o seguinte resultado (operadores IN e
um conjunto de valores):*/
select Nome
 from Vendedores
where Comissao in ('A','B')


/*Mostrar os clientes que não tenham inscrição estadual, obtendo o seguinte resultado (IS NULL):*/
SELECT *
FROM Cliente
WHERE IE IS NULL

/*Mostrar em ordem alfabética a lista de vendedores e seus respectivos salários fixos, obtendo o seguinte
resultado (ORDER BY [ASC/DESC]):*/
select Nome, Salario
from Vendedores
ORDER BY Nome ASC

/*Listar os nomes, cidades e estados de todos os clientes, ordenados por estado e cidade de forma
descendente, obtendo o seguinte resultado (operador ORDER BY com mais de um campo especificado):*/
SELECT Nome, Cidade, UF
FROM Cliente
ORDER BY UF 


/*Mostrar a descrição e o valor unitário de todos os produtos que tenham a unidade ‘KG’, em ordem de
valor unitário ascendente, obtendo o seguinte resultado (ORDER BY):
o unico valor que debugou da mesma forma proposta foi com o 'M'*/
SELECT Descricao_Produto, Valor_unitario
FROM Produto
WHERE Unidade_Produto = 'M'
ORDER BY valor_unitario ASC;


/*Mostrar o novo salário fixo dos vendedores, de faixa de comissão ‘C’, calculado com base no reajuste de
75% acrescido de R$ 120,00 de bonificação. Ordenar pelo nome do vendedor, obtendo o seguinte
resultado (coluna calculada):*/
SELECT  Nome, Salario * 1.75 + 120 AS NovoSalarioFixo
FROM Vendedores
WHERE Comissao = 'C'
ORDER BY Nome;

/*Mostrar o menor e o maior salários da tabela vendedores, obtendo o seguinte resultado (funções MAX() e MIN()):*/
select MIN(Salario) as Menor_Codigo, max(Salario) as Maior_Codigo
from Vendedores

/*Mostrar a quantidade total pedida para o produto ‘VINHO’ de código ‘78’ na tabela item de pedido, obtendo o
seguinte resultado (função SUM() com cláusula WHERE):*/
select SUM(Id_Pedido) as Quantidade from Item_Pedido where Id_Produto = '78'

/*Qual a média dos salários fixos dos vendedores (função AVG())?*/
select	AVG(Salario) as Media from Vendedores

/*Quantos vendedores ganham acima de R$ 2.500,00 de salário fixo (função COUNT() com cláusula WHERE)?*/
SELECT COUNT(*) FROM Vendedores WHERE Salario > 2500;

/*Quais são as unidades de produtos, diferentes, na tabela produto (cláusula DISTINCT)?*/
Select Distinct(Unidade_Produto) from Produto 

/*Listar a quantidade de produtos que cada pedido contém*/
select DISTINCT Id_Pedido, sum(Quantidade) as Total from Item_Pedido group by Id_Pedido; 

/*• Listar os pedidos que tem mais de três produtos. */
select Id_Pedido from Item_Pedido where Quantidade > 3;

/*Ver os pedidos de cada cliente, listando nome do cliente e número do pedido (INNER JOIN).*/ 
select ID_Pedido, Nome from Pedido INNER JOIN Cliente ON ID_Pedido = ID_Cliente;

/*Listar a junção de clientes com pedidos (CROSS JOIN).*/
SELECT * FROM Cliente CROSS JOIN Pedido;

/*Listar todos os clientes com seus respectivos pedidos. Os clientes que não têm pedidos também
devem ser apresentados (OUTER JOIN)*/
select Id_Cliente, Nome, ID_Pedido from Cliente FULL OUTER JOIN Pedido on Id_Pedido

 /*Clientes com prazo de entrega superior a 15 dias e que pertençam aos estados de São Paulo ou Rio de
Janeiro (INNER JOIN com WHERE).*/
SELECT Cliente.Nome, Cliente.Cidade, Cliente.UF, Pedido.ID_Pedido, Pedido.Prazo
FROM Cliente 
INNER JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente 
WHERE (Cliente.Cidade = 'São Paulo' OR Cliente.Cidade = 'Rio de Janeiro') AND Pedido.Prazo > 15 
ORDER BY Pedido.Prazo asc;

/*Mostrar os clientes e seus respectivos prazos de entrega, ordenando do maior para o menor.*/
SELECT Cliente.Nome, Pedido.Prazo
FROM Cliente 
INNER JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente 
ORDER BY Pedido.Prazo desc;

/*Modifique o exemplo acima para apresentar apenas prazos de entrega diferentes para cada cliente.*/
SELECT DISTINCT Cliente.Nome, Pedido.Prazo
FROM Cliente 
INNER JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente 
ORDER BY Pedido.Prazo asc;


/*Apresentar os vendedores, em ordem alfabética, que emitiram pedidos com prazos de entrega
superiores a 15 dias e que tenham salários fixos iguais ou superiores a R$ 1.000,00*/
SELECT Vendedores.Nome, Vendedores.Salario, Pedido.Prazo
FROM Vendedores
INNER JOIN Pedido ON Vendedores.ID_Vendedor = Pedido.ID_Vendedor
WHERE Vendedores.Salario >= 1000 AND Pedido.Prazo > 15
ORDER BY Vendedores.Nome ASC;


/*Mostre os clientes, em ordem alfabética, que têm prazo de entrega maior que 15 dias para o produto
Queijo e que sejam do Rio de Janeiro*/
SELECT Cliente.Nome, Pedido.Prazo
FROM Cliente
INNER JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente
INNER JOIN Item_Pedido ON Pedido.ID_Pedido = Item_Pedido.ID_Pedido
INNER JOIN Produto ON Item_Pedido.ID_Produto = Produto.ID_Produto
WHERE Cliente.Cidade = 'Rio de Janeiro' AND Descricao_Produto = 'Queijo' AND Pedido.Prazo > 15
ORDER BY Cliente.Nome ASC;

/*Mostre todos os vendedores que venderam chocolate em quantidade superior a dez quilos.*/
SELECT Vendedores.Nome, SUM(Item_Pedido.Quantidade) as Total_Chocolate
FROM Vendedores
INNER JOIN Pedido ON Vendedores.ID_Vendedor = Pedido.ID_Vendedor
INNER JOIN Item_Pedido ON Pedido.ID_Pedido = Item_Pedido.ID_Pedido
INNER JOIN Produto ON Item_Pedido.ID_Produto = Produto.ID_Produto
WHERE Produto.Descricao_Produto = 'Chocolate' 
GROUP BY Vendedores.Nome
HAVING SUM(Item_Pedido.Quantidade) > 10


/*Quantos clientes fizeram pedidos com o vendedor João?*/
SELECT COUNT(DISTINCT ID_Cliente) AS Cliente
FROM Pedido
WHERE ID_Vendedor = (SELECT TOP 1 ID_Vendedor FROM Vendedores WHERE Nome = 'João');

/*Quais os clientes da cidade Rio de Janeiro e Niterói que tiveram seus pedidos tirados pelo vendedor
João?*/
SELECT DISTINCT Cliente.Nome, Cliente.Cidade
FROM Cliente
INNER JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente
INNER JOIN Vendedores ON Pedido.ID_Vendedor = Vendedores.ID_Vendedor
WHERE (Cliente.Cidade = 'Rio de Janeiro' OR Cliente.Cidade = 'Niterói') AND Vendedores.Nome = 'João';


/*Que produtos participaram de qualquer pedido cuja quantidade seja 10?*/
SELECT DISTINCT Descricao_Produto
FROM Produto
INNER JOIN Item_Pedido ON Produto.ID_Produto = Item_Pedido.ID_Produto
WHERE Item_Pedido.Quantidade = 10;


/*Quais os vendedores ganham um salário fixo abaixo da média?*/
SELECT Nome, Salario
FROM Vendedores
WHERE Salario < (SELECT AVG(Salario) FROM Vendedores);


/*Quais os produtos que não estão presentes em nenhum pedido?*/
SELECT Descricao_Produto
FROM Produto
LEFT JOIN Item_Pedido ON Produto.ID_Produto = Item_Pedido.ID_Produto
WHERE Item_Pedido.ID_Pedido IS NULL;



/*Quais os vendedores que só venderam produtos por grama?*/
SELECT Cliente.Nome, COUNT(DISTINCT Pedido.ID_Pedido) AS Total_Pedidos
FROM Cliente
INNER JOIN Pedido ON Cliente.ID_Cliente = Pedido.ID_Cliente
GROUP BY Cliente.Nome
HAVING COUNT(DISTINCT Pedido.ID_Pedido) > 3;


/*Quais os clientes que estão em mais de três pedidos?*/
SELECT Id_Cliente, COUNT() AS total_pedidos
FROM pedido
GROUP BY Id_Cliente
HAVING total_pedidos > 3;

 /*Criar uma nova tabela como resultado de um select (cláusula INTO).*/
SELECT
INTO total_vendidos
FROM pedido