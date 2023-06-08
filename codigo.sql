DROP TABLE Ambulatorio;
DROP TABLE Medicos;
DROP TABLE Pacientes;
DROP TABLE Funcionarios;
DROP TABLE Consultas;

CREATE TABLE IF NOT EXISTS "Ambulatorio"("nroa" INT, "andar" NUMERIC(3)	NOT NULL, "capacidade" SMALLINT);
CREATE TABLE IF NOT EXISTS "Medicos"("codm" INT, "nomem" VARCHAR(40) NOT NULL, "idade" SMALLINT NOT NULL, "especialidade" CHAR(20), "cpf" NUMERIC(11) NOT NULL, "cidade" VARCHAR(30), "nroa" INT);
CREATE TABLE IF NOT EXISTS "Pacientes"("codp" INT, "nomep" VARCHAR(40), "idade" SMALLINT NOT NULL, "cpf" NUMERIC(11) NOT NULL, "cidade" CHAR(30), "doença" VARCHAR(40) NOT NULL);
CREATE TABLE IF NOT EXISTS "Funcionarios"("codf" INT, "nomef" VARCHAR(40), "idade" SMALLINT, "cidade" VARCHAR(30), "salario" NUMERIC(10), "cpf" NUMERIC(11) NOT NULL);
CREATE TABLE IF NOT EXISTS "Consultas"("codm" INT, "codp" INT, "data" DATE, "hora" TIME);

DELETE FROM Ambulatorio;
DELETE FROM Medicos;
DELETE FROM Pacientes;
DELETE FROM Funcionarios;
DELETE FROM Consultas;

INSERT INTO Ambulatorio (nroa, andar, capacidade)
VALUES
(1, 1, 30),
(2, 1, 50),
(3, 2, 40),
(4, 2, 25),
(5, 2, 55);

INSERT INTO Medicos (codm, nomem, idade, especialidade, cpf, cidade, nroa)
VALUES
(1, "Joao", 40, "ortopedia", 12345678901, "Florianopolis", 1),
(2, "Maria", 42, "traumatologia", 12345678902, "Blumenau", 1),
(3, "Pedro", 51, "pediatria", 12345678903, "Sao Jose", 2),
(4, "Carlos", 28, "ortopedia", 12345678904, "Joinville", 2),
(5, "Marcia", 33, "neurologia", 12345678905, "Biguacu", 3);

INSERT INTO Pacientes (codp, nomep, idade, cpf, cidade, doença)
VALUES
(1, "Ana", 20, 09876543210,"Florianopolis", "gripe"),
(2, "Paulo", 24, 09876543211, "Palhoca", "fratura"),
(3, "Lucia", 30, 09876543212, "Biguacu", "tendinite"),
(4, "Carlos", 28, 09876543212, "Joinville", "sarampo");

INSERT INTO Funcionarios (codf, nomef, idade, cidade, salario, cpf)
VALUES
(1, "Rita", 32, "Sao Jose", 1200, 74185296301),
(2, "Maria", 55, "Palhoca", 1220, 74185296302),
(3, "Caio", 45, "Florianopolis", 1100, 74185296303),
(4, "Carlos", 44, "Florianopolis", 1200, 74185296304),
(5, "Paula", 33, "Florianopolis", 2500, 74185296305);

INSERT INTO Consultas (codm, codp, data, hora)
VALUES
(1, 1, 2006/06/12, "14:00"),
(1, 4, 2006/06/13, "10:00"),
(2, 1, 2006/06/13, "9:00"),
(2, 2, 2006/06/13, "11:00"),
(2, 3, 2006/06/14, "14:00"),
(2, 4, 2006/06/14, "17:00"),
(3, 1, 2006/06/19, "18:00"),
(3, 3, 2006/06/12, "10:00"),
(3, 4, 2006/06/19, "13:00"),
(4, 4, 2006/06/20, "13:00"),
(4, 4, 2006/06/22, "19:30");

ALTER TABLE Ambulatorio ADD "especialidade" VARCHAR(50); 
ALTER TABLE Medicos ADD "crm" VARCHAR(20);
ALTER TABLE Funcionarios ADD "DATA_CONTRATACAO" DATE;
ALTER TABLE Medicos ADD "SOBRENOME" VARCHAR(50); 

ALTER TABLE Funcionarios ADD "SOBRENOME" VARCHAR(50); 

ALTER TABLE Pacientes ADD "SOBRENOME" VARCHAR(50);  
ALTER TABLE Medicos ADD "RG" VARCHAR(20); 

ALTER TABLE Funcionarios ADD "RG" VARCHAR(20); 

ALTER TABLE Pacientes ADD "RG" VARCHAR(20); 
ALTER TABLE Pacientes RENAME COLUMN "idade" TO "IDADE_PACIENTE"; 
ALTER TABLE Funcionarios RENAME COLUMN "idade" TO "IDADE_FUNCIONARIO"; 
ALTER TABLE Medicos RENAME COLUMN "idade" TO "IDADE_MEDICO";

UPDATE Pacientes SET  cidade ="ILHOTA" WHERE nomep='Paulo';