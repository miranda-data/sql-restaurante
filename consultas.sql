use restaurante;
select preco, categoria
from produto
where preco > 30;

select nome, telefone, data_nascimento
from clientes
where data_nascimento < '1985-01-01';

select id_produto, descricao
from produto
where descricao like '%carne%';

select nome, categoria
from produto
order by categoria asc, nome asc;

select nome, preco
from produto
order by preco desc
limit 5;

select nome, categoria
from produto
where categoria = 'Prato Principal'
limit 2 offset 6;

CREATE TABLE backup_pedidos AS
SELECT *
FROM pedido;
