
CREATE TABLE rak_buku (
  id_rak_buku VARCHAR(50) PRIMARY KEY,
  kapasitas INT
);

CREATE TABLE kategori (
  id_kategori VARCHAR(50) PRIMARY KEY,
  nama_kategori VARCHAR(100)
);
CREATE TABLE petugas (
  id_petugas VARCHAR(50) PRIMARY KEY,
  nama_petugas VARCHAR(100)
);
CREATE TABLE peminjam (
  id_peminjam VARCHAR(50) PRIMARY KEY,
  nama VARCHAR(100),
  alamat VARCHAR(255),
  no_hp VARCHAR(20)
);

CREATE TABLE buku (
  id_buku VARCHAR(50) PRIMARY KEY,
  judul VARCHAR(255),
  isbn VARCHAR(50),
  penulis VARCHAR(80),
  jumlah_hal int,
  sinopsis VARCHAR(255),
  tgl_rilis DATE,
  cetakan int,
  id_rak VARCHAR(50) REFERENCES rak_buku(id_rak_buku),
  id_kategori VARCHAR(50) REFERENCES kategori(id_kategori),
  id_petugas VARCHAR(50) REFERENCES petugas(id_petugas)
);

CREATE TABLE transaksi (
  id_transaksi VARCHAR(50) PRIMARY KEY,
  dikembalikan VARCHAR(50),
  tgl_peminjaman date,
  deadline DATE,
  id_peminjam VARCHAR(50) REFERENCES peminjam(id_peminjam),
  id_buku VARCHAR(50) REFERENCES buku(id_buku)
);
INSERT INTO rak_buku (id_rak_buku, kapasitas)
VALUES 
('R0001', 200),
('R0002', 200),
('R0003', 200),
('R0004', 240),
('R0005', 240),
('R0006', 240),
('R0007', 180),
('R0008', 180),
('R0009', 180),
('R0010', 180);
INSERT INTO kategori (id_kategori, nama_kategori)
VALUES
('K0001', 'Sastra'),
('K0002', 'Sejarah'),
('K0003', 'Sains'),
('K0004', 'Novel'),
('K0005', 'Horor'),
('K0006', 'Pemrograman'),
('K0007', 'Anak'),
('K0008', 'Detektif'),
('K0009', 'Pemgenbangan Diri'),
('K0010', 'Kamus');
INSERT INTO petugas (id_petugas, nama_petugas)
VALUES
('P0001', 'Budi'),
('P0002', 'Tomi'),
('P0003', 'John'),
('P0004', 'Putri'),
('P0005', 'Wandi'),
('P0006', 'Sutio'),
('P0007', 'Elsa'),
('P0008', 'Fani'),
('P0009', 'Yuni'),
('P0010', 'Sarah');
INSERT INTO peminjam (id_peminjam, nama, alamat, no_hp)
VALUES
('M0001', 'Khan', 'Jakarta Selatan', '089734573845'),
('M0002', 'Susi', 'Jakarta Barat', '082342342342'),
('M0003', 'Tono', 'Jakarta Utara', '083453453554'),
('M0004', 'Andre', 'Jakarta Pusat', '084634566453'),
('M0005', 'Sula', 'Jakarta Timur', '082345346464'),
('M0006', 'Huna', 'Depok', '083456567654'),
('M0007', 'Gani', 'Bekasi', '085745674576'),
('M0008', 'Thomas', 'Karawang', '082346534564'),
('M0009', 'Bira', 'Bogor', '083457246654'),
('M0010', 'Yenzi', 'tangerang', '082436834563');
INSERT INTO buku (id_buku,judul,isbn,penulis,jumlah_hal,sinopsis,tgl_rilis,cetakan,id_rak,id_kategori,id_petugas)
VALUES 
('B0001','Menulis Membaca Kehidupan','978-602-06-7382-0','Kristin Samah',144,'Di tengah zaman yang serba digital dan instan ini, manusia menghadapi paradoks: hidup lebih mudah sekaligus lebih sulit. Kita dimanjakan oleh kemudahan.','2023-11-08',12,'R0001','K0009','P0002'),
('B0002','Mapan di Umur Tiga Puluhan','978-602-06-7333-2','Kim Eun Joo',299,'Tidak banyak hal yang membutuhkan persiapan sempurna. Yang kita perlukan bukan keberanian untuk berhenti ragu dan segera bertindak.','2023-11-01',7,'R0003','K0009','P0005'),
('B0003','Bahagia Tanpa Tapi','978-602-06-7157-4','Jeong Moon Jeong',234,'Tak perlu sempurna untuk meraih kehidupan yang diidamkan. Bahagia tanpa tapi... mungkinkah? Hidup dengan standar tertentu sering menekan kita.','2023-07-05',8,'R0006','K0008','P0009'),
('B0004','Finding Sisu','978-602-06-2433-4','Katja Pantzar',294,'Apa rahasia orang Finlandia—warga dunia yang paling bahagia—untuk hidup sehat dan seimbang? Jawabannya adalah sisu: tekad tidak menyerah.','2023-03-22',11,'R0002','K0003','P0003'),
('B0005','Berani Tidak Disukai','978-602-06-6720-1','Ichiro Kishimi',344,'Berani Tidak Disukai mengungkap rahasia kekuatan terpendam untuk meraih kebahagiaan sejati. Buku ini sudah dibaca jutaan orang.','2023-01-25',21,'R0001','K0006','P0007'),
('B0006','No Hard Feelings','978-602-06-7299-1','Liz Fosslien',400,'Penuh ilustrasi dan contoh praktis untuk memanfaatkan emosi agar lebih kreatif, kolaboratif, dan produktif di dunia kerja.','2023-09-27',5,'R0003','K0008','P0007'),
('B0007','Tak Mungkin Membuat Semua Orang Senang','978-602-06-7263-2','Jeong Moon Jeong',222,'Dalam hidup, kita bertemu orang yang menyakiti dan mengguncang kepercayaan diri. Hubungan sering membutuhkan banyak usaha.','2023-09-16',9,'R0003','K0006','P0005'),
('B0008','Good Arguments','978-602-06-7206-9','Bo Seo',392,'Bo Seo, juara debat dunia dan pelatih Harvard, mengungkap rahasia komunikasi dan persuasi lewat pengalaman pribadinya.','2023-08-09',11,'R0001','K0002','P0003'),
('B0009','The Dignity of Writing','978-602-06-7142-0','Ki Ju Lee',194,'Tulisan juga mengandung martabat. Nilai dan kehormatannya tidak hanya dari panjangnya kalimat, tapi dari kedalaman maknanya.','2023-08-02',3,'R0004','K0003','P0008'),
('B0010','The Temperature of Language','978-602-06-5180-4','Ki Ju Lee',219,'Ucapan dan tulisan bisa merangkul kesedihan dan membawa kebahagiaan. Perbincangan ringan sering kali meringankan beban hidup.','2023-08-02',6,'R0003','K0002','P0010'),
('B0011','What Happened to You?','978-602-06-7153-6','Oprah Winfrey',390,'Pengalaman awal kita membentuk hidup. Buku ini memberi wawasan ilmiah dan emosional tentang pola perilaku dan trauma masa kecil.','2023-07-19',9,'R0004','K0009','P0004');

INSERT INTO transaksi (id_transaksi, dikembalikan, tgl_peminjaman, deadline, id_peminjam, id_buku)
VALUES
('T000001', 'Belum', '2025-06-12', '2025-06-17', 'M0002', 'B0011'),
('T000002', 'Belum', '2025-08-04', '2025-08-09', 'M0003', 'B0003'),
('T000003', 'Sudah', '2025-05-09', '2025-05-14', 'M0001', 'B0005'),
('T000004', 'Belum', '2025-06-14', '2025-04-19', 'M0004', 'B0006'),
('T000005', 'Sudah', '2025-03-08', '2025-03-13', 'M0006', 'B0004'),
('T000006', 'Sudah', '2025-05-02', '2025-05-02', 'M0010', 'B0009'),
('T000007', 'Belum', '2025-06-04', '2025-06-09', 'M0009', 'B0003'),
('T000006', 'Sudah', '2025-05-23', '2025-05-28', 'M0008', 'B0006'),
('T000008', 'Belum', '2025-07-30', '2025-08-04', 'M0005', 'B0002'),
('T000009', 'Belum', '2025-06-20', '2025-06-25', 'M0007', 'B0005'),
('T000010', 'Sudah', '2025-05-19', '2025-05-24', 'M0002', 'B0007');