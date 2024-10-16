INSERT INTO `mydb`.`sinfonia` (`idsinfonia`, `data_composta`, `nome`, `compositor`) 
VALUES 
(1, '1808-12-22', 'Sinfonia No. 5', 'Ludwig van Beethoven'),
(2, '1824-05-07', 'Sinfonia No. 9', 'Ludwig van Beethoven'),
(3, '1788-06-26', 'Sinfonia No. 40', 'Wolfgang Amadeus Mozart'),
(4, '1876-12-21', 'Sinfonia No. 1', 'Johannes Brahms'),
(5, '1901-04-19', 'Sinfonia No. 2', 'Gustav Mahler'),
(6, '1888-02-13', 'Sinfonia No. 5', 'Pyotr Ilyich Tchaikovsky'),
(7, '1893-12-17', 'Sinfonia No. 6', 'Pyotr Ilyich Tchaikovsky'),
(8, '1889-10-20', 'Sinfonia No. 2', 'Johannes Brahms'),
(9, '1888-08-25', 'Sinfonia No. 3', 'Gustav Mahler'),
(10, '1907-09-19', 'Sinfonia No. 6', 'Gustav Mahler');

-- Inserindo registros na tabela funcao
INSERT INTO `mydb`.`funcao` (`idfuncao`, `descricao`) 
VALUES 
(1, 'Maestro'),
(2, 'Violinista Principal'),
(3, 'Violinista Secundário'),
(4, 'Violoncelista'),
(5, 'Pianista'),
(6, 'Flautista'),
(7, 'Percussionista'),
(8, 'Oboísta'),
(9, 'Trompista'),
(10, 'Contrabaixista');

-- Inserindo registros na tabela instrumentos
INSERT INTO `mydb`.`instrumentos` (`idinstrumentos`, `nome`) 
VALUES 
(1, 'Violino'),
(2, 'Viola'),
(3, 'Violoncelo'),
(4, 'Contrabaixo'),
(5, 'Piano'),
(6, 'Flauta'),
(7, 'Oboé'),
(8, 'Clarinete'),
(9, 'Trompa'),
(10, 'Percussão');

-- Inserindo registros na tabela musico
INSERT INTO `mydb`.`musico` (`cpf`, `nacionalidade`, `data_nasc`, `nome`, `sinfonia_idsinfonia`, `orquestra_idorquestra`, `funcao_idfuncao`, `instrumentos_idinstrumentos`) 
VALUES 
('12345678901', 'Brasileira', '1990-01-15', 'João Silva', 1, 1, 2, 1),
('23456789012', 'Brasileira', '1985-05-30', 'Maria Oliveira', 2, 2, 3, 2),
('34567890123', 'Brasileira', '1992-03-22', 'Carlos Santos', 3, 1, 4, 3),
('45678901234', 'Brasileira', '1988-07-08', 'Ana Lima', 4, 3, 1, 4),
('56789012345', 'Brasileira', '1995-10-12', 'Felipe Costa', 5, 1, 5, 5),
('67890123456', 'Brasileira', '1983-12-01', 'Juliana Pereira', 6, 2, 2, 6),
('78901234567', 'Brasileira', '1991-09-18', 'Roberto Almeida', 7, 3, 1, 7),
('89012345678', 'Brasileira', '1987-06-25', 'Fernanda Rocha', 8, 1, 3, 8),
('90123456789', 'Brasileira', '1993-11-09', 'Ricardo Martins', 9, 2, 4, 9),
('01234567890', 'Brasileira', '1994-04-21', 'Tatiane Santos', 10, 3, 5, 10);

-- Inserindo registros na tabela orquestra
INSERT INTO `mydb`.`orquestra` (`idorquestra`, `data_criacao`, `país`, `cidade`, `nome`, `sinfonia_idsinfonia`) 
VALUES 
(1, '1800-01-01', 'Alemanha', 'Berlim', 'Orquestra Filarmônica de Berlim', 1),
(2, '1901-01-01', 'França', 'Paris', 'Orquestra Nacional da França', 2),
(3, '1880-01-01', 'EUA', 'Nova Iorque', 'Orquestra Sinfônica de Nova Iorque', 3),
(4, '1940-01-01', 'Inglaterra', 'Londres', 'Orquestra Sinfônica de Londres', 4),
(5, '1985-01-01', 'Brasil', 'São Paulo', 'Orquestra Sinfônica de São Paulo', 5),
(6, '1950-01-01', 'Rússia', 'Moscovo', 'Orquestra Filarmônica de Moscovo', 6),
(7, '1930-01-01', 'Áustria', 'Viena', 'Orquestra Filarmônica de Viena', 7),
(8, '2000-01-01', 'Japão', 'Tóquio', 'Orquestra Sinfônica de Tóquio', 8),
(9, '1975-01-01', 'Canadá', 'Toronto', 'Orquestra Sinfônica de Toronto', 9),
(10, '2010-01-01', 'Itália', 'Milão', 'Orquestra Filarmônica de Milão', 10);