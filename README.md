# Jasa titip App

# Deskripsi Aplikasi
Jasa titop App adalah aplikasi mobile berbasis Flutter yang digunakan memfasilitasi jasa titip (jastip) secara Online. Aplikasi ini memungkinkan pengguna untuk menambahkan pesanan titipan, melihat daftar permintaan, memperbarui detail pesanan, serta menghapus pemesanan titipan dengan mudah dan terorganisir.

## Struktur Project

```text
lib/t
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
   Pengguna dapat menambahkan pesananan titipan dengan mengisi form input.

2. Read 
   Aplikasi menampilkan daftar pemesanan titipan yang telah dimasukkan.

3. Update (Edit Data)
   Pengguna dapat mengubah data pemesanan titipan seperti nama barang, lokasi, nama pemesan.

4. Delete (Hapus Data)
   Pengguna dapat menghapus data pemesanan titipan.

5. Multi Page Navigation
   Aplikasi memiliki beberapa halaman:
   - Halaman Utama (Dashboard)
   - Halaman Tambah pesanan titipan
   - Halaman Update pesanan titipan
  
## Widget yang Digunakan

- MaterialApp
- Scaffold
- AppBar
- ListView
- TextField
- ElevatedButton
- FloatingActionButton
- Navigator
- Card
- ChangeNotifier
- Provider

## State Management

Aplikasi ini menggunakan Provider (ChangeNotifier) untuk mengelola data pesanan titipan.

## Simulasi Aplikasi 
### Dashboard 

<img width="1303" height="950" alt="Screenshot 2026-02-27 174737" src="https://github.com/user-attachments/assets/82b79365-285d-4ad9-939d-882e10632b15" />

Dashboard utama aplikasi, menampilkan daftar pesanan titipan dan tombol untuk membuat pesanan titipan. Pada digambar diatas tidak ada daftar pesanan karena memang belum ada pesanan

### Halaman Form

<img width="1296" height="944" alt="Screenshot 2026-02-27 174757" src="https://github.com/user-attachments/assets/5a03cd37-45c2-4e2a-96bd-aac687ce73cb" />

Ketika pengguna ingin menambahkan pesannan tinggal klik tombol dengan simbol + akan diarahkan ke halaman form. Pengguna mengisi form nama barang, lokasi, nama pemesan dan harga. Jika sudah mengisi, tinggal submit/simpan dan otomatis ada di daftar pesanan titipan.

<img width="1294" height="949" alt="Screenshot 2026-02-27 174845" src="https://github.com/user-attachments/assets/e12c1fdc-1c72-4ebe-b141-64d7b42a08b8" />

Jika pengguna tidak mengisi form, maka sebagai berikut

<img width="1302" height="1011" alt="Screenshot 2026-02-27 181207" src="https://github.com/user-attachments/assets/f4de98dc-ef46-4ef5-aaaf-91c4e5493191" />

### Daftar Pesanan titipan

<img width="1304" height="1055" alt="Screenshot 2026-02-27 174856" src="https://github.com/user-attachments/assets/6cbee9fa-72df-4ceb-a2b5-7a17ee308e13" />

Ketika sudah mengisi form, akan otomatis masuk ke daftar pesanan titipan pada dashboard.

### Update 

<img width="1299" height="947" alt="Screenshot 2026-02-27 174908" src="https://github.com/user-attachments/assets/c2072223-599c-4226-b901-d6a168f05301" />

Jika pengguna ingin mengupdate, akan ada form untuk mengupdate seperti nama barang, lokasi, nama pemesanan dan harga.

Sebelum diupdate
<img width="1299" height="947" alt="Screenshot 2026-02-27 174908" src="https://github.com/user-attachments/assets/1fc7dfb1-8e9e-4eba-894b-919215ce97b9" />

Setelah diupdate
<img width="1311" height="951" alt="Screenshot 2026-02-27 175027" src="https://github.com/user-attachments/assets/01770894-cbc6-4859-9595-31c941c01aa0" />

Jika diliat gambar di atas, pengguna mengupdate nama barang dan harga.

### Hapus 

<img width="1300" height="949" alt="Screenshot 2026-02-27 175042" src="https://github.com/user-attachments/assets/c5d896da-bab8-4288-af4e-0e99234f7828" />

jika pengguna ingin menghapus, tinggal mengklik tombol dengan icon sampah dan otomatis akan hapus dari daftar pesanan titipan

Sebelum dihapus,
<img width="1311" height="943" alt="Screenshot 2026-02-27 175055" src="https://github.com/user-attachments/assets/935985c5-df62-485c-8207-cbbe00e5c501" />

Setelah dihapus.
<img width="1303" height="942" alt="Screenshot 2026-02-27 175111" src="https://github.com/user-attachments/assets/a9e91e66-18cc-4db5-a8cd-f8e3a6fcbe23" />


