CREATE TABLE movies (
id INT PRIMARY KEY,
nombre VARCHAR(80),
genero VARCHAR(80)
);

CREATE TABLE ratings(
idUsuario INT,
idPelicula INT,
valoracion INT,
time_stamp BIGINT,
FOREIGN KEY (idUsuario) REFERENCES users(id),
FOREIGN KEY (idPelicula) REFERENCES movies(id)
);
