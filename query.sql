CREATE TABLE jurusan (
	kode_jurusan  text,
	nama_jurusan  text NOT NULL,
	PRIMARY KEY(kode_jurusan)
);
SELECT * FROM jurusan;

INSERT INTO jurusan(kode_jurusan, nama_jurusan) VALUES ('011', 'FISIKA'); 
INSERT INTO jurusan(kode_jurusan, nama_jurusan) VALUES ('012', 'BIOLOGI'); 
INSERT INTO jurusan(kode_jurusan, nama_jurusan) VALUES ('013', 'GEOGRAFI'); 
INSERT INTO jurusan(kode_jurusan, nama_jurusan) VALUES ('014', 'TEKNIK_NUKLIR');

CREATE TABLE mahasiswa (
	nim	text,
	first_name	text NOT NULL,
	last_name	text NOT NULL,
	addres text NOT NULL,
	kode_jurusan	text NOT NULL,
	PRIMARY KEY(nim)
);
SELECT * FROM mahasiswa;

INSERT INTO mahasiswa(nim, first_name, last_name, addres, kode_jurusan) VALUES ('01', 'Khusni', 'Jafar', 'Sukamara', '013'); 
INSERT INTO mahasiswa(nim, first_name, last_name, addres, kode_jurusan) VALUES ('02', 'Nidya', 'Wati', 'Malang', '012');
INSERT INTO mahasiswa(nim, first_name, last_name, addres, kode_jurusan) VALUES ('03', 'Tina', 'Hidayatul_Lastri', 'Sukamara', '011'); 
INSERT INTO mahasiswa(nim, first_name, last_name, addres, kode_jurusan) VALUES ('04', 'Dadang', 'Dharmawan', 'Semarang', '014');

CREATE TABLE dosen (
	id_dosen	text,
	first_name	text NOT NULL,
	last_name	text NOT NULL,
	PRIMARY KEY(id_dosen)
);
SELECT * FROM dosen;

INSERT INTO dosen(id_dosen, first_name, last_name) VALUES ('021', 'Stephen', 'Hawking');
INSERT INTO dosen(id_dosen, first_name, last_name) VALUES ('022', 'Albert', 'Einstein'); 
INSERT INTO dosen(id_dosen, first_name, last_name) VALUES ('023', 'Isaac', 'Newton');
INSERT INTO dosen(id_dosen, first_name, last_name) VALUES ('024', 'Nikola', 'Tesla');


CREATE TABLE mata_kuliah (
	kode_mata_kuliah	text,
	nama	text NOT NULL,
	sks	text NOT NULL,
	PRIMARY KEY(kode_mata_kuliah)
);
SELECT * FROM mata_kuliah;

INSERT INTO mata_kuliah(kode_mata_kuliah, nama, sks) VALUES ('GEO10111', 'Kartografi', '2');
INSERT INTO mata_kuliah(kode_mata_kuliah, nama, sks) VALUES ('SCBI601101', 'Genetika', '4');
INSERT INTO mata_kuliah(kode_mata_kuliah, nama, sks) VALUES ('FSK00311', 'Fisika_modern', '3');
INSERT INTO mata_kuliah(kode_mata_kuliah, nama, sks) VALUES ('TNF2305', 'Termodinamika', '3');


CREATE TABLE kontrak (
    id_kontrak INTEGER PRIMARY KEY AUTOINCREMENT,
	nim  text NOT NULL,
	id_dosen	text NOT NULL,
	kode_matkul	text NOT NULL,
    nilai text
);


