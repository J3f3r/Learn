INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Dilan', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Bootcamp HTML', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHwN0l85Lo8-dRhNy9qjWd4ErHqJ1jVwb9yhIxC0DerA&s=10');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', '2025-01-01T00:00:00Z', '2027-12-31T23:59:59Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', '2025-01-01T00:00:00Z', '2027-12-31T23:59:59Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeira notificação de teste', '2026-10-02T17:00:00Z', false, '/offers/1/resource/1', 1)
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 2, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Lives', 'Lives exclusivas para as turmas', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 0, 1);

INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo iremos iniciar a trilha', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, null)
INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo iremos continuar a trilha', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, 1)
INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo iremos encerrar a trilha', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, 2)

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (1, 1, '2026-09-01T00:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 1, '2026-09-01T00:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capítulo 1', 1, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (1, 'Manual de apoio: abcd', 'https://www.youtube.com/watch?v=bsl35POrmJ8')

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capítulo 1', 2, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (2, '', 'https://www.youtube.com/watch?v=bsl35POrmJ8')

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capítulo 1', 3, 1);
INSERT INTO tb_content (id, text_content, video_uri) VALUES (3, '', 'https://www.youtube.com/watch?v=bsl35POrmJ8')

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capítulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_count,aproval_count, weigth, due_date) VALUES (4, 'Fazer trabalho lega', 5, 4, 1.0, '2026-09-01T00:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1)

INSERT INTO tb_deliver (uri, moment, status, feedback, correct_Count, lesson_id, user_id, offer_id) VALUES ('https://www.youtube.com/watch?v=bsl35POrmJ8', '2026-09-01T00:00:00Z', 0, null, null, 4, 1, 1);

INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 1', 'Corpo do tópico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T13:00:00Z', 1, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 2', 'Corpo do tópico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 3', 'Corpo do tópico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T13:00:00Z', 2, 1, 1);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 4', 'Corpo do tópico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 5', 'Corpo do tópico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T13:00:00Z', 1, 1, 2);
INSERT INTO tb_topic (title, body, moment, author_id, offer_id, lesson_id) VALUES ('Título do tópico 6', 'Corpo do tópico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T13:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes (topic_id, user_id) VALUES (2, 1);

INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Tente reiniciar o computador', TIMESTAMP WITH TIME ZONE '2020-12-15T13:00:00Z', 1, 2);
INSERT INTO tb_reply (body, moment, topic_id, author_id) VALUES ('Deu certo, valeu!', TIMESTAMP WITH TIME ZONE '2020-12-20T13:00:00Z', 1, 1);

INSERT INTO tb_reply_likes (reply_id, user_id) VALUES (1, 1);


