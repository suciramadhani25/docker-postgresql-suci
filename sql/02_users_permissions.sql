-- Soal 4: Pengaturan hak akses pengguna
-- Jalankan sebagai pemilik database atau administrator PostgreSQL.

-- Memberikan akses ke schema salam
GRANT USAGE ON SCHEMA salam TO backend_dev;
GRANT USAGE ON SCHEMA salam TO bi_dev;
GRANT USAGE ON SCHEMA salam TO data_engineer;

-- Backend developer: CRUD pada tabel yang sudah ada
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA salam TO backend_dev;

-- BI developer: hanya membaca data
GRANT SELECT
ON ALL TABLES IN SCHEMA salam TO bi_dev;

-- Data engineer: mengelola objek dan data
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA salam TO data_engineer;

-- Hak akses sequence untuk operasi yang membutuhkannya
GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA salam TO backend_dev;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA salam TO data_engineer;
