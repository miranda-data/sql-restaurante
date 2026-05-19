USE restaurante;
SELECT * FROM pedido 
WHERE id_funcionario = 4 
  AND status_pedido = 'pendente';

SELECT * FROM pedido
WHERE status_pedido <> 'Concluído';

SELECT * FROM pedido
WHERE id_produto IN(1,3,5,7,8);

SELECT * FROM clientes
WHERE nome LIKE 'C%';

SELECT * FROM info_produto
WHERE ingredientes LIKE '%Carne%' 
OR  ingredientes LIKE '%Frango%';

SELECT preco FROM produto
WHERE preco BETWEEN 20 AND 30;

UPDATE pedido
SET status_pedido= NULL
WHERE id_pedido = 6;

SELECT * FROM pedido
WHERE status_pedido IS NULL;

SELECT id_pedido,
  IF(status_pedido IS NULL, 'Cancelado', status_pedido) AS status_pedido
FROM pedido;

SELECT nome, cargo, salario,
   CASE
   WHEN salario > 3000 THEN 'Acima da Média'
   ELSE 'Abaixo da Média'
   END AS media_salario
FROM funcionario;
