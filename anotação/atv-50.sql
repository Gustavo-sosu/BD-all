-- 1. Selecione os campos "Nome do Cliente", "Endereço" e "Estado" de todos os clientes.
SELECT NOME_CLIENTE, ENDERECO, UF FROM CLIENTE;

-- 2. Liste todos os vendedores cadastrados.
SELECT NOME_VENDEDOR FROM VENDEDOR;

-- 3. Liste os campos "Código do Produto" e "Quantidade" da tabela "Item do Pedido".
SELECT CODIGO_PRODUTO, QUANTIDADE FROM ITEM_DO_PEDIDO;

-- 4. Liste o campo "Código do Cliente" da tabela "Pedidos", eliminando as duplicatas.
SELECT DISTINCT CODIGO_CLIENTE FROM PEDIDO;

-- 5. Selecione os campos "Código do Produto", "Descrição do Produto" e "Valor Unitário", alterando os cabeçalhos das colunas.
SELECT CODIGO_PRODUTO AS "Código do produto", DESCRICAO_PRODUTO AS "Descrição do produto", VAL_UNIT AS "Valor Unitário" FROM PRODUTO;

-- 6. Crie uma consulta que exiba o "Nome do Cliente" e o "Estado", alterando os cabeçalhos das colunas.
SELECT NOME_CLIENTE AS "Nome do Cliente", UF AS "Estado" FROM CLIENTE;

-- 7. Quais são as cidades onde a empresa possui clientes?
SELECT DISTINCT CIDADE FROM CLIENTE;

-- 8. Liste da tabela "Produto" o campo "Descrição" e calcule o novo valor unitário multiplicando o "Valor Unitário" por 1,3.
SELECT DESCRICAO_PRODUTO, VAL_UNIT * 1.3 FROM PRODUTO;

-- 9. Elabore uma consulta que exiba o "Código do Cliente" e o "Prazo de Entrega" prorrogado em 3 dias na tabela "Pedido".
SELECT CODIGO_CLIENTE, PRAZO_ENTREGA + 3 FROM PEDIDO;

-- 10. Liste o "Nome do Vendedor" e a "Faixa de Comissão" dos vendedores cujo "Salário Fixo" seja superior a R$ 4.000,00.
SELECT NOME_VENDEDOR, FAIXA_COMISSAO FROM VENDEDOR WHERE SALARIO_FIXO > 4000;

-- 11. Selecione os produtos cuja "Unidade do Produto" seja "kg".
SELECT * FROM PRODUTO WHERE UNIDADE = 'Kg';

-- 12. Faça uma consulta que exiba o "Nome do Cliente" e a "Cidade" para clientes cujo "Estado" seja "SP" ou cuja "Cidade" seja "Londrina".
SELECT NOME_CLIENTE, CIDADE FROM CLIENTE WHERE UF = 'SP' OR CIDADE = 'Londrina';

-- 13. Elabore uma consulta que exiba o "Número do Pedido" e o "Prazo de Entrega" dos pedidos onde o "Código do Cliente" seja 720 e o "Código do Vendedor" seja 101.
SELECT NUM_PEDIDO, PRAZO_ENTREGA FROM PEDIDO WHERE CODIGO_CLIENTE = 720 AND CODIGO_VENDEDOR = 101;

-- 14. Selecione o "Número do Pedido" da tabela "Item do Pedido" onde a "Quantidade Pedida" seja maior ou igual a 30, eliminando as duplicatas.
SELECT DISTINCT NUM_PEDIDO FROM ITEM_DO_PEDIDO WHERE QUANTIDADE >= 30;

-- 15. Liste todos os vendedores, exceto aqueles cuja "Faixa de Comissão" seja igual a 'C'.
SELECT * FROM VENDEDOR WHERE FAIXA_COMISSAO != 'C';

-- 16. Liste as descrições de todos os produtos, exceto aqueles cuja "Unidade do Produto" seja 'M'.
SELECT * FROM PRODUTO WHERE UNIDADE != 'M';

-- 17. Crie uma consulta que exiba os nomes dos vendedores cujo "Salário Fixo" esteja entre R$ 1.000,00 e R$ 3.000,00.
SELECT NOME_VENDEDOR FROM VENDEDOR WHERE SALARIO_FIXO BETWEEN 1000 AND 3000;

-- 18. Selecione os campos "Número do Pedido" e "Prazo de Entrega" para pedidos cujo "Prazo de Entrega" esteja entre 15 e 25 dias.
SELECT NUM_PEDIDO, PRAZO_ENTREGA FROM PEDIDO WHERE PRAZO_ENTREGA BETWEEN 15 AND 25;

-- 19. Localize os vendedores cujos nomes NÃO começam com a letra "J".
SELECT * FROM VENDEDOR WHERE NOME_VENDEDOR NOT LIKE 'J%';

-- 20. Localize os clientes cujos nomes contenham a sequência de letras "io".
SELECT * FROM CLIENTE WHERE NOME_CLIENTE LIKE '%io%';

-- 21. Selecione os nomes dos clientes que começam com letras entre "A" e "F".
SELECT * FROM CLIENTE WHERE NOME_CLIENTE LIKE 'A%' OR NOME_CLIENTE LIKE 'F%';

-- 22. Exiba a descrição dos produtos cuja "Unidade do Produto" não seja 'M' nem 'Kg'.
SELECT DESCRICAO_PRODUTO FROM PRODUTO WHERE UNIDADE NOT IN ('M', 'Kg');

-- 23. Selecione os vendedores que não possuem "Faixa de Comissão" cadastrada.
SELECT * FROM VENDEDOR WHERE FAIXA_COMISSAO IS NULL;

-- 24. Liste os clientes que possuem "Inscrição Estadual" não nula.
SELECT * FROM CLIENTE WHERE IE IS NOT NULL;

-- 25. Crie uma consulta que exiba os clientes ordenados pelo "Nome do Cliente".
SELECT * FROM CLIENTE ORDER BY NOME_CLIENTE;

-- 26. Faça uma consulta que exiba o "Nome do Vendedor" e o "Salário Fixo", ordenados pelo nome do vendedor.
SELECT NOME_VENDEDOR, SALARIO_FIXO FROM VENDEDOR ORDER BY NOME_VENDEDOR;

-- 27. Exiba o "Nome" e o "Endereço" dos clientes do estado de "SP", ordenados pelo "Código do Cliente".
SELECT NOME_CLIENTE, ENDERECO FROM CLIENTE WHERE UF = 'SP' ORDER BY CODIGO_CLIENTE;

-- 28. Selecione o "Número do Pedido" dos pedidos cujo "Prazo de Entrega" seja 20 dias, classificados em ordem decrescente.
SELECT NUM_PEDIDO FROM PEDIDO WHERE PRAZO_ENTREGA = 20 ORDER BY NUM_PEDIDO DESC;

-- 29. Liste a "Faixa de Comissão", o "Nome" e o "Código" dos vendedores, ordenados pela "Faixa de Comissão" e pelo "Nome".
SELECT FAIXA_COMISSAO, NOME_VENDEDOR, CODIGO_VENDEDOR FROM VENDEDOR ORDER BY FAIXA_COMISSAO, NOME_VENDEDOR;

-- 30. Crie uma consulta que exiba os "Estados" e os "Nomes dos Clientes" que começam com letras de "P" a "Z", ordenados por estado e nome.
SELECT UF, NOME_CLIENTE FROM CLIENTE WHERE NOME_CLIENTE SIMILAR TO '[P-Z]%' ORDER BY NOME_CLIENTE;

-- 31. Mostre o produto com o menor e o maior preço.
SELECT MAX(VAL_UNIT) AS Maior_Preco, MIN(VAL_UNIT) AS Menor_Preco FROM PRODUTO;

-- 32. Calcule a média e a soma do "Salário Fixo" dos vendedores.
SELECT AVG(SALARIO_FIXO) AS Media_Salario, SUM(SALARIO_FIXO) AS Soma_Salario FROM VENDEDOR;

-- 33. Encontre a quantidade de clientes cuja "Inscrição Estadual" não seja nula.
SELECT COUNT(*) AS Qtd_Clientes FROM CLIENTE WHERE IE IS NOT NULL;

-- 34. Exiba o maior salário fixo e a soma dos salários dos vendedores cuja "Faixa de Comissão" seja 'A'.
SELECT MAX(SALARIO_FIXO) AS Maior_Salario, SUM(SALARIO_FIXO) AS Soma_Salarios FROM VENDEDOR WHERE FAIXA_COMISSAO = 'A';

-- 35. Mostre a quantidade total pedida para o produto "Papel" (Código '77') na tabela "Item do Pedido".
SELECT SUM(QUANTIDADE) AS Total_Quantidade FROM ITEM_DO_PEDIDO WHERE CODIGO_PRODUTO = 77;

-- 36. Quantos produtos possuem "Valor Unitário" inferior a R$ 2,00?
SELECT COUNT(*) AS Qtd_Produtos FROM PRODUTO WHERE VAL_UNIT < 2;

-- 37. Liste a quantidade de clientes por estado.
SELECT UF, COUNT(*) AS Qtd_Clientes FROM CLIENTE GROUP BY UF ORDER BY UF;

-- 38. Exiba a quantidade de vendedores e a soma do "Salário Fixo", agrupados pela "Faixa de Comissão".
SELECT FAIXA_COMISSAO, COUNT(*) AS Qtd_Vendedores, SUM(SALARIO_FIXO) AS Soma_Salario FROM VENDEDOR GROUP BY FAIXA_COMISSAO;

-- 39. Mostre a soma do "Valor Unitário" dos produtos, agrupados por "Unidade".
SELECT UNIDADE, SUM(VAL_UNIT) AS Soma_Valor FROM PRODUTO GROUP BY UNIDADE;

-- 40. Liste a quantidade de pedidos com "Prazo de Entrega" superior a 7 dias, agrupados pelo "Código do Vendedor".
SELECT CODIGO_VENDEDOR, COUNT(*) AS Qtd_Pedidos FROM PEDIDO WHERE PRAZO_ENTREGA > 7 GROUP BY CODIGO_VENDEDOR;

-- 41. Exiba a quantidade de clientes por estado, exceto os do estado de "SP".
SELECT UF, COUNT(*) AS Qtd_Clientes FROM CLIENTE WHERE UF != 'SP' GROUP BY UF;

-- 42. Selecione os "Números dos Pedidos" que contêm mais de 3 itens comprados na tabela "Item do Pedido".
SELECT NUM_PEDIDO FROM ITEM_DO_PEDIDO GROUP BY NUM_PEDIDO HAVING COUNT(*) > 3;

-- 43. Liste os "Códigos dos Produtos" da tabela "Item do Pedido" onde a soma da "Quantidade Pedida" seja superior a 50.
SELECT CODIGO_PRODUTO FROM ITEM_DO_PEDIDO GROUP BY CODIGO_PRODUTO HAVING SUM(QUANTIDADE) > 50;

-- 44. Mostre as "Unidades dos Produtos" cuja média do "Valor Unitário" seja inferior a R$ 1,50.
SELECT UNIDADE FROM PRODUTO GROUP BY UNIDADE HAVING AVG(VAL_UNIT) < 1.50;

-- 45. Selecione o "Nome" e a "Cidade" dos clientes que possuem pedidos com "Prazo de Entrega" superior a 25 dias.
SELECT C.NOME_CLIENTE, C.CIDADE FROM CLIENTE C INNER JOIN PEDIDO P ON C.CODIGO_CLIENTE = P.CODIGO_CLIENTE WHERE P.PRAZO_ENTREGA > 25;

-- 46. Apresente a "Descrição", a "Unidade" e a "Quantidade" dos produtos pedidos cuja "Quantidade" seja superior a 40.
SELECT P.DESCRICAO_PRODUTO, P.UNIDADE, I.QUANTIDADE FROM PRODUTO P INNER JOIN ITEM_DO_PEDIDO I ON P.CODIGO_PRODUTO = I.CODIGO_PRODUTO WHERE I.QUANTIDADE > 40;

-- 47. Encontre os nomes dos clientes atendidos pelo vendedor "João", que recebe R$ 2.650,00.
SELECT C.NOME_CLIENTE FROM CLIENTE C INNER JOIN PEDIDO P ON C.CODIGO_CLIENTE = P.CODIGO_CLIENTE INNER JOIN VENDEDOR V ON V.CODIGO_VENDEDOR = P.CODIGO_VENDEDOR WHERE V.NOME_VENDEDOR = 'João' AND V.SALARIO_FIXO = 2650;

-- 48. Exiba os nomes dos vendedores que atenderam a cliente "Ana".
SELECT V.NOME_VENDEDOR FROM VENDEDOR V INNER JOIN PEDIDO P ON V.CODIGO_VENDEDOR = P.CODIGO_VENDEDOR INNER JOIN CLIENTE C ON C.CODIGO_CLIENTE = P.CODIGO_CLIENTE WHERE C.NOME_CLIENTE = 'Ana';

-- 49. Liste os vendedores (ordenados) que emitiram pedidos com "Prazo de Entrega" superior a 15 dias e cujo "Salário Fixo" seja de pelo menos R$ 1.000,00.
SELECT DISTINCT V.NOME_VENDEDOR FROM VENDEDOR V INNER JOIN PEDIDO P ON V.CODIGO_VENDEDOR = P.CODIGO_VENDEDOR WHERE P.PRAZO_ENTREGA > 15 AND V.SALARIO_FIXO >= 1000 ORDER BY V.NOME_VENDEDOR;

-- 50. Quais clientes possuem "Prazo de Entrega" superior a 15 dias e pertencem aos estados de "SP" ou "RJ"?
SELECT C.NOME_CLIENTE FROM CLIENTE C INNER JOIN PEDIDO P ON C.CODIGO_CLIENTE = P.CODIGO_CLIENTE WHERE P.PRAZO_ENTREGA > 15 AND C.UF IN ('SP', 'RJ');
