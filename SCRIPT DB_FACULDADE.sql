CREATE DATABASE IF NOT EXISTS faculdade
 DEFAULT CHARSET utf8mb4 DEFAULT COLLATE utf8mb4_0900_ai_ci; 

 use faculdade;
 
 CREATE TABLE IF NOT EXISTS departamento (
cod_departamento INTEGER(4) PRIMARY KEY AUTO_INCREMENT,
nome_departamento CHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS tipo_telefone (
	cod_tipo INT(4) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tipo_telefone INT(8) 
);

CREATE TABLE IF NOT EXISTS tipo_logradouro (
	cod_tipo_logradouro INT(4) PRIMARY KEY AUTO_INCREMENT,
    tipo_logradouro CHAR(12)
);

CREATE TABLE IF NOT EXISTS curso (
	cod_curso INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_curso CHAR(20),
    fk_cod_departamento INT(4),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
);

CREATE TABLE IF NOT EXISTS disciplina (
	cod_disciplina INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina CHAR(20),
    descriçao CHAR(50),
    num_alunos INT(4)  NOT NULL,
    carga_horaria TIME NOT NULL,
    fk_cod_departamento INT(4) NOT NULL,
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
);

CREATE TABLE IF NOT EXISTS professor (
	cod_professor INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome CHAR(12) NOT NULL,
    sobrenome CHAR(12) NOT NULL,
    status CHAR(20),
    fk_cod_departamento INT(4),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
);

CREATE TABLE IF NOT EXISTS curso_disciplina (
	fk_cod_disciplina INT(4) NOT NULL,
    fk_cod_curso INT(4) NOT NULL,
PRIMARY KEY (fk_cod_disciplina, fk_cod_curso),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
);

CREATE TABLE IF NOT EXISTS professor_disciplina (
	fk_cod_professor INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
FOREIGN KEY (fk_cod_professor) REFERENCES professor (cod_professor),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS turma (
	cod_turma INT(4) PRIMARY KEY AUTO_INCREMENT,
    periodo TIME,
    num_alunos INT(6),
    dt_inicio DATE,
    dt_fim DATE,
    fk_cod_curso INT(4),
    FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
);

CREATE TABLE IF NOT EXISTS endereço (
	cod_endereço INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_rua CHAR(50) NOT NULL,
    numero_rua INT(4) NOT NULL,
    complemento CHAR(50) NOT NULL,
    CEP CHAR(8) NOT NULL,
    fk_cod_tipo_logradouro INT(4) NOT NULL,
FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro (cod_tipo_logradouro)
);

CREATE TABLE IF NOT EXISTS telefone (
	cod_telefone INT(4) PRIMARY KEY AUTO_INCREMENT,
    num_telefone INT(15) NOT NULL,
    fk_cod_tipo INT(4) NOT NULL,
FOREIGN KEY (fk_cod_tipo) REFERENCES tipo_telefone (cod_tipo)
);

CREATE TABLE IF NOT EXISTS aluno (
	RA INT(4) PRIMARY KEY AUTO_INCREMENT,
    nome_aluno CHAR(12),
    sobrenome_aluno CHAR(25),
    CPF INT(15),
    status CHAR(20),
    sexo CHAR(9),
    nome_mae CHAR(50),
    nome_pai CHAR(50),
    email CHAR(50),
    whatsapp CHAR(20),
    fk_cod_turma INT(4),
    fk_cod_curso INT(4),
    fk_cod_endereço INT(4),
FOREIGN KEY (fk_cod_turma) REFERENCES turma (cod_turma),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
FOREIGN KEY (fk_cod_endereço) REFERENCES endereço (cod_endereço)
);

CREATE TABLE IF NOT EXISTS telefone_aluno (
	cod_tel_aluno INT(4) PRIMARY KEY AUTO_INCREMENT,
    fk_RA INT(4) NOT NULL,
    fk_cod_telefone INT(4) NOT NULL,
FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone)
);

CREATE TABLE IF NOT EXISTS aluno_disciplina (
	fk_RA INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
PRIMARY KEY (fk_RA, fk_cod_disciplina),
FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS historico (
	cod_historico INT(4) PRIMARY KEY AUTO_INCREMENT,
    dt_inicio INT(4),
    dt_fim INT(4),
    fk_RA INT(4) NOT NULL,
FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
);

CREATE TABLE IF NOT EXISTS disciplina_historicoo (
    fk_cod_historico INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
    nota FLOAT(4,2),
    frequencia INT(4),
    PRIMARY KEY (fk_cod_historico, fk_cod_disciplina),
FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS telefone_aluno (
	cod_tel_aluno INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    fk_RA INT(4) NOT NULL,
    fk_cod_telefone INT(4) NOT NULL,
FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone)
);

CREATE TABLE IF NOT EXISTS aluno_disciplina (
	fk_RA INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);

CREATE TABLE IF NOT EXISTS historico (
	cod_historico INT(4) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    dt_inicio INT(4) NOT NULL,
    dt_fim INT(4) NOT NULL,
    fk_RA INT(4) NOT NULL,
FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
);

CREATE TABLE IF NOT EXISTS disciplina_historicoo (
    nota FLOAT(4,2) NOT NULL,
    frequencia INT(4) NOT NULL,
    fk_cod_historico INT(4) NOT NULL,
    fk_cod_disciplina INT(4) NOT NULL,
FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
);