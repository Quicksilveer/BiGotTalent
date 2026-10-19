-- Jalankan ini SEKALI jika database db_bigottalent sudah pernah dibuat sebelumnya
-- (phpMyAdmin -> db_bigottalent -> tab SQL -> Go)
USE db_bigottalent;

ALTER TABLE users MODIFY role ENUM('admin', 'siswa', 'juri') NOT NULL;

ALTER TABLE pendaftaran
    ADD COLUMN hasil VARCHAR(20) DEFAULT NULL,
    ADD COLUMN catatan_juri TEXT;

-- Akun Juri default
INSERT INTO users (username, password, role) VALUES ('juri', 'juri123', 'juri');
