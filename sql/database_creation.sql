USE loja;

-- INSERINDO DADOS

-- Inserir dados nas tabelas Uf
INSERT INTO Uf (nome) VALUES ('SP'), ('RJ'), ('MG'), ('RS'), ('SC'), ('PR'), ('BA'), ('PE'), ('DF'), ('GO');

-- Inserir dados nas tabelas Cidade
INSERT INTO Cidade (nome, uf_id) VALUES
('São Paulo', 1),
('Rio de Janeiro', 2),
('Belo Horizonte', 3),
('Porto Alegre', 4),
('Florianópolis', 5),
('Curitiba', 6),
('Salvador', 7),
('Recife', 8),
('Brasília', 9),
('Goiânia', 10);

-- Inserir dados nas tabelas Enderecos
INSERT INTO Enderecos (logradouro, numero, cep, cidade_id) VALUES
('Rua A', 123, '12345678', 1),
('Avenida B', 456, '54321876', 2),
('Praça C', 789, '98765432', 3),
('Rua X', 456, '87654321', 4),
('Avenida Y', 789, '23456789', 5),
('Praça Z', 1011, '34567890', 6),
('Rua W', 1213, '45678901', 7),
('Avenida V', 1415, '56789012', 8),
('Quadra Q', 567, '67890123', 9),
('Travessa T', 890, '78901234', 10);

-- Inserir dados nas tabelas Telefone
INSERT INTO Telefone (telefone, tipo) VALUES
(123456789, 'Celular'),
(987654321, 'Fixo'),
(111223344, 'Celular'),
(222333444, 'Fixo'),
(333444555, 'Celular'),
(444555666, 'Fixo'),
(555666777, 'Celular'),
(666777888, 'Celular'),
(777888999, 'Fixo'),
(888999000, 'Celular');

-- Inserir dados nas tabelas Clientes
INSERT INTO Clientes (p_nome, sobrenome, cpf, data_nasc, id_endereco, id_telefone) VALUES
('João', 'Silva', '12345678901', '1990-01-15', 1, 1),
('Maria', 'Santos', '98765432101', '1985-05-20', 2, 2),
('Pedro', 'Oliveira', '11122334401', '2000-08-10', 3, 3),
('Laura', 'Lima', '22233344401', '1988-02-25', 4, 4),
('Carlos', 'Costa', '33344455501', '1975-09-12', 5, 5),
('Ana', 'Almeida', '44455566601', '1995-04-18', 6, 6),
('Roberto', 'Rocha', '55566677701', '1980-07-30', 7, 7),
('Julia', 'Jesus', '66677788801', '2002-11-05', 8, 8),
('Fernanda', 'Ferreira', '77788899901', '1993-06-22', 9, 9),
('Gabriel', 'Gomes', '88899900001', '1983-03-12', 10, 10);

-- Inserir dados nas tabelas Fornecedor
INSERT INTO Fornecedor (nome, cnpj, id_endereco, id_telefone) VALUES
('Fornecedor A', '12345678901234', 1, 1),
('Fornecedor B', '98765432101234', 2, 2),
('Fornecedor C', '11122334401234', 3, 3),
('Fornecedor D', '22233344455566', 4, 4),
('Fornecedor E', '33344455566677', 5, 5),
('Fornecedor F', '44455566677788', 6, 6),
('Fornecedor G', '55566677788899', 7, 7),
('Fornecedor H', '66677788899900', 8, 8),
('Fornecedor I', '77788899900011', 9, 9),
('Fornecedor J', '88899900011122', 10, 10);

-- Inserir dados nas tabelas Produto
INSERT INTO Produto (nome, descricao, preco, quantidadeEstoque, fornecedor_id) VALUES
('Produto 1', 'Descrição do Produto 1', 29.99, 50, 1),
('Produto 2', 'Descrição do Produto 2', 49.99, 30, 2),
('Produto 3', 'Descrição do Produto 3', 99.99, 20, 3),
('Produto 4', 'Descrição do Produto 4', 19.99, 40, 4),
('Produto 5', 'Descrição do Produto 5', 39.99, 25, 5),
('Produto 6', 'Descrição do Produto 6', 79.99, 15, 6),
('Produto 7', 'Descrição do Produto 7', 15.99, 35, 7),
('Produto 8', 'Descrição do Produto 8', 29.99, 30, 8),
('Produto 9', 'Descrição do Produto 9', 59.99, 22, 9),
('Produto 10', 'Descrição do Produto 10', 69.99, 18, 10);

-- Inserir dados nas tabelas Pedido
INSERT INTO Pedido (cliente_id, data_pedido) VALUES
(1, '2023-11-29'),
(2, '2023-11-30'),
(3, '2023-12-01'),
(4, '2023-12-02'),
(5, '2023-12-03'),
(6, '2023-12-04'),
(7, '2023-12-05'),
(8, '2023-12-06'),
(9, '2023-12-07'),
(10, '2023-12-08');

-- Inserir dados nas tabelas ItemPedido
INSERT INTO ItemPedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 2, 29.99),
(1, 2, 1, 49.99),
(2, 3, 3, 99.99),
(3, 1, 1, 29.99),
(4, 4, 3, 19.99),
(4, 5, 2, 39.99),
(5, 6, 1, 79.99),
(6, 7, 4, 15.99),
(7, 8, 2, 29.99),
(8, 9, 1, 59.99),
(9, 10, 3, 69.99),
(10, 1, 2, 29.99);
