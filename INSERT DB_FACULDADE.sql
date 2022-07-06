use db_faculdade;

INSERT INTO tipo_logradouro
VALUES
	(DEFAULT, 'Bairro'),
    (DEFAULT, 'condominio'),
    (DEFAULT, 'rua'),
    (DEFAULT, 'chacara'),
    (DEFAULT, 'favela'),
    (DEFAULT, 'vila'),
    (DEFAULT, 'feira'),
    (DEFAULT, 'distrito'),
    (DEFAULT, 'area'),
    (DEFAULT, 'fazenda'),
    (DEFAULT, 'estrada'),
    (DEFAULT, 'estaçao'),
    (DEFAULT, 'lago'),
    (DEFAULT, 'ladeira'),
    (DEFAULT, 'morro'),
    (DEFAULT, 'vila'),
    (DEFAULT, 'nucleo'),
    (DEFAULT, 'quadra'),
    (DEFAULT, 'recanto'),
    (DEFAULT, 'residencial');
    
    SELECT * FROM tipo_logradouro;
    
    INSERT INTO departamento
VALUES
('1', 'ciencias humanas'),
('2', 'matematica'),
('3', 'biologicas'),
('4', 'estagio'),
('5', 'tecnologia da inform');

SELECT * FROM departamento;

ALTER TABLE tipo_telefone
	MODIFY COLUMN tipo_telefone CHAR(15);
    
    INSERT INTO tipo_telefone
VALUES
('1', 'residen'),
('2', 'celular'),
('3', 'comercial');



SELECT * FROM tipo_telefone;


INSERT INTO telefone
VALUES
('1', '254768956', '1'),
('2', '473867595', '2'),
('3', '209483745', '1'),
('4', '473896596', '2'),
('5', '593573736', '1'),
('6', '263582684', '3'),
('7', '294638486', '1'),
('8', '535557379', '3'),
('9', '858958537', '1'),
('10', '748884843', '3'),
('11', '357857474', '1'),
('12', '436656634', '3'),
('13', '796234545', '2'),
('14', '167155710', '3'),
('15', '506472835', '2'),
('16', '457631978', '1'),
('17', '457315982', '2'),
('18', '545845455', '2'),
('19', '287575256', '3'),
('20', '431657945', '1'),
('21', '545673125', '2'),
('22', '245257555', '2'),
('23', '452764912', '2'),
('24', '245575424', '3'),
('25', '474242254', '3'),
('26', '142421242', '3');

SELECT * FROM telefone;
          
          
INSERT INTO professor
	VALUES
		('1', 'Roberto', 'Carlos', 'ativo', '5'),
		('2', 'Roberto', 'Aragao', 'inativo', '3'),
		('3', 'Gustavo', 'Assis', 'ativo', '2'),
		('4', 'Alicia', 'Oliveira', 'inativo', '1'),
		('5', 'Thiago', 'Oliveira', 'ativo', '5'),
		('6', 'Brunna', 'Silva', 'ativo', '5'),
		('7', 'Sabrina', 'Santos', 'inativo', '4'),
		('8', 'Guilherme', 'Cesar', 'nativo', '2'),
		('9', 'Daniel', 'Andrade', 'inativo', '1'),
		('10', 'Maisa', 'Ribeiro', 'inativo', '3');
        
        SELECT * FROM professor;
        

INSERT INTO curso 
VALUES
('1', 'engenhariadesoftware', '2'),
('2', 'analise de sistemas', '5'),
('3', 'biologia', '1'),
('4', 'historia', '2'),
('5', 'matematica', '4'),
('6', 'engenharia eletrica', '3'),
('7', 'psicologia', '4'),
('8', 'medicina', '1'),
('9', 'arquitetura', '5'),
('10', 'educacao ambiental', '3');

SELECT * FROM curso;


ALTER TABLE disciplina
MODIFY COLUMN carga_horaria INT(4);

INSERT INTO disciplina
VALUES 
('001', 'raciocinio logico ', '200', 'estudo da tabela verdade', '500', '3'),
('002', 'psicologia cognitiva ', '250', 'procurando explicar como o ser humano percebe', '780', '1'),
('003', 'eletronica digital ', '100', 'A eletrônica digital abrange todos os sistemas', '900', '2'),
('004', 'programacao em C ', '150', 'estudo da tabela verdade', '400', '5'),
('005', 'Matemática ', '310', 'é a ciência que relaciona as práticas do cotidiano', '350', '2'),
('006', 'biografia ', '50', 'é um gênero textual no qual são narrados fatos', '100', '1'),
('007', 'ingles ', '300', 'e o estudo da lingua inglesa', '1100', '2'),
('008', 'Química', '300', 'estudo é a matéria, suas transformações', '450', '5'),
('009', 'Espanhol ', '120', 'estudo da lingua espanhola', '430', '2'),
('010', 'Biologia ', '425', 'estuda a vida em seus mais variados aspectos', '100', '1'),
('011', 'Gramática ', '330', 'estudo ou tratado dos fatos da linguagem', '220', '4'),
('012', 'Filosofia ', '110', 'quer dizer refletir sobre questões fundamentais', '700', '5'),
('013', 'História ', '400', 'estudo do passado', '560', '3'),
('014', 'Sociologia ', '255', 'a ciência que estuda a sociedade', '415', '3'),
('015', 'Educaçao fisica ', '200', 'a ideia de controle do corpo', '540', '5'),
('016', 'Geografia ', '321', 'estudo do espaço geografico', '580', '4'),
('017', 'História da América ', '234', 'estudo da América Pré-Colombiana', '295', '1'),
('018', 'Geografia do Brasil', '435', 'estudo do espaço brasileiro', '90', '3'),
('019', 'História do Brasil ', '320', 'estudo do Período Colonial e Período Imperial', '341', '2'),
('020', 'História Geral ', '430', 'estudo do tudo e mais um pouco', '180', '2'),
('021', 'Italiano ', '530', 'estudo da lingua Italiana ', '800', '5'),
('022', 'Literatura ', '104', 'manifestação artística que usa a palavra', '930', '4'),
('023', 'Artes ', '150', 'estudo das formas e artes', '659', '3'),
('024', 'Fisica ', '160', 'estuda as propriedades da matéria e da energia', '295', '2'),
('025', 'Redaçao ', '150', 'estudo da linguagem formal', '739', '1'),
('026', 'Imunologia ', '170', 'estudo da imunologia', '295', '5'),
('027', 'Patologia ', '180', 'estudo do figado', '159', '5'),
('028', 'Embriologia. ', '190', 'estudo do embrião', '574', '4'),
('029', 'Oftalmologia ', '320', 'estudo da visão', '290', '3'),
('030', 'Fisiologia ', '330', 'estudo do corpop fisico', '389', '1');

  SELECT * FROM disciplina;

    INSERT INTO endereço
    VALUES
		('1', 'rua jose', '1', 'descendo o morro', '00001', '1'),
        ('2', 'rua amaral', '2', 'virando a rua maria', '00002', '2'),
        ('3', 'rua Maria', '3', 'ao lado da rua joaquin', '00003', '3'),
        ('4', 'rua Rio', '4', 'Subindo o mercado bom preço', '00004', '4'),
        ('5', 'rua Paulista', '5', 'subindo o morro fraldinha', '00005', '5'),
        ('6', 'rua Antonio', '6', 'ao lado do bairro do mario', '00006', '6'),
        ('7', 'rua Descoberto', '7', 'a direita da rua Sao Francisco', '00007', '7'),
        ('8', 'rua Tesoura', '8', 'ao final da praia do tombo', '00008', '8'),
        ('9', 'rua Raquel', '9', 'em frente a faculdade', '00009', '9'),
        ('10', 'rua Mauricio', '10', 'a esqurda da rua do olhar', '00010', '10'),
        ('11', 'rua Brasil', '11', 'descendo o morro', '00011', '11'),
        ('12', 'rua Santo', '12', 'entrando na rua da igreja', '00012', '12'),
        ('13', 'rua Piramide', '13', 'subindo o bar do Zé', '00013', '13'),
        ('14', 'rua Palha', '14', 'virando a esqquina da loja de roupa', '00014', '14'),
        ('15', 'rua Nevasca', '15', 'descendo a rua do açougue', '00015', '15'),
        ('16', 'rua Alvares', '16', 'subindo a rua do Zé', '00016', '16'),
        ('17', 'rua Cabral', '17', 'ao lado da praça do bonito', '00017', '17'),
        ('18', 'rua Marcos', '18', 'a direita do metro', '00018', '18'),
        ('19', 'rua Silvestre', '19', 'atras do shopping boa vista', '00019', '19'),
        ('20', 'rua Neto', '20', 'ao lado do bairro do bonito', '00020', '20');
        
        SELECT * FROM endereço;
        


ALTER TABLE turma
	MODIFY COLUMN periodo CHAR(15);
    
INSERT INTO turma 
VALUES 
('1', 'matutino', '300', '2018/05/01', '2022/09/15', '5'),
('2', 'noturno', '890', '2015/10/25', '2022/01/15', '9'),
('3', 'vespertino', '500', '2016/05/05', '2022/10/28', '2'),
('4', 'matutino', '400', '2020/03/03', '2022/12/06', '7'),
('5', 'matutino', '750', '2018/05/01', '2022/09/15', '1'),
('6', 'vespertino', '225', '2017/11/10', '2021/01/05', '4'),
('7', 'matutino', '730', '2016/02/17', '2020/07/18', '6'),
('8', 'noturno', '800', '2021/05/23', '2022/11/20', '3'),
('9', 'noturno', '910', '2015/10/07', '2020/05/15', '8'),
('10', 'vespertino', '470', '2017/04/03', '2021/09/30', '8');

SELECT * FROM turma;


INSERT INTO aluno
VALUES
('0001', 'Gabriel', 'Ribeiro', '001', 'false', 'M', 'Marcio Anderson', 'Maria cardoso', 'gb@gamil.com', '61 001', '1', '7', '1'),
('0002', 'Ronald', 'Santos', '002', 'true', 'M', 'Ronaldo Costa', 'Jessica Ribeiro', 'rs@gamil.com', '473867595', NULL, 4, '2'),
('0003', 'Brunno', 'Silva', '003', 'false', 'M', 'Gilberto Martins', 'Eva oliveira', 'bs@gamil.com', NULL, '5', '3', '3'),
('0004', 'Guilherme', 'Aragão', '004', 'TRUE', 'M', 'Robson costa', 'Aline Cavalcante', 'ga@gamil.com', '61 004', '9', '4', '4'),
('0005', 'Joao', 'Pedro', '005', 'false', 'M', 'Ronald Monteiro', 'Sabrina dias', 'jp@gamil.com', '61 005', NULL, 7, '5'),
('0006', 'Pedro', 'silva', '006', 'True', 'M', 'henrike Oliveira', 'Maria Freitas', 'ps@gamil.com', '61 006', '9', '1', '2'),
('0007', 'Alex', 'Santos', '007', 'false', 'M', 'Marcio Moura', 'Leticia Monteiro', 'as@gamil.com', '61 007', '3', '5', '2'),
('0008', 'Victor', 'Guimaraes', '008', 'false', 'M', 'Paulo Pedro', 'Amanda Carvalho', 'vg@gamil.com',NULL, '10', '7', '8'),
('0009', 'Gabriel', 'Assis', '009', 'true', 'M', 'Mariano Nunes', 'Livia Cardoso', 'ga@gamil.com', '61 009', '2', '10', '9'),
('0010', 'Anderson', 'Ribeiro', '010', 'true', 'M', 'Daniel Mendes', 'Maria Ribeiro', 'ar@gamil.com', '61 010', '2', '2', '10'),
('0011', 'Jorge', 'Silva', '011', 'false', 'M', 'Pedro Anderson', 'Jordana Ribeiro', 'js@gamil.com', NULL, '1', '3', '11'),
('0012', 'Matheus', 'Ribeiro', '012', 'true', 'M', 'Chico Anderson', 'Maria Gomes', 'mr@gamil.com', '436656634', '5', '7', '12'),
('0013', 'Francisco', 'Vieira', '013', 'false', 'M', 'Marcio Assis', 'Rafaela Ribeiro', 'fv@gamil.com', '796234545', '7', '2', '13'),
('0014', 'Daniel', 'Ribeiro', '014', 'false', 'M', 'Jorge Nascimento', 'Fernanda Lima', 'dr@gamil.com', '167155710', '3', '3', '14'),
('015', 'Sabrina', 'Matos', '015', 'true', 'F', 'Mario Silva', 'Marcia Lopes', 'sm@gamil.com', NULL, '10', '2', '15'),
('0016', 'Brunna', 'Evelinn', '016', 'true', 'F', 'Ronaldo Anderson', 'Jessica Marques', 'be@gamil.com', '61 016', NULL, '9', '16'),
('0017', 'Stephanie', 'Silva', '017', 'false', 'F', 'Gilberto Martins', 'Eva oliveira', 'ss@gamil.com', '61 017', '1', '5', '17'),
('0018', 'Guilherme', ' Alves ', '018', 'true', 'M', 'Robson costa', 'Ana Cavalcante', 'ga@gamil.com', '5458454555', '6', '1', '18'),
('0019', 'Henrique', 'OLiveira', '019', 'false', 'M', 'Joao Oliveira', 'Maria Ribeiro', 'ho@gamil.com', '61 019', '5', '10', '19'),
('0020', 'Chico', 'OLiveira', '020', 'false', 'M', 'Silvestre Reis', 'Marilene Moreira', 'co@gamil.com', '61 020', '2', '7', '20');

  SELECT * FROM aluno;

INSERT INTO telefone_aluno
VALUES
(DEFAULT, '0001', '1'),
(DEFAULT, '0002', '2'),
(DEFAULT, '0003', '3'),
(DEFAULT, '0004', '4'),
(DEFAULT, '0005', '5'),
(DEFAULT, '0006', '6'),
(DEFAULT, '0007', '7'),
(DEFAULT, '0008', '8'),
(DEFAULT, '0009', '9'),
(DEFAULT, '0010', '10'),
(DEFAULT, '0011', '11'),
(DEFAULT, '0012', '12'),
(DEFAULT, '0013', '13'),
(DEFAULT, '0014', '14'),
(DEFAULT, '0015', '15'),
(DEFAULT, '0016', '16'),
(DEFAULT, '0017', '17'),
(DEFAULT, '0018', '18'),
(DEFAULT, '0019', '19'),
(DEFAULT, '0020', '20'),
(DEFAULT, '0001', '21'),
(DEFAULT, '0005', '22'),
(DEFAULT, '0009', '23'),
(DEFAULT, '0001', '24'),
(DEFAULT, '0005', '25'),
(DEFAULT, '0009', '26');

SELECT * FROM telefone_aluno;

INSERT INTO historico
VALUES
('1', '20211120', '20220918', '0001'),
('2', '20151031', '20220413', '0003'),
('3', '20170729', '20220719', '0004'),
('4', '20190920', '20220122', '0006'),
('5', '20201115', '20221130', '0007'),
('6', '20141224', '20221231', '0008'),
('7', '20181018', '20220429', '0009'),
('8', '20171105', '20220627', '0010'),
('9', '20160615', '20220206', '0011'),
('10', '20210222', '20220912', '0012'),
('11', '20200530', '20221011', '0013'),
('12', '20190627', '20221119', '0014'),
('13', '20170419', '20220617', '0015'),
('14', '20180102', '20220825', '0017'),
('15', '20190916', '20220518', '0018'),
('16', '20210709', '20220609', '0019'),
('17', '20170517', '20221101', '0020');


RENAME TABLE disciplina_historicoo TO disciplina_historico;

INSERT INTO disciplina_historico
VALUES 
('1', '14', '9.8', '200'),
('2', '1', '10.0', '105'),
('3', '4', '3.7', '274'),
('4', '3', '8.9', '042'),
('8', '27', '5.0', '167'),
('9', '4', '7.6', '027'),
('10', '16', '5.9', '194'),
('11', '12', '4.5', '39'),
('12', '11', '9.2', '195'),
('13', '19', '9.3', '111'),
('14', '22', '9.9', '120'),
('15', '21', '10.0', '174'),
('16', '25', '9.3', '193'),
('17', '23', '5.4', '154'),
('16', '14', '7.2', '134'),
('6', '1', '6.9', '185'),
('12', '4', '3.8', '106'),
('8', '3', '1.0', '035'),
('3', '7', '1.7', '153'),
('9', '29', '8.5', '250'),
('10', '18', '3.9', '251'),
('11', '27', '0', '156'),
('5', '4', '4.5', '120'),
('13', '16', '7.4', '133'),
('17', '12', '8.3', '133'),
('9', '11', '8.4', '178'),
('4', '19', '3.0', '179');

INSERT INTO professor_disciplina
VALUES
('1', '15'),
('9', '5'),
('3', '27'),
('7', '26'),
('1', '1'),
('3', '14'),
('2', '29'),
('8', '30'),
('4', '7'),
('5', '17'),
('9', '13'),
('10', '9'),
('6', '3'),
('3', '7'),
('7', '3');

INSERT INTO curso_disciplina
VALUES
('1', '3'),
('2', '8'),
('3', '4'),
('4', '3'),
('5', '1'),
('6', '4'),
('7', '7'),
('8', '2'),
('9', '3'),
('10', '9'),
('11', '10'),
('12', '5'),
('13', '4'),
('14', '7'),
('15', '8'),
('16', '1'),
('17', '1'),
('18', '6'),
('19', '9'),
('20', '10'),
('21', '1'),
('22', '2'),
('23', '6'),
('24', '5'),
('25', '2'),
('26', '3'),
('27', '8'),
('28', '6'),
('29', '4'),
('30', '7');
