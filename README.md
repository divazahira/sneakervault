# SneakerVault 👟

Aplikasi SneakerVault merupakan project Ujian Tengah Semester (UTS) untuk mata kuliah **Mobile Programming**. Aplikasi ini dibuat menggunakan Flutter dan berfungsi sebagai katalog sepatu sneakers dari beberapa merek, seperti Nike, Adidas, Puma, dan Vans.

## Deskripsi Aplikasi

SneakerVault dirancang untuk menampilkan informasi produk sepatu dengan tampilan yang sederhana dan mudah digunakan. Pengguna dapat melihat daftar sepatu, membuka detail produk, serta memilih ukuran sepatu yang tersedia.

Project ini menggunakan dummy data sebagai data produk.

## Fitur Aplikasi

- **Halaman Beranda** — Menampilkan daftar produk sepatu dalam bentuk grid dua kolom.
- **Detail Produk** — Menampilkan informasi produk, harga, rating, dan pilihan ukuran sepatu.
- **Pilihan Ukuran** — Pengguna dapat memilih ukuran sepatu yang tersedia.
- **Navigasi Halaman** — Berpindah antara halaman Beranda, Keranjang, dan Profil.
- **Tampilan Sederhana** — Menggunakan warna oranye sebagai warna utama aplikasi.

## Teknologi yang Digunakan

- Flutter
- Bahasa pemrograman Dart
- Material Design
- Widget Flutter, seperti `GridView.builder`, `Card`, `BottomNavigationBar`, dan `StatefulWidget`

## Struktur Project

```text
sneakervault-uts/
├── android/
├── assets/
├── lib/
├── models/
├── screens/
└── main.dart
├── test/
├── pubspec.yaml
└── README.md
```

*Catatan: Struktur folder dapat berbeda sesuai dengan isi project yang diunggah.*

## Cara Menjalankan Aplikasi

1. Pastikan Flutter SDK dan Android Studio atau VS Code sudah terpasang.
2. Clone repository ini ke komputer:

   ```bash
   git clone https://github.com/USERNAME/sneakervault-uts.git
   ```

3. Masuk ke folder project:

   ```bash
   cd sneakervault-uts
   ```

4. Unduh dependensi yang diperlukan:

   ```bash
   flutter pub get
   ```

5. Jalankan aplikasi pada emulator atau perangkat Android yang terhubung:

   ```bash
   flutter run
   ```

Ganti `USERNAME` pada perintah clone dengan username GitHub pemilik repository.

## Pengembang

**Nama:** Diva Zahira Aulia Salsabila  
**NIM:** 240605110204  
**Program Studi:** Teknik Informatika  
**Fakultas:** Sains dan Teknologi  
**Universitas:** UIN Maulana Malik Ibrahim Malang

## Tujuan Project

Project ini dibuat untuk menerapkan materi Mobile Programming, khususnya penggunaan widget Flutter, penyusunan layout, navigasi antarhalaman, dan pengelolaan state sederhana pada aplikasi mobile.

---

*Project Ujian Tengah Semester — Mobile Programming, 2026.*
