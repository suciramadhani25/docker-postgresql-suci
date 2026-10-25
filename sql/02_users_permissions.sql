```sql
-- Soal 4: Pengaturan hak akses pengguna
-- Jalankan sebagai pemilik database atau administrator PostgreSQL.

-- Memberikan akses ke schema salam
GRANT USAGE ON SCHEMA salam TO backend_dev;
GRANT USAGE ON SCHEMA salam TO bi_dev;
GRANT USAGE ON SCHEMA salam TO data_engineer;

-- backend_dev: hak CRUD pada tabel
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA salam TO backend_dev;

-- bi_dev: hanya membaca data
GRANT SELECT
ON ALL TABLES IN SCHEMA salam TO bi_dev;

-- data_engineer: hak CRUD pada tabel
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA salam TO data_engineer;

-- Hak akses sequence
GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA salam TO backend_dev;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA salam TO data_engineer;
```
