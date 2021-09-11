/*
MySQL Backup
Database: test
Backup Time: 2021-09-11 11:06:36
*/

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `test`.`akses_token`;
DROP TABLE IF EXISTS `test`.`have_thing`;
DROP TABLE IF EXISTS `test`.`person`;
DROP TABLE IF EXISTS `test`.`thing`;
DROP TABLE IF EXISTS `test`.`user`;
CREATE TABLE `akses_token` (
  `id_akses_token` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `access_token` text NOT NULL,
  `ip_address` varchar(20) NOT NULL,
  PRIMARY KEY (`id_akses_token`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
CREATE TABLE `have_thing` (
  `id` int(11) NOT NULL,
  `id_person` int(11) NOT NULL,
  `id_thing` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
CREATE TABLE `thing` (
  `id` int(11) NOT NULL,
  `name_thing` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `role` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
BEGIN;
LOCK TABLES `test`.`akses_token` WRITE;
DELETE FROM `test`.`akses_token`;
INSERT INTO `test`.`akses_token` (`id_akses_token`,`id_user`,`access_token`,`ip_address`) VALUES (4, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJpa2hzYW4iLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTA1LTE0VDE3OjAwOjAwLjAwMFoiLCJlbWFpbCI6ImlraHNhbkBnbWFpbC5jb20ifV0sImlhdCI6MTYyMTEyNTE2OSwiZXhwIjoxNjIxMTI2NjA5fQ.wGXWHJ1gLCB5OakhQvduSTtjqkwuLaFQ-7tlrXjrOl0', '192.168.229.153'),(5, 9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6OSwidXNlcm5hbWUiOiJpa2hzYW4iLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTA1LTE0VDE3OjAwOjAwLjAwMFoiLCJlbWFpbCI6ImlraHNhbkBnbWFpbC5jb20ifV0sImlhdCI6MTYyMTEyNjgyMCwiZXhwIjoxNjIxMTI4MjYwfQ.LCXiYGxP84ueGzAj5HI795iypkbANwiXirkpRaEbfC4', '192.168.229.153'),(6, 12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MTIsInVzZXJuYW1lIjoiaWtoc2FuIiwicGFzc3dvcmQiOiIyNGQxNmY5MmNiZmI1ZTgxM2NmZjFmM2Q5ODBiMGNhMTNjMjNhMDY2Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTA1LTE1VDE3OjAwOjAwLjAwMFoiLCJlbWFpbCI6ImlraHNhbkBnbWFpbC5jb20ifV0sImlhdCI6MTYyMTE0NzEyMiwiZXhwIjoxNjIxMTQ4NTYyfQ.X3VrK3NRKCox6Akfiwfe5d7zg2NsjC_xAJI3zsSdoPk', '192.168.209.153'),(7, 12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb3dzIjpbeyJpZCI6MTIsInVzZXJuYW1lIjoiaWtoc2FuIiwicGFzc3dvcmQiOiIyNGQxNmY5MmNiZmI1ZTgxM2NmZjFmM2Q5ODBiMGNhMTNjMjNhMDY2Iiwicm9sZSI6MiwidGFuZ2dhbF9kYWZ0YXIiOiIyMDIxLTA1LTE1VDE3OjAwOjAwLjAwMFoiLCJlbWFpbCI6ImlraHNhbkBnbWFpbC5jb20ifV0sImlhdCI6MTYzMTMzMjg2MCwiZXhwIjoxNjMxMzM0MzAwfQ.C48ZSxOVWH1Xv2kYBFunD3eBRLrBlxa-AL16wR7o0k8', '192.168.7.153');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `test`.`have_thing` WRITE;
DELETE FROM `test`.`have_thing`;
INSERT INTO `test`.`have_thing` (`id`,`id_person`,`id_thing`) VALUES (1, 1, 1),(2, 1, 2),(3, 2, 1);
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `test`.`person` WRITE;
DELETE FROM `test`.`person`;
INSERT INTO `test`.`person` (`id`,`first_name`,`last_name`) VALUES (1, 'ikhsan', 'kurniawan'),(2, 'alados', 'ortado'),(4, 'kam', 'bo'),(5, 'kam', 'bo');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `test`.`thing` WRITE;
DELETE FROM `test`.`thing`;
INSERT INTO `test`.`thing` (`id`,`name_thing`) VALUES (1, 'apel'),(2, 'mangga');
UNLOCK TABLES;
COMMIT;
BEGIN;
LOCK TABLES `test`.`user` WRITE;
DELETE FROM `test`.`user`;
INSERT INTO `test`.`user` (`id`,`username`,`password`,`role`,`tanggal_daftar`,`email`) VALUES (12, 'ikhsan', '24d16f92cbfb5e813cff1f3d980b0ca13c23a066', 2, '2021-05-16', 'ikhsan@gmail.com');
UNLOCK TABLES;
COMMIT;
