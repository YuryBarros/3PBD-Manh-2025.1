CREATE DATABASE IF NOT EXISTS sistema_academico;
USE sistema_academico;

CREATE TABLE IF NOT EXISTS Disciplinas (
    sigla VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargaHoraria INT NOT NULL,
    periodo VARCHAR(20) NOT NULL,
    limiteFalta INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Alunos (
    matricula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    cpf VARCHAR(14) NOT NULL UNIQUE
);

INSERT INTO Disciplinas (sigla, nome, cargaHoraria, periodo, limiteFalta)
VALUES ('MAT101', 'Matemática Básica', 60, 'Noturno', 15);

UPDATE Disciplinas 
SET cargaHoraria = 75, periodo = 'Matutino'
WHERE sigla = 'MAT101';

SELECT * FROM Disciplinas;

SELECT * FROM Disciplinas WHERE sigla = 'MAT101';

DELETE FROM Disciplinas WHERE sigla = 'MAT101';

INSERT INTO Alunos (nome, email, cpf)
VALUES ('João Silva', 'joao.silva@email.com', '123.456.789-00');

UPDATE Alunos 
SET email = 'joao.novo@email.com'
WHERE matricula = 1;

SELECT * FROM Alunos;

SELECT * FROM Alunos WHERE matricula = 1;

DELETE FROM Alunos WHERE matricula = 1;