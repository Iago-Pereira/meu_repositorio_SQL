CREATE DATABASE comunidade;
USE comunidade;

INSERT INTO aluno (nome, nascimento) VALUES ('Naruto Uzumaki', '1994-02-15'),
											('Gon Freecs', '1998-05-17'),
											('Grisha Yeager', '1988-04-02'),
											('Lovepreet Bolt', '1996-11-21'),
											('Dale Bamba', '2022-07-15');

SELECT * from aluno;

DESC aluno;
-- like python command df.info()

/*
DROP TABLE IF EXISTS aluno;
CREATE TABLE aluno(
	matricula INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nascimento DATE,
    PRIMARY KEY (matricula)
);

DROP TABLE IF EXISTS cursos;
CREATE TABLE cursos(
	cod_curso VARCHAR(50) NOT NULL,
    nome_curso VARCHAR(100),
    materia VARCHAR(50),
    matricula INT,
    --FOREIGN KEY (matricula) 
	--REFERENCES aluno(matricula)
	--ON DELETE CASCADE
);
*/