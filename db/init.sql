CREATE TABLE IF NOT EXISTS visitas (
  id SERIAL PRIMARY KEY,
  ip TEXT,
  momento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nombre TEXT NOT NULL
);
INSERT INTO usuarios (nombre) VALUES ('usuario1'), ('usuario2');
