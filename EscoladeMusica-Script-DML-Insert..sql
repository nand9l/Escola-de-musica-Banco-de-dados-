
-- Inserindo registros na tabela funcao
INSERT INTO `mydb`.`funcao` (`idfuncao`, `descrição`) 
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
INSERT INTO `mydb`.`instrumento` (`idInstrumento`, `nome`) 
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

-- Inserindo registros na tabela sinfonia
INSERT INTO `mydb`.`sinfonia` (`idsinfonia`, `data_criacao`, `nome`, `compositor`) 
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


-- Inserindo registros na tabela orquestra
INSERT INTO `mydb`.`orquestra` (`idorquestra`, `data_criacao`, `país`, `cidade`, `nome`) 
VALUES 
(1, '1800-01-01', 'Alemanha', 'Berlim', 'Orquestra Filarmônica de Berlim'),
(2, '1945-08-20', 'Argentina', 'Buenos Aires', 'Orquestra Filarmônica de Buenos Aires'),
(3, '1950-05-30', 'Brasil', 'Curitiba', 'Orquestra Sinfônica do Paraná'),
(4, '1995-07-30', 'Uruguai', 'Montevidéu', 'Orquestra Sinfônica do Uruguai'),
(5, '1985-01-01', 'Brasil', 'São Paulo', 'Orquestra Sinfônica de São Paulo'),
(6, '1950-01-01', 'Rússia', 'Moscovo', 'Orquestra Filarmônica de Moscovo'),
(7, '1930-01-01', 'Áustria', 'Viena', 'Orquestra Filarmônica de Viena'),
(8, '1965-12-30', 'Uruguai', 'Salto', 'Orquestra Sinfônica de Salto'),
(9, '1982-04-19', 'Argentina', 'Rosário', 'Orquestra Sinfônica de Rosário'),
(10, '1985-09-12', 'Brasil', 'Belo Horizonte', 'Orquestra Filarmônica de Minas Gerais');

INSERT INTO `mydb`.`musico` (`cpf`, `nacionalidade`, `data_nasc`, `nome`, `email`, `telefone`, `Sinfonia_idSinfonia`, `Orquestra_idOrquestra`, `Funcao_idFuncao`, `Instrumento_idInstrumento`) 
VALUES 
('12345678901', 'Brasileira', '1990-01-15', 'João Silva', 'joao.silva@example.com', '(11) 98765-4321', 3, 2, 1, 6),
('23456789012', 'Argentina', '1985-05-30', 'Maria Oliveira', 'maria.oliveira@example.com', '(21) 99876-5432', 1, 1, 2, 4),
('34567890123', 'Brasileira', '1992-03-22', 'Carlos Santos', 'carlos.santos@example.com', '(31) 91234-5678', 5, 4, 3, 1),
('45678901234', 'Uruguaia', '1988-07-08', 'Ana Lima', 'ana.lima@example.com', '(41) 98765-0987', 9, 3, 4, 3),
('56789012345', 'Brasileira', '1995-10-12', 'Felipe Costa', 'felipe.costa@example.com', '(51) 99876-5430', 2, 10, 4, 5),
('67890123456', 'Chilena', '1983-12-01', 'Juliana Pereira', 'juliana.pereira@example.com', '(61) 91234-6789', 10, 1, 2, 6),
('78901234567', 'Brasileira', '1991-09-18', 'Roberto Almeida', 'roberto.almeida@example.com', '(71) 98765-4320', 5, 8, 10, 7),
('89012345678', 'Paraguaia', '1987-06-25', 'Fernanda Rocha', 'fernanda.rocha@example.com', '(81) 99876-5431', 4, 3, 3, 8),
('90123456789', 'Brasileira', '1993-11-09', 'Ricardo Martins', 'ricardo.martins@example.com', '(91) 91234-5670', 8, 7, 4, 9),
('01234567890', 'Argentina', '1994-04-21', 'Tatiane Santos', 'tatiane.santos@example.com', '(11) 98765-0986', 6, 1, 5, 10),
('11223344556', 'Brasileira', '1990-02-18', 'Lucas Ferreira', 'lucas.ferreira@example.com', '(11) 91234-5678', 1, 3, 2, 4),
('22334455667', 'Chilena', '1989-04-25', 'Sofia González', 'sofia.gonzalez@example.com', '(21) 92345-6789', 3, 1, 9, 2),
('33445566778', 'Brasileira', '1984-08-14', 'André Souza', 'andre.souza@example.com', '(31) 93456-7890', 5, 3, 3, 7),
('44556677889', 'Paraguaia', '1991-12-11', 'Valeria López', 'valeria.lopez@example.com', '(41) 94567-8901', 2, 2, 4, 5),
('55667788990', 'Brasileira', '1992-07-19', 'Thiago Martins', 'thiago.martins@example.com', '(51) 95678-9012', 1, 4, 5, 1);
