#  Projeto de Análise de Vendas com SQL

## 📌 Sobre o projeto

Este projeto consiste na criação de um banco de dados relacional para simular o gerenciamento de vendas de uma loja.

O objetivo é aplicar conhecimentos de SQL para organizar informações de clientes, produtos e pedidos, além de realizar consultas para analisar o desempenho das vendas.

## Tecnologias utilizadas
- MySQL
- MySQL Workbench
- SQL
- Git e GitHub (versionamento e publicação)

##  Estrutura do banco de dados
O banco de dados possui quatro tabelas:

- **clientes:** informações dos clientes cadastrados.
- **produtos:** catálogo de produtos e seus preços.
- **pedidos:** pedidos realizados pelos clientes.
- **itens_pedido:** produtos, quantidades e preços associados a cada pedido.

As tabelas possuem relacionamentos por meio de chaves primárias e estrangeiras.

## Análises realizadas

Foram desenvolvidas consultas SQL para:
1. Calcular o faturamento total da loja.
2. Identificar os produtos mais vendidos.
3. Calcular o faturamento por produto.
4. Analisar o faturamento por cliente.
5. Contar a quantidade de pedidos por cliente.
6. Calcular o faturamento de cada pedido.


##  Conceitos aplicados
- SELECT e WHERE
- INNER JOIN e LEFT JOIN
- GROUP BY e ORDER BY
- SUM e COUNT
- PRIMARY KEY e FOREIGN KEY
- CREATE TABLE e INSERT INTO
- VIEW

##  Resultados obtidos

- Com os dados simulados, o faturamento total da loja foi de **R$ 10.420,20**.
- O Notebook foi o produto com maior faturamento, totalizando **R$ 7.000,00**.

##  Como executar o Banco 

1. Instale o MySQL.
2. Abra o MySQL Workbench e conecte-se ao servidor.
3. Execute `database/criar_tabelas.sql`.
4. Execute `database/inserir_dados.sql`.
5. Execute `database/criar_views.sql`.
6. Execute `database/consultas.sql` .

##  Organização do projeto

projeto-analise-vendas/
├── database/
│   ├── criar_tabelas.sql
│   ├── inserir_dados.sql
│   ├── consultas.sql
│   └── criar_views.sql
└── README.md
```

##  Objetivo de aprendizado

Desenvolver habilidades práticas em bancos de dados relacionais e análise de dados utilizando SQL, construindo um projeto para portfólio profissional.
