ALTER TABLE tipo_telefone
	MODIFY COLUMN tipo_telefone CHAR(15);


    ALTER TABLE disciplina
MODIFY COLUMN carga_horaria INT(4);


ALTER TABLE turma
	MODIFY COLUMN periodo CHAR(15);


RENAME TABLE disciplina_historicoo TO disciplina_historico;