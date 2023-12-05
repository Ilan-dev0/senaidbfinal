## Esquema Lógico do Banco de Dados
Tabela: 

Uf
uf_id (Chave Primária)
nome
Tabela: Cidade
cidade_id (Chave Primária)
nome
uf_id (Chave Estrangeira referenciando Uf)
Tabela: Enderecos
endereco_id (Chave Primária)
logradouro
numero
cep
cidade_id (Chave Estrangeira referenciando Cidade)
Tabela: Telefone
telefone_id (Chave Primária)
telefone
tipo
Tabela: Clientes
cliente_id (Chave Primária)
p_nome
sobrenome
cpf
data_nasc
id_endereco (Chave Estrangeira referenciando Enderecos)
id_telefone (Chave Estrangeira referenciando Telefone)
Tabela: Fornecedor
fornecedor_id (Chave Primária)
nome
cnpj
id_endereco (Chave Estrangeira referenciando Enderecos)
id_telefone (Chave Estrangeira referenciando Telefone)
Tabela: Produto
produto_id (Chave Primária)
nome
descricao
preco
quantidadeEstoque
fornecedor_id (Chave Estrangeira referenciando Fornecedor)
Tabela: Pedido
pedido_id (Chave Primária)
cliente_id (Chave Estrangeira referenciando Clientes)
data_pedido
Tabela: ItemPedido
item_id (Chave Primária)
pedido_id (Chave Estrangeira referenciando Pedido)
produto_id (Chave Estrangeira referenciando Produto)
quantidade
preco_unitario
