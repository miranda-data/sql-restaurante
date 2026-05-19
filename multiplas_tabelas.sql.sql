USE restaurante;

SELECT prod.id_produto,
       prod.nome, 
       prod.descricao, 
       ip.ingredientes
FROM produto prod
INNER JOIN info_produto ip
ON prod.id_produto = ip.id_produto;

SELECT ped.id_pedido, 
       ped.quantidade, 
       ped.data_pedido, 
       c.nome, 
       c.email
FROM pedido ped
INNER JOIN clientes c ON ped.id_cliente = c.id_cliente;

SELECT ped.id_pedido, 
       ped.quantidade, 
       ped.data_pedido, 
       c.nome, 
       c.email, 
       f.nome AS funcionario_responsável
FROM pedido ped
INNER JOIN clientes c ON ped.id_cliente = c.id_cliente
INNER JOIN funcionario f ON ped.id_funcionario = f.id_funcionario;

SELECT ped.id_pedido, 
       ped.quantidade, 
       ped.data_pedido, 
       c.nome, 
       c.email, f.nome AS funcionario_responsável, prod.nome, prod.preco
FROM pedido ped
INNER JOIN clientes c ON ped.id_cliente = c.id_cliente
INNER JOIN funcionario f ON ped.id_funcionario = f.id_funcionario
INNER JOIN produto prod ON ped.id_produto = prod.id_produto;

SELECT c.nome AS ped_status_pendente
FROM clientes c
INNER JOIN pedido ped ON c.id_cliente = ped.id_cliente
WHERE ped.status_pedido = 'pendente'
ORDER BY ped.status_pedido DESC;

SELECT c.nome AS clientes_sem_pedidos
FROM clientes c
LEFT JOIN pedido ped on c.id_cliente = ped.id_cliente 
WHERE ped.id_pedido IS NULL;

SELECT c.nome,
       COUNT(ped.id_pedido) AS total_pedidos
FROM clientes c
LEFT JOIN pedido ped
ON c.id_cliente = ped.id_cliente
GROUP BY c.nome;

SELECT ped.id_pedido, 
       ped.quantidade,
       prod.preco,
       (ped.quantidade * prod.preco) AS preco_total
FROM pedido ped
INNER JOIN produto prod
ON ped.id_produto = prod.id_produto
ORDER BY ped.id_pedido ASC;