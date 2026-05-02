CREATE DATABASE universidad;
USE universidad;

CREATE TABLE alumnos (
    id INT PRIMARY KEY,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    carnet VARCHAR(20)
);

CREATE TABLE cursos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    codigo VARCHAR(20)
);

CREATE TABLE secciones (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    jornada VARCHAR(20)
);
CREATE TABLE alumno_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alumno_id INT,
    curso_id INT,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

CREATE TABLE alumno_seccion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    alumno_id INT,
    seccion_id INT,
    FOREIGN KEY (alumno_id) REFERENCES alumnos(id),
    FOREIGN KEY (seccion_id) REFERENCES secciones(id)
);
