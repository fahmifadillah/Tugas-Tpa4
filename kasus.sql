-- 1 pelanggan membeli 3 barang yang berbeda
SELECT P.nama_pelanggan, COUNT(DISTINCT T.id_barang) AS jumlah_barang
FROM Pelanggan P
JOIN Transaksi T ON P.id_pelanggan = T.id_pelanggan
GROUP BY P.nama_pelanggan
HAVING COUNT(DISTINCT T.id_barang) >= 3;

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan
SELECT B.nama_barang, COUNT(*) AS jumlah_pembelian
FROM Barang B
JOIN Transaksi T ON B.id_barang = T.id_barang
GROUP BY B.nama_barang
ORDER BY jumlah_pembelian DESC
LIMIT 3;

-- Melihat Kategori barang yang paling banyak barangnya
SELECT K.nama_kategori, COUNT(B.id_barang) AS jumlah_barang
FROM Kategori K
JOIN Barang B ON K.id_kategori = B.id_kategori
GROUP BY K.nama_kategori
ORDER BY jumlah_barang DESC
LIMIT 1;

-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir
SELECT P.nama_pelanggan, AVG(B.harga) AS rata_rata_transaksi
FROM Pelanggan P
JOIN Transaksi T ON P.id_pelanggan = T.id_pelanggan
JOIN Barang B ON T.id_barang = B.id_barang
WHERE T.tanggal_transaksi >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY P.nama_pelanggan;
