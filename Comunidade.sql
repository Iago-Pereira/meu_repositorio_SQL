/*
CREATE DATABASE comunidade;
USE comunidade;

INSERT INTO aluno (nome, nascimento) VALUES ('Naruto Uzumaki', '1994-02-15'),
											('Gon Freecs', '1998-05-17'),
											('Grisha Yeager', '1988-04-02'),
											('Lovepreet Bolt', '1996-11-21'),
											('Dale Bamba', '2022-07-15');
                                            
INSERT INTO cursos (cod_curso, nome_curso, materia, matricula) VALUES ('ENGQ120241', 'Engenharia Química', 'Processos', 2),
																	  ('COMP120241', 'Ciência da Computação', 'Inteligência Artificial', 3),
                                                                      ('FIS120241', 'Física', 'Mecânica', 5),
                                                                      ('FIS120241', 'Física', 'Mecânica', 1),
                                                                      ('GEO120241', 'Paleontologia', 'Evolução', 10);


DESC aluno;
-- like python command df.info()

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
    matricula INT
    -- FOREIGN KEY (matricula) 
	-- REFERENCES aluno(matricula)
	-- ON DELETE CASCADE
);
*/

SELECT * from aluno;
SELECT * from cursos;

SELECT *
FROM aluno
ORDER BY nome;

SELECT
	COUNT(*) AS registros
FROM aluno;

SELECT matricula, nome,-- calcular idade
	EXTRACT(YEAR FROM CURRENT_DATE) AS ano_atual,
    EXTRACT(YEAR FROM nascimento) AS ano_nascimento,
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM nascimento) AS idade
FROM aluno;

-- VARCHAR(100) --> EXTRACT(YEAR FROM CAST(nascimento IN REAL))
CREATE VIEW vw_aluno AS
SELECT nome,
	nascimento,
	EXTRACT(DAY FROM nascimento) AS dia_nascimento,
	EXTRACT(MONTH FROM nascimento) AS mes_nascimento,
	EXTRACT(YEAR FROM nascimento) AS ano_nascimento,
    -- DAYOFWEEK(nascimento) AS dia_da_semana, -- categórica
    CASE
		WHEN DAYOFWEEK(nascimento) = 1 THEN "Domingo"
        WHEN DAYOFWEEK(nascimento) = 2 THEN "Segunda"
        WHEN DAYOFWEEK(nascimento) = 3 THEN "Terça"
        WHEN DAYOFWEEK(nascimento) = 4 THEN "Quarta"
        WHEN DAYOFWEEK(nascimento) = 5 THEN "Quinta"
        WHEN DAYOFWEEK(nascimento) = 6 THEN "Sexta"
        WHEN DAYOFWEEK(nascimento) = 7 THEN "Sábado"
    END AS dia_da_semana,
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM nascimento) AS idade,
    c.*
FROM aluno
-- LEFT JOIN cursos c
INNER JOIN cursos c
	ON aluno.matricula = c.matricula;

/* WHERE nome LIKE 'G%';
WHERE nome IN (
	"Dale Bamba",
    "Lovepreet Bolt"
);
WHERE DAYOFWEEK(nascimento) BETWEEN 2 AND 6; -- excluir sábado e domingo
*/

SELECT * FROM vw_aluno;