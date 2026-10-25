-- Soal 3: Membuat schema dan tabel mahasiswa
-- Jalankan pada database PostgreSQL untuk UTS

CREATE SCHEMA IF NOT EXISTS salam;

CREATE TABLE IF NOT EXISTS salam.mahasiswas (
    nim VARCHAR(20) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    umur INT NOT NULL CHECK (umur >= 17),
    ipk NUMERIC(3,2) NOT NULL CHECK (ipk >= 0 AND ipk <= 4.00)
);
