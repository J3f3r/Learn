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

INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 2, 1);
INSERT INTO tb_resource (title, description, position, img_url, type, offer_id) VALUES ('Lives', 'Lives exclusivas para as turmas', 3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 0, 1);

INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste capítulo iremos iniciar a trilha', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, null)
INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste capítulo iremos continuar a trilha', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, 1)
INSERT INTO tb_section (title, description, position, img_url, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste capítulo iremos encerrar a trilha', 1,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDrcWfagAgd-Kx5fCTSV8_FlCthrcF2HOu6H854liu1Q&s', 1, 2)

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, avaliable, only_update) VALUES (1, 1, '2026-09-01T00:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, avaliable, only_update) VALUES (2, 1, '2026-09-01T00:00:00Z', null, true, false);




