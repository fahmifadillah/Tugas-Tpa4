

-- Membuat tabel Pelanggan
CREATE TABLE Pelanggan (
  id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
  nama_pelanggan VARCHAR(50),
  alamat_pelanggan VARCHAR(100)
);

-- Mengisi data ke tabel Pelanggan
INSERT INTO Pelanggan (nama_pelanggan, alamat_pelanggan)
VALUES
  ('Fahmi', 'Jl. Akses Ui No. 123'),
  ('Fadell', 'Jl. Akses Ui No. 456'),
  ('Farino', 'Jl. Akses Ui No. 789');

-- Mengambil data dari tabel Pelanggan
SELECT * FROM Pelanggan;


-- Membuat tabel Kategori
CREATE TABLE Kategori (
  id_kategori INT PRIMARY KEY,
  nama_kategori VARCHAR(50)
);

-- Mengisi data ke tabel Kategori
INSERT INTO Kategori (id_kategori, nama_kategori)
VALUES
  (1, 'Elektronik'),
  (2, 'Pakaian'),
  (3, 'Olahraga');
  -- Mengambil data dari tabel Barang
SELECT * FROM Kategori;

-- Membuat tabel Barang
CREATE TABLE Barang (
  id_barang INT PRIMARY KEY,
  nama_barang VARCHAR(50),
  harga DECIMAL(10,2),
  id_kategori INT,
  FOREIGN KEY (id_kategori) REFERENCES Kategori(id_kategori)
);
-- Mengisi data ke tabel Barang
INSERT INTO Barang (id_barang, nama_barang, harga, id_kategori)
VALUES
  (1, 'Laptop', 5000000, 1),
  (2, 'T-Shirt', 200000, 2),
  (3, 'Running Shoes', 800000, 3),
  (4, 'Smartphone', 3000000, 1),
  (5, 'Jeans', 250000, 2),
  (6, 'Basketball', 150000, 3),
  (7, 'Headphones', 500000, 1),
  (8, 'Dress', 350000, 2),
  (9, 'Yoga Mat', 100000, 3),
  (10, 'Gaming Console', 4000000, 1);

  -- Mengambil data dari tabel Barang
SELECT * FROM Barang;

-- Membuat tabel Transaksi
CREATE TABLE Transaksi (
  id_transaksi INT PRIMARY KEY,
  id_pelanggan INT,
  id_barang INT,
  tanggal_transaksi DATE,
  FOREIGN KEY (id_pelanggan) REFERENCES Pelanggan(id_pelanggan),
  FOREIGN KEY (id_barang) REFERENCES Barang(id_barang)
);

-- Mengisi data ke tabel Transaksi
INSERT INTO Transaksi (id_transaksi, id_pelanggan, id_barang, tanggal_transaksi)
VALUES
  (1, 1, 1, '2023-05-01'),
  (2, 1, 2, '2023-05-02'),
  (3, 1, 3, '2023-05-03'),
  (4, 2, 4, '2023-05-04'),
  (5, 2, 5, '2023-05-05'),
  (6, 2, 6, '2023-05-06'),
  (7, 3, 7, '2023-05-07'),
  (8, 3, 8, '2023-05-08'),
  (9, 3, 9, '2023-05-09'),
  (10, 3, 10, '2023-05-10');

  -- Mengambil data dari tabel Transaksi
  SELECT * FROM Transaksi;