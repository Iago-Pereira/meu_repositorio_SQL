CREATE DATABASE comunidade;
USE comunidade;

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