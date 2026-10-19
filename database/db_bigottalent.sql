-- Jalankan di phpMyAdmin (database: db_bigottalent) -> tab SQL -> Go
CREATE DATABASE IF NOT EXISTS db_bigottalent;
USE db_bigottalent;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role ENUM('admin', 'siswa', 'juri') NOT NULL
);

CREATE TABLE lomba (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_lomba VARCHAR(100) NOT NULL,
    deskripsi TEXT
);

CREATE TABLE pendaftaran (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    lomba_id INT NOT NULL,
    status VARCHAR(100) DEFAULT 'Dokumen dalam Tinjauan',
    hasil VARCHAR(20) DEFAULT NULL,  -- diisi juri: 'Lolos' / 'Tidak Lolos'
    catatan_juri TEXT                -- catatan / alasan dari juri
);

-- Masukkan akun Admin default
INSERT INTO users (username, password, role) VALUES ('admin', 'admin123', 'admin');
-- Masukkan contoh akun Siswa default
INSERT INTO users (username, password, role) VALUES ('budi', '123', 'siswa');
-- Masukkan contoh akun Juri default
INSERT INTO users (username, password, role) VALUES ('juri', 'juri123', 'juri');
-- Masukkan contoh data Lomba
INSERT INTO lomba (nama_lomba, deskripsi) VALUES ('Solo Vocal', 'Lomba menyanyi solo lagu pop/daerah');
INSERT INTO lomba (nama_lomba, deskripsi) VALUES ('Dance Modern', 'Lomba tari kreasi modern berkelompok');
