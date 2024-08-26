INSERT INTO tb_categoria(nome) VALUES ('Curso');
INSERT INTO tb_categoria(nome) VALUES ('Oficina');

INSERT INTO tb_participante(email,nome) VALUES ('jose@gmail.com','José Silva');
INSERT INTO tb_participante(email,nome) VALUES ('tiago@gmail.com','Tiago Faria');
INSERT INTO tb_participante(email,nome) VALUES ('maria@gmail.com','Maria do Rosário');
INSERT INTO tb_participante(email,nome) VALUES ('teresa@gmail.com','Teresa Silva');


INSERT INTO tb_atividade(nome,descricao,preco,categoria_id) VALUES ('Curso de HTML','Aprenda HTML de forma prática',80.00,1);
INSERT INTO tb_atividade(nome,descricao,preco,categoria_id) VALUES ('Oficina de GitHub','Controle versões de seus projetos',50.00,2);

INSERT INTO atividade_participante(atividade_id,participante_id) VALUES (1,1);
INSERT INTO atividade_participante(atividade_id,participante_id) VALUES (1,2);
INSERT INTO atividade_participante(atividade_id,participante_id) VALUES (1,3);
INSERT INTO atividade_participante(atividade_id,participante_id) VALUES (2,3);
INSERT INTO atividade_participante(atividade_id,participante_id) VALUES (2,4);

INSERT INTO tb_bloco (atividade_id, inicio, fim) VALUES (1, '2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_bloco (atividade_id, inicio, fim) VALUES (2, '2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_bloco (atividade_id, inicio, fim) VALUES (3, '2017-09-26 08:00:00', '2017-09-26 11:00:00');



INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (1,1);

INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (1,2);

INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (1,3);

INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (2,3);

INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (2,4);

INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (3,3);

INSERT INTO participante_bloco(bloco_id,participante_id) VALUES (3,4);










