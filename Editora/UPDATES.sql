update livros
set nome_livro = 'Morte no Nilo', id_autor_livro = 2, id_editora_livro = 2, data_de_lancamento = '19371101', genero_livro = 'Mistério', id_livro = 7
where id_livro = 6

update livros
set nome_livro = 'O Santo Guerreiro: Roma invicta', id_autor_livro = 7, id_editora_livro  = 7, data_de_lancamento = '20201207', genero_livro = 'Ficção Histórica'
where id_livro = 7

update editoras 
set id_editora = 5
where id_editora = 8
