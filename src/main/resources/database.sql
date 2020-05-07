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

CREATE TABLE Campeonato (
id bigint(20) NOT NULL AUTO_INCREMENT,
ano bigint(20) NOT NULL,
PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO Campeonato (ano) VALUES(2019);

CREATE TABLE Campeonato_Time (
id bigint(20) NOT NULL AUTO_INCREMENT,
campeonato_id bigint(20) NOT NULL,
time_id bigint(20) NOT NULL,
PRIMARY KEY (id),
CONSTRAINT fk_ct_campeonato_id FOREIGN KEY (campeonato_id) REFERENCES Campeonato (id),
CONSTRAINT fk_ct_time_id FOREIGN KEY (time_id) REFERENCES Time (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Santos'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Flamengo'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Santos'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Palmeiras'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Corinthians'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'São Paulo'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Internacional'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Bahia'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Atlético Mineiro'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Athletico'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Botafogo'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Grêmio'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Ceará'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Fortaleza'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Goiás'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Vasco'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Cruzeiro'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Fluminense'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'CSA'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Chapecoense'));
INSERT INTO Campeonato_Time (campeonato_id,time_id) VALUES ((SELECT id FROM Campeonato LIMIT 1),(SELECT id FROM Time WHERE nome = 'Avaí'));