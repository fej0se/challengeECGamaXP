USE `gama`;
SET lc_time_names = "pt_br" ;

/* 1 consulta contemplando contagem ou totalização
	retorna quantidade total de produtos em estoque */
SELECT SUM(qtdProduto) AS "Quantidade de produtos em estoque" FROM produtos;

/* 1 consulta contemplando a junção entre 2 tabela 
 retorna todos os clientes cadastrados e todos os seus  endereços cadastrados */
SELECT c.idCliente AS ID, c.nomeCliente AS "NOME CLIENTE", c.email AS "E-MAIL", CONCAT(SUBSTRING(c.whatsapp,1,2),' ',SUBSTRING(c.whatsapp,4,4),'-',SUBSTRING(c.whatsapp,8,4)) AS WHATSAPP, CONCAT(SUBSTRING(e.cep,1,2),'.',SUBSTRING(e.cep,3,3),'-',SUBSTRING(e.cep,6,3)) AS CEP FROM clientes_enderecos AS ce INNER JOIN clientes AS c ON c.idCliente = ce.cliente INNER JOIN  enderecos AS e ON e.id = ce.endereco;

/* 1 consulta contemplando a junção entre 3 tabelas 
retorna o pedido, data do pedido, status do pedido, nome do cliente e UF da entrega */
SELECT pedidos.numeroPedido AS PEDIDO, DATE_FORMAT(pedidos.dataPedido,"%e, %M de %Y") AS DATA, pedidos.statusPedido AS STATUS, clientes.nomeCliente AS CLIENTE, CONCAT(SUBSTRING(e.cep,1,2),'.',SUBSTRING(e.cep,3,3),'-',SUBSTRING(e.cep,6,3)) AS "CEP da entrega" from pedidos INNER JOIN clientes ON pedidos.cliente = clientes.idCliente INNER JOIN enderecos AS e ON e.id = pedidos.enderecoEntrega;

/* 1 consulta contemplando a junção entre 2 tabelas + uma operação de totalização e agrupamento 
retorna Id do cliente, nome do cliente e seu valor total já comprado na empresa */

SELECT cliente AS ID, clientes.nomeCliente AS NOME, CONCAT('$ ',FORMAT(sum(valorTotal),2)) AS "Total em compras"   FROM pedidos INNER JOIN clientes ON pedidos.cliente = clientes.idCliente GROUP BY cliente;

/* 1 consulta contemplando a junção entre 3 ou mais tabelas + uma operação de totalização e agrupamento 
retorna nome da empresa, codigo do departamento, nome do departamento, quantidade de produtos ja vendido 
pelo departamento e o produto mais caro ja vendido do departamento junto do seu preço */
SELECT empresas.nomeEmpresa AS "Nome da empresa", departamento AS "Cod Depto", d.nomeDepto AS Departamento, sum(pp.quantidade) AS "Qtd Prod Vendidos", ANY_VALUE(descricao) AS "Produto mais caro vendido do departamento", CONCAT('$ ',FORMAT(MAX(preco),2)) AS "Valor"  from produtos INNER JOIN departamentos AS d ON departamento = d.idDepto INNER JOIN pedidos_produtos AS pp ON produtos.codProduto = pp.produto INNER JOIN empresas ON empresas.id = d.empresa  GROUP BY departamento;

/* bonus: 1 consulta contemplando a junção entre 2 tabela + uma soma
  retorna inventário por departamento */
SELECT departamento AS id, departamentos.nomeDepto AS Departamento, CONCAT('$ ',FORMAT(SUM(preco * qtdProduto),1)) AS "Inventário" FROM produtos INNER JOIN departamentos ON produtos.departamento = departamentos.idDepto GROUP BY departamento;
