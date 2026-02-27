# Jasa Titip App

## Deskripsi Aplikasi

Jasa Titip App merupakan aplikasi mobile berbasis flutter yang digunakan untuk memfasilitasi layanan jasa titip (jastip) secara online. Aplikasi ini memungkinkan pengguna untuk menambahkan pesanan titipan, menghapus pesanan titipan, melihat daftar permintaan, memperbarui detail pesanan dengan mudah dan terorganisir.

## Struktur Project

```text
lib/
|- models/
|  |- items.dart
|  |- order.dart
|
|- page/
|  |- create.dart
|  |- dashboard.dart
|  |- update.dart
|
|- main.dart
```

## Fitur Aplikasi

1. Create
   
   Pengguna dapat menambahkan pesanan titipan dengan mengisi form input, yaitu nama barang, lokasi, nama pemesanan, harga.

3. Read
   
   Aplikasi menampilkan daftar seluruh permintaan barang yang telah dipesankan.

5. Update
   
   Pengguna dapat mengubah data pemesanannya, yaitu nama_barang, lokasi, nama pemesanan, harga.

7. Delete
   
   Pengguna dapat menghapus pesan titipan dari daftar.

9. Multi Page Navigation
    
   Aplikasi memiliki beberapa halaman:
   - Halaman Utama (Dashboard)
   - Halaman Tambah titipan
   - Halaman Update dan Detail pada pesanan titipan
  
## Widget yang Digunakan

- MaterialApp
- Scaffold
- AppBar
- ListView   
- TextField
- ElevatedButton
- FloatingActionButton
- Navigator
- ChangeNotifier
- Provider
- IconButton
- Card

## State Management

Aplikasi ini menggunakan Provider (ChangeNotifier) untuk mengelola data pesananan titipan pengguna.

## Simulasi Aplikasi 

<img width="1303" height="950" alt="image" src="https://github.com/user-attachments/assets/b4e0a56e-9f1c-468d-9bfc-759e0538e571" />

<img width="1296" height="944" alt="image" src="https://github.com/user-attachments/assets/f9ef34c1-ea27-42bd-850c-bc05c6ed905b" />

<img width="1294" height="949" alt="image" src="https://github.com/user-attachments/assets/cae2ff62-b972-4e22-affb-2bd13512e6ec" />

<img width="1304" height="1055" alt="image" src="https://github.com/user-attachments/assets/1fcfb326-4c87-48d0-af86-8cfa1ae1ec6c" />

<img width="1299" height="947" alt="image" src="https://github.com/user-attachments/assets/f87457bb-ab40-41d3-8e95-748f2e95e4d9" />

<img width="1311" height="951" alt="image" src="https://github.com/user-attachments/assets/e62b69c4-e050-4fdf-9a81-731fad9c249c" />


<img width="1300" height="949" alt="image" src="https://github.com/user-attachments/assets/caacaa62-490b-4981-8be0-d1e07c691985" />

<img width="1311" height="943" alt="image" src="https://github.com/user-attachments/assets/f2be3c61-1afe-46ab-aada-be8aedf1a56c" />

<img width="1303" height="942" alt="image" src="https://github.com/user-attachments/assets/0c9b0cd5-b4c4-4ac5-9f93-89a4e46b5fee" />




  

   
