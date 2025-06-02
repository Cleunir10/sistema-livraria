-- =====================================================
-- INSERIR CATEGORIAS
-- =====================================================
INSERT INTO categorias (nome, descricao) VALUES
('Ficção', 'Livros de ficção literária e romances'),
('Não-ficção', 'Livros técnicos, biografias e ensaios'),
('Infantil', 'Livros para crianças e jovens'),
('Clássicos', 'Obras clássicas da literatura mundial'),
('Tecnologia', 'Livros sobre programação e tecnologia'),
('Autoajuda', 'Livros de desenvolvimento pessoal'),
('História', 'Livros sobre história e biografias históricas');

-- =====================================================
-- INSERIR CLIENTES
-- =====================================================
INSERT INTO clientes (nome, email, telefone, endereco) VALUES
('Ana Silva', 'ana.silva@email.com', '(11) 99999-1111', 'Rua das Flores, 123 - São Paulo/SP'),
('Carlos Mendes', 'carlos.mendes@email.com', '(21) 99999-2222', 'Av. Atlântica, 456 - Rio de Janeiro/RJ'),
('Maria Santos', 'maria.santos@email.com', '(31) 99999-3333', 'Rua da Bahia, 789 - Belo Horizonte/MG'),
('João Oliveira', 'joao.oliveira@email.com', '(85) 99999-4444', 'Rua do Sol, 321 - Fortaleza/CE'),
('Lucia Costa', 'lucia.costa@email.com', '(47) 99999-5555', 'Av. Brasil, 654 - Florianópolis/SC'),
('Pedro Rocha', 'pedro.rocha@email.com', '(61) 99999-6666', 'SQN 123 Bloco A - Brasília/DF'),
('Fernanda Lima', 'fernanda.lima@email.com', '(81) 99999-7777', 'Rua da Aurora, 987 - Recife/PE'),
('Ricardo Souza', 'ricardo.souza@email.com', '(71) 99999-8888', 'Av. Paralela, 147 - Salvador/BA');

-- =====================================================
-- INSERIR PRODUTOS
-- =====================================================
INSERT INTO produtos (nome, autor, editora, isbn, preco, estoque, categoria_id) VALUES
-- Clássicos
('Dom Quixote', 'Miguel de Cervantes', 'Penguin Classics', '978-0142437230', 49.90, 15, 4),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Agir', '978-8522008731', 39.90, 25, 3),
('1984', 'George Orwell', 'Companhia das Letras', '978-8535909555', 42.50, 20, 4),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'Martins Fontes', '978-8533613379', 89.90, 12, 1),

-- Ficção Nacional
('O Cortiço', 'Aluísio Azevedo', 'L&PM', '978-8525406514', 32.90, 18, 4),
('Capitães da Areia', 'Jorge Amado', 'Companhia das Letras', '978-8535902750', 38.90, 22, 1),
('Vidas Secas', 'Graciliano Ramos', 'Record', '978-8501058232', 35.90, 16, 4),

-- Tecnologia
('Algoritmos e Estruturas de Dados', 'Robert Sedgewick', 'Bookman', '978-8582600320', 189.90, 8, 5),
('JavaScript: The Good Parts', 'Douglas Crockford', 'O''Reilly', '978-0596517748', 79.90, 10, 5),
('Python para Análise de Dados', 'Wes McKinney', 'Novatec', '978-8575226476', 149.90, 6, 5),
('Design Patterns', 'Gang of Four', 'Bookman', '978-8573076104', 169.90, 5, 5),

-- Autoajuda
('O Poder do Hábito', 'Charles Duhigg', 'Objetiva', '978-8547000084', 44.90, 14, 6),
('Mindset', 'Carol Dweck', 'Objetiva', '978-8547001629', 42.90, 17, 6),
('Atomic Habits', 'James Clear', 'Alta Books', '978-6555200072', 48.90, 13, 6),

-- História
('Sapiens', 'Yuval Noah Harari', 'L&PM', '978-8525432780', 54.90, 11, 7),
('Uma Breve História do Tempo', 'Stephen Hawking', 'Intrínseca', '978-8598078335', 47.90, 9, 2),

-- Infantil
('O Menino Maluquinho', 'Ziraldo', 'Melhoramentos', '978-8506055847', 29.90, 30, 3),
('Turma da Mônica', 'Mauricio de Sousa', 'Panini', '978-8583620976', 15.90, 40, 3);

-- =====================================================
-- INSERIR PEDIDOS
-- =====================================================
INSERT INTO pedidos (cliente_id, data_pedido, status, observacoes) VALUES
(1, '2025-05-15 10:30:00', 'ENTREGUE', 'Primeira compra da cliente'),
(2, '2025-05-20 14:15:00', 'ENTREGUE', 'Cliente frequente'),
(3, '2025-05-25 09:45:00', 'ENVIADO', 'Prazo de entrega: 3 dias úteis'),
(4, '2025-05-28 16:20:00', 'CONFIRMADO', 'Pagamento confirmado via PIX'),
(5, '2025-06-01 11:10:00', 'PENDENTE', 'Aguardando confirmação do pagamento'),
(1, '2025-06-02 08:30:00', 'PENDENTE', 'Segunda compra da cliente Ana');

-- =====================================================
-- INSERIR ITENS DOS PEDIDOS
-- =====================================================

-- Pedido 1 (Ana Silva) - ENTREGUE
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 2, 49.90),  -- 2x Dom Quixote
(1, 2, 1, 39.90);  -- 1x O Pequeno Príncipe

-- Pedido 2 (Carlos Mendes) - ENTREGUE  
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(2, 8, 1, 189.90), -- 1x Algoritmos e Estruturas de Dados
(2, 9, 1, 79.90),  -- 1x JavaScript: The Good Parts
(2, 3, 1, 42.50);  -- 1x 1984

-- Pedido 3 (Maria Santos) - ENVIADO
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(3, 12, 1, 44.90), -- 1x O Poder do Hábito
(3, 13, 1, 42.90), -- 1x Mindset
(3, 16, 2, 29.90); -- 2x O Menino Maluquinho

-- Pedido 4 (João Oliveira) - CONFIRMADO
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(4, 4, 1, 89.90),  -- 1x O Senhor dos Anéis
(4, 15, 1, 54.90); -- 1x Sapiens

-- Pedido 5 (Lucia Costa) - PENDENTE
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(5, 17, 3, 15.90), -- 3x Turma da Mônica
(5, 2, 2, 39.90);  -- 2x O Pequeno Príncipe

-- Pedido 6 (Ana Silva - segundo pedido) - PENDENTE
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(6, 10, 1, 149.90), -- 1x Python para Análise de Dados
(6, 14, 1, 48.90);  -- 1x Atomic Habits

-- =====================================================
-- VERIFICAR DADOS INSERIDOS
-- =====================================================

-- Estatísticas básicas
SELECT 'Categorias' as tabela, COUNT(*) as total FROM categorias
UNION ALL
SELECT 'Clientes', COUNT(*) FROM clientes
UNION ALL  
SELECT 'Produtos', COUNT(*) FROM produtos
UNION ALL
SELECT 'Pedidos', COUNT(*) FROM pedidos
UNION ALL
SELECT 'Itens de Pedido', COUNT(*) FROM itens_pedido;

