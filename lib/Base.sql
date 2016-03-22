CREATE DATABASE practica_ingenieria;

\connect practica_ingenieria

CREATE TABLE usuario (
       id_usuario integer NOT NULL PRIMARY KEY,
       nombre character varying(250) NOT NULL,
       apellido_paterno character varying(250) NOT NULL,
       apellido_materno character varying(250),
       edad integer CHECK (edad >= 0)
       );

CREATE TABLE login (
       id_login integer NOT NULL PRIMARY KEY,
       email character varying(250) NOT NULL,
       password character varying(250) NOT NULL,
       CONSTRAINT must_be_different UNIQUE (email)
       );

CREATE TABLE usuario_login (
       id_login_usuario_login integer NOT NULL,
       id_usuario_usuario_login integer NOT NULL PRIMARY KEY,
       FOREIGN KEY (id_login_usuario_login) REFERENCES login(id_login),
       FOREIGN KEY (id_usuario_usuario_login) REFERENCES usuario(id_usuario));
