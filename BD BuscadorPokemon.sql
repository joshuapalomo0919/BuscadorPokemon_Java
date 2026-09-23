
CREATE DATABASE pokedex_db;
USE pokedex_db;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100),
    tipo_documento VARCHAR(10),
    documento VARCHAR(20),
    correo VARCHAR(100) UNIQUE,
    pass VARCHAR(100),
    fecha_registro DATE
);

CREATE TABLE Mochila (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pokemon_id INT,
    nombre VARCHAR(100),
    imagen VARCHAR(200),
    tipo VARCHAR(50),
    experiencia_base INT,
    es_favorito BOOLEAN DEFAULT FALSE,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE usuario;
SET FOREIGN_KEY_CHECKS = 1;
