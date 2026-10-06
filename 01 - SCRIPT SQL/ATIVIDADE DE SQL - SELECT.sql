CREATE DATABASE faculdade;
USE faculdade;

CREATE TABLE Aluno (
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(100),
    Idade INT
);

CREATE TABLE Disciplina (
    CodigoDisciplina INT PRIMARY KEY,
    Nome VARCHAR(100),
    NotaMinima FLOAT
);

CREATE TABLE Curso (
    Matricula INT,
    CodigoDisciplina INT,
    Nota1 FLOAT,
    Nota2 FLOAT,
    FOREIGN KEY (Matricula) REFERENCES Aluno(Matricula),
    FOREIGN KEY (CodigoDisciplina) REFERENCES Disciplina(CodigoDisciplina)
);

INSERT INTO Aluno VALUES
(1,'Ana',22),(2,'Bruno',19),(3,'Carla',25),(4,'Diego',20),(5,'Eva',23);

INSERT INTO Disciplina VALUES
(10,'Engenharia',6.0),(20,'Medicina',7.0),(30,'Direito',6.5);

INSERT INTO Curso VALUES
(1,10,8,9),(1,20,6,7),
(2,10,5,6),
(3,30,9,9),
(4,10,7,8);

/* A) Listar alunos com nome e idade, do mais novo pro mais velho */
SELECT Nome, Idade FROM Aluno ORDER BY Idade ASC;

/* B) Mostre apenas os alunos que estão matriculados no curso de Engenharia */
SELECT a.Nome
FROM Aluno a
JOIN Curso c ON a.Matricula = c.Matricula
JOIN Disciplina d ON c.CodigoDisciplina = d.CodigoDisciplina
WHERE d.Nome = 'Engenharia';

/* C) Exiba o nome do aluno e sua média de notas em todas as disciplinas, apenas para aqueles que possuem média maior ou igual a 7,0 */
SELECT a.Nome, AVG((c.Nota1 + c.Nota2)/2) AS Media
FROM Aluno a
JOIN Curso c ON a.Matricula = c.Matricula
GROUP BY a.Matricula, a.Nome
HAVING AVG((c.Nota1 + c.Nota2)/2) >= 7.0;

/* D) Mostre o nome do aluno junto com o nome do curso em que está matriculado (Se não tiver curso, mostre NULL) */
SELECT a.Nome, d.Nome AS NomeCurso
FROM Aluno a
LEFT JOIN Curso c ON a.Matricula = c.Matricula
LEFT JOIN Disciplina d ON c.CodigoDisciplina = d.CodigoDisciplina;

/* E) Exiba a quantidade de alunos por curso, mostrando somente os cursos que têm 2 ou mais alunos matriculados */
SELECT d.Nome AS NomeCurso, COUNT(c.Matricula) AS QtdAlunos
FROM Curso c
JOIN Disciplina d ON c.CodigoDisciplina = d.CodigoDisciplina
GROUP BY d.CodigoDisciplina, d.Nome
HAVING COUNT(c.Matricula) >= 2;
