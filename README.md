\# Project Docker PostgreSQL



\## Deskripsi

Project ini merupakan konfigurasi lingkungan database PostgreSQL menggunakan Docker Compose. Project digunakan untuk menjalankan layanan database dan menguji pengelolaan database, tabel, serta hak akses pengguna.



\## Teknologi

\- Docker Desktop

\- Docker Compose

\- PostgreSQL

\- DBeaver



\## Struktur Project

\- `docker-compose.yml`: konfigurasi layanan dan container.

\- `.gitignore`: mencegah file sensitif ikut diunggah.

\- `sql/`: tempat menyimpan script SQL.

\- `README.md`: dokumentasi project.

\- `.env`: konfigurasi environment lokal, tidak diunggah ke repository.



\## Cara Menjalankan

1\. Pastikan Docker Desktop sudah berjalan.

2\. Buka terminal pada folder project.

3\. Jalankan perintah berikut:



&#x20;  ```bash

&#x20;  docker compose up -d

&#x20;  ```



4\. Periksa status container melalui Docker Desktop.

5\. Hubungkan database PostgreSQL menggunakan DBeaver sesuai konfigurasi pada file environment lokal.



\## Pengujian Database

Pengujian dilakukan melalui DBeaver, meliputi pengelolaan tabel, operasi CRUD, serta pengujian hak akses pengguna PostgreSQL.



\## Keamanan

File `.env` tidak disertakan dalam repository karena dapat berisi informasi rahasia seperti password database. Gunakan konfigurasi environment lokal saat menjalankan project.

