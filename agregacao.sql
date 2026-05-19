use restaurante;

select * from pedido;
select COUNT(id_pedido) from pedido;
select COUNT(DISTINCT id_cliente) from pedido;

select * from produto;
select AVG(preco) from produto;
select MAX(preco) from produto;
SELECT MIN(preco) FROM produto;
select nome, preco, dense_rank () over (order by preco desc) as ranking_preco from produto limit 5;

select categoria, avg(preco) as media_preco from produto group by categoria;

select * from info_produto;
SELECT fornecedor, COUNT(id_info) from info_produto group by fornecedor;
select fornecedor, count(id_info) as quantidade_prod_fornecidos from info_produto group by fornecedor having count(id_info) > 1;
select id_cliente, count(id_pedido) from pedido group by id_cliente having count(id_pedido) = 1;
