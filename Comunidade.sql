CREATE DATABASE comunidade;
USE comunidade;

INSERT INTO aluno (nome, nascimento) VALUES ('Naruto Uzumaki', '1994-02-15');
INSERT INTO aluno (nome, nascimento) VALUES ('Gon Freecs', '1998-05-17');
INSERT INTO aluno (nome, nascimento) VALUES ('Grisha Yeager', '1988-04-02');
INSERT INTO aluno (nome, nascimento) VALUES ('Lovepreet Bolt', '1996-11-21');
INSERT INTO aluno (nome, nascimento) VALUES ('Dale Bamba', '2022-07-15');

SELECT * from aluno;

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
    FOREIGN KEY (matricula) 
		REFERENCES aluno(matricula)
			ON DELETE CASCADE
);
*/