select * from autores

select * from editoras

select * from livros


select * from livros
where data_de_lancamento < '20000101'


select distinct genero_livro
from livros


select nome_livro, nome_autor,genero_livro,  data_de_lancamento, nome_editora from livros l
join autores on l.id_autor_livro = autores.id_autor 

select nome_livro, nome_autor,genero_livro,  data_de_lancamento from livros l
join autores on l.id_autor_livro = autores.id_autor 
where l.id_autor_livro = 2


select nome_livro, nome_autor,genero_livro,  data_de_lancamento, nome_editora from livros l
join autores a on l.id_autor_livro = a.id_autor 
join editoras e on l.id_editora_livro  = e.id_editora 
