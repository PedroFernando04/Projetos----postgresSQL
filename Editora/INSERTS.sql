-- Autores
insert into autores(nome_autor, data_nascimento, genero_autor)
values('F. Scott Fitzgerald', '18960924', 'M');

insert into autores(nome_autor, data_nascimento, genero_autor)
values('Michael Crichton', '19421023', 'M')

insert into autores(nome_autor, data_nascimento, genero_autor)
values('Eduardo Spohr', '19760605', 'M')


  
-- Editoras
insert into editoras(nome_editora)
values('Crowell-Collier Publishing Company');

insert into editoras(nome_editora)
values('Verus')



  
-- Livros
insert into livros(nome_livro, genero_livro, id_autor_livro, id_editora_livro, data_de_lancamento)
values('O Curioso Caso de Benjamin Button', 'Conto', '5', '6', '19220527')

insert into livros(nome_livro, id_autor_livro, id_editora_livro, data_de_lancamento, genero_livro)
values
('O Espadachim de Carvão e a voz do Guardião Cego', 1, 1, '20211020', 'Ação e Aventura'),
('Jurassick Park', 6, 4, '19901120', 'Ficção Científica' )

/* teste

insert into livros(nome_livro, data_de_lancamento, genero_livro)
values('NomeTeste', '20231008', 'GeneroTeste')

insert into livros 
values(7, 'sóPrecisaDoNome')
*/

insert into livros(nome_livro, id_autor_livro, id_editora_livro, data_de_lancamento, genero_livro)
values('O Leão, a Feiticeira e o Guarda-Roupa', 3, 2, '19501016', 'Fantasia')

