# DBA Challenge 20240802


## Introdução

Nesse desafio trabalharemos utilizando a base de dados da empresa Bike Stores Inc com o objetivo de obter métricas relevantes para equipe de Marketing e Comercial.

Com isso, teremos que trabalhar com várias consultas utilizando conceitos como `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `GROUP BY` e `COUNT`.

## Tecnologias usadas
- SQL (T-SQL)
- Microsoft SQL Server
- Cliente SQL (SSMS)

## Como instalar e usar
1. Utilize um banco SQL Server que tenha o **schema BikeStores** (compatível com o diagrama em `samples/model.png`).
2. Abra a pasta do repositório no seu cliente SQL.
3. Execute os arquivos abaixo, conforme a necessidade:

- `select_clientes_sem_compra.sql` — **Clientes** que **nunca** realizaram compra (`customers` × `orders` via LEFT JOIN … IS NULL).
- `select_produtor_nao_comprados.sql` — **Produtos** que **nunca** foram comprados (`products` × `order_items` via LEFT JOIN … IS NULL).  
- `select_produtos_sem_estoque.sql` — **Produtos sem estoque** em todas as lojas (`products` × `stocks` com filtro `quantity > 0` no JOIN e `WHERE s.product_id IS NULL`).
- `groupby_qty_vendas.sql` — **Unidades vendidas por Marca e por Loja** (`orders` + `order_items` + `products` + `brands` + `stores` com `GROUP BY`).
- `select_func_sem_pedido.sql` — **Funcionários** que **não** estão relacionados a pedidos (`staffs` × `orders` via LEFT JOIN … IS NULL).


> Observação: este repositório **não inclui** scripts de criação/carga; as consultas são **read-only** e rodam em qualquer schema compatível com o BikeStores.

---

This is a challenge by Coodesh