CREATE DATABASE catalogo_pokemons

CREATE TABLE usuarios (
    id serial PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE pokemons (
    id serial PRIMARY KEY,
    usuario_id INT NOT NULL REFERENCES usuarios (id),
    nome VARCHAR(255) NOT NULL,
    habilidades TEXT NOT NULL,
    imagem VARCHAR(255),
    apelido VARCHAR(255),
);
