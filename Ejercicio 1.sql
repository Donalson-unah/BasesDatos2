use baseDatos2Ejercicio1;


CREATE TABLE Aerolinea(
codigo INTEGER PRIMARY KEY,
descuento INTEGER CHECK (descuento >= 10)
);

CREATE TABLE Boleto(
codigo INTEGER PRIMARY KEY,
no_vuelo INTEGER NOT NULL,
id_aerolinea INTEGER NOT NULL,
fecha_salida DATE NOT NULL,
destino varchar(20) NOT NULL

CHECK (destino ='México' OR destino ='Guatemala' OR destino ='Panamá'),
FOREIGN KEY (id_aerolinea) REFERENCES Aerolinea(codigo)
);

CREATE TABLE Hotel(
codigo INTEGER PRIMARY KEY,
nombre VARCHAR(20) NOT NULL,
direccion TEXT
);

CREATE TABLE Cliente(
identidad VARCHAR(13) PRIMARY KEY,
nombre VARCHAR(15) NOT NULL,
telefono INTEGER,
id_boleto INTEGER,

FOREIGN KEY (id_boleto) REFERENCES Boleto(codigo)
);

CREATE TABLE Reserva(
fechain DATE NOT NULL,
fechaout DATE NOT NULL,
cantidad_personas INTEGER NOT NULL DEFAULT '0',
id_hotel INTEGER NOT NULL,
dni_cliente VARCHAR(13) NOT NULL,

FOREIGN KEY (id_hotel) REFERENCES Hotel(codigo),
FOREIGN KEY (dni_cliente) REFERENCES Cliente(identidad)
);

