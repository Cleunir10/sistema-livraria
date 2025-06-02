# Sistema de Livraria - Banco de Dados

Sistema de gerenciamento para uma livraria com controle de produtos, clientes e pedidos.

## Estrutura do Banco de Dados

![Diagrama do Banco de Dados](\modelo banco de dados - tabelas e relacionamentos.jpg)

O sistema possui 4 tabelas principais:

- **Clientes** - Informações dos clientes (id, nome, email)
- **Produtos** - Catálogo de livros (id, nome, autor, preço, estoque)
- **Pedidos** - Registros de vendas (id, cliente_id, data_pedido)
- **ItensPedido** - Itens de cada pedido (pedido_id, produto_id, quantidade, preco_unitario)

### Relacionamentos:
- **Clientes** ↔ **Pedidos**: Um cliente pode fazer vários pedidos (1:N)
- **Pedidos** ↔ **ItensPedido**: Um pedido pode ter vários itens (1:N)
- **Produtos** ↔ **ItensPedido**: Um produto pode estar em vários pedidos (1:N)

## Como Executar

1. Execute o script de criação das tabelas:
```sql
-- Execute o arquivo sql/criar_tabelas.sql
```

2. Insira os dados de exemplo:
```sql
-- Execute o arquivo sql/inserir_dados.sql
```

## Dados de Exemplo

O banco inclui:
- 8 clientes cadastrados
- 7 categorias de livros
- 17 produtos (livros)
- 3 pedidos com itens

## Consultas de Verificação

Após inserir os dados, você pode verificar se tudo foi criado corretamente:

```sql
-- Ver todos os pedidos com detalhes
SELECT 
    p.id,
    c.nome as cliente,
    p.data_pedido,
    p.valor_total,
    p.status
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;
```

## Estrutura do Projeto

```
livraria/
├── sql/
│   ├── criar_tabelas.sql    # Criação das tabelas
│   └── inserir_dados.sql    # Inserção dos dados
├── diagrama_banco.png      # Diagrama ER do banco
└── README.md               # Este arquivo
```
