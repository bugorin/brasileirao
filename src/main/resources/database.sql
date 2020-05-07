DROP DATABASE IF EXISTS brasileirao;
CREATE DATABASE brasileirao;
USE brasileirao;

CREATE TABLE Time (
id bigint(20) NOT NULL AUTO_INCREMENT,
nome varchar(255) NOT NULL,
estado varchar(255) NOT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO Time (nome, estado) VALUES('Santos','SAOPAULO');
INSERT INTO Time (nome, estado) VALUES('Palmeiras','SAOPAULO');
INSERT INTO Time (nome, estado) VALUES('Corinthians','SAOPAULO');
INSERT INTO Time (nome, estado) VALUES('São Paulo','SAOPAULO');
INSERT INTO Time (nome, estado) VALUES('Flamengo','RIODEJANEIRO');
INSERT INTO Time (nome, estado) VALUES('Botafogo','RIODEJANEIRO');
INSERT INTO Time (nome, estado) VALUES('Vasco','RIODEJANEIRO');
INSERT INTO Time (nome, estado) VALUES('Fluminense','RIODEJANEIRO');
INSERT INTO Time (nome, estado) VALUES('Grêmio','RIOGRANDEDOSUL');
INSERT INTO Time (nome, estado) VALUES('Internacional','RIOGRANDEDOSUL');
INSERT INTO Time (nome, estado) VALUES('Bahia','BAHIA');
INSERT INTO Time (nome, estado) VALUES('Chapecoense','SANTACATARINA');
INSERT INTO Time (nome, estado) VALUES('Cruzeiro','MINASGERAIS');
INSERT INTO Time (nome, estado) VALUES('Atlético Mineiro','MINASGERAIS');
INSERT INTO Time (nome, estado) VALUES('Ceará','CEARA');
INSERT INTO Time (nome, estado) VALUES('Fortaleza','CEARA');
INSERT INTO Time (nome, estado) VALUES('Goiás','GOIAS');
INSERT INTO Time (nome, estado) VALUES('Avaí','SANTACATARINA');
INSERT INTO Time (nome, estado) VALUES('Athletico','PARANA');
INSERT INTO Time (nome, estado) VALUES('CSA','ALAGOAS');
