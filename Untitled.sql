CREATE TABLE `livros` (
  `id_livro` int PRIMARY KEY,
  `titulo` varchar(255),
  `ano_publicacao` int,
  `genero` varchar(255),
  `quantidade` int,
  `id_autor` int
);

CREATE TABLE `autores` (
  `id_autor` int PRIMARY KEY,
  `nome` varchar(255),
  `nacionalidade` varchar(255)
);

CREATE TABLE `leitores` (
  `id_leitor` int PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255),
  `telefone` varchar(255)
);

CREATE TABLE `emprestimos` (
  `id_emprestimo` int PRIMARY KEY,
  `id_livro` int,
  `id_leitor` int,
  `data_emprestimo` date,
  `data_devolucao` date
);

ALTER TABLE `livros` ADD FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_leitor`) REFERENCES `leitores` (`id_leitor`);
