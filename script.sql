SET FOREIGN_KEY_CHECKS=0; 
drop table if exists usuarios;
CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(50) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE,
   `deleted` TINYINT,
   PRIMARY KEY (`id`)
);
drop table if exists notas_categorias;
CREATE TABLE `notas_categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nota_id` INT,
   `categoria_id` INT,
   PRIMARY KEY (`id`)
);
drop table if exists categorias;
CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(50) NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE,
   `deleted` TINYINT,
   PRIMARY KEY (`id`)
);
drop table if exists notas;
CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `usuario_id` INT NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `descripcion` TEXT NOT NULL,
   `eliminable` TINYINT NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_64ea6910-299d-411f-ba38-bc7b6c4316c8` FOREIGN KEY (`categoria_id`) REFERENCES `categorias`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_6ebf92fa-84aa-4da9-aa6c-0593ebe9007e` FOREIGN KEY (`nota_id`) REFERENCES `notas`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `notas` ADD CONSTRAINT `FK_200c8ec3-ad60-4f09-81c2-8f90012e1b30` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

insert into usuarios (id, nombre, email, created_at) values (1, 'Hope Tall', 'htall0@bandcamp.com', '2020-11-29');
insert into usuarios (id, nombre, email, created_at) values (2, 'Merell Bicheno', 'mbicheno1@seattletimes.com', '2021-12-03');
insert into usuarios (id, nombre, email, created_at) values (3, 'Delores Yegorshin', 'dyegorshin2@nytimes.com', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (4, 'Marwin Behling', 'mbehling3@imgur.com', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (5, 'Othella Skirving', 'oskirving4@un.org', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (6, 'Perrine Morling', 'pmorling5@bbc.co.uk', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (7, 'Silvester Van Schafflaer', 'svan6@dyndns.org', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (8, 'Felicle Scough', 'fscough7@merriam-webster.com', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (9, 'Emlynn Bartel', 'ebartel8@earthlink.net', '2021-08-07');
insert into usuarios (id, nombre, email, created_at) values (10, 'Zollie Ladley', 'zladley9@scribd.com', '2021-08-07');
insert into notas_categorias (id, nota_id, categoria_id) values (1, 10, 5);
insert into notas_categorias (id, nota_id, categoria_id) values (2, 7, 2);
insert into notas_categorias (id, nota_id, categoria_id) values (3, 8, 1);
insert into notas_categorias (id, nota_id, categoria_id) values (4, 5, 8);
insert into notas_categorias (id, nota_id, categoria_id) values (5, 6, 6);
insert into notas_categorias (id, nota_id, categoria_id) values (6, 4, 10);
insert into notas_categorias (id, nota_id, categoria_id) values (7, 8, 3);
insert into notas_categorias (id, nota_id, categoria_id) values (8, 4, 4);
insert into notas_categorias (id, nota_id, categoria_id) values (9, 8, 9);
insert into notas_categorias (id, nota_id, categoria_id) values (10, 1, 1);
insert into categorias (id, nombre, created_at) values (1, 'Action|Comedy', '2021-08-07');
insert into categorias (id, nombre, created_at) values (4, 'Drama|Romance|Western', '2021-08-07');
insert into categorias (id, nombre, created_at) values (2, 'Drama', '2021-08-07');
insert into categorias (id, nombre, created_at) values (3, 'Comedy', '2021-08-07');
insert into categorias (id, nombre, created_at) values (5, 'Drama', '2021-08-07');
insert into categorias (id, nombre, created_at) values (6, 'Comedy|Drama|Romance|War', '2021-08-07');
insert into categorias (id, nombre, created_at) values (7, 'Adventure|Children', '2021-08-07');
insert into categorias (id, nombre, created_at) values (8, 'Action|Comedy|Fantasy|Horror', '2021-08-07');
insert into categorias (id, nombre, created_at) values (9, 'Comedy|Drama', '2021-08-07');
insert into categorias (id, nombre, created_at) values (10, 'Comedy|Drama', '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (1, 10, 'Nullam molestie nibh in lectus.', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 0, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (2, 8, 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 1, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (3, 5, 'Donec posuere metus vitae ipsum.', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 0, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (4, 4, 'Mauris lacinia sapien quis libero.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (5, 6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (6, 10, 'In hac habitasse platea dictumst.', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 0, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (7, 7, 'Vestibulum ac est lacinia nisi venenatis tristique.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 1, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (8, 6, 'Maecenas pulvinar lobortis est.', 'In congue. Etiam justo. Etiam pretium iaculis justo.In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 0, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (9, 3, 'Morbi non lectus.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 0, '2021-08-07');
insert into notas (id, usuario_id, titulo, descripcion, eliminable, created_at) values (10, 2, 'Quisque id justo sit amet sapien dignissim vestibulum.', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '2021-08-07');