# Peonies Site - Mobile
Welcome to Peonies Site, your one-stop shop for fresh, beautiful flowers!

## Daftar Tugas:
- **[Tugas 7](#tugas-7)**<br>

## Tugas 7

### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak memiliki state atau kondisi yang berubah selama runtime. Maksudnya adalah, sekali widget itu dirender, widget tersebut tidak bisa memperbarui atau mengubah tampilannya sendiri tanpa dirender ulang oleh widget parent-nya. Contoh dari stateless widget yaitu `Text`, `Icon`, `Container`, etc.

Sedangkan, stateful widget adalah widget yang memiliki state yang dapat berubah seiring waktu. Widget ini bisa merender ulang dirinya sendiri saat state berubah, memungkinkan adanya interaksi yang dinamis. Contoh dari stateful widget yaitu `TextField` dan `Checkbox`.

**So, perbedaan utama antara keduanya**: Stateless widget bersifat statis dan tidak berubah, sementara stateful widget bersifat dinamis dan dapat diperbarui saat state-nya berubah.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Berikut widget yang diimplementasikan pada tugas 7 saya:
- **Scaffold**: Sebagai kerangka dasar aplikasi yang menyediakan struktur umum seperti AppBar, body, dan floating action button.
- **AppBar**: Menampilkan bar navigasi di bagian atas halaman beserta judul aplikasi.
- **Text**: Menampilkan teks pada layar.
- **Icon**: Menampilkan ikon sebagai representasi grafis.
- **Card**: Menampilkan konten dalam bentuk card (kotak), untuk menampilkan informasi secara terpisah.
- **GridView**: Digunakan untuk menampilkan item dalam format grid yang terstruktur.
- **Column**: Menyusun widget dalam susunan vertikal.
- **Row**: Menyusun widget dalam susunan horizontal.
- **InkWell**: Menambahkan interaksi "touch" dengan efek animasi saat ditekan.
- **Padding**: Menambahkan ruang di sekitar widget untuk pengaturan layout.
- **Container**: Membungkus widget dan memungkinkan pengaturan layout, warna, dan padding.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` adalah metode pada stateful widget yang digunakan untuk memberitahu framework bahwa state objek telah berubah, sehingga perlu merender ulang widget terkait. Dengan pemanggilan `setState()`, variabel atau data yang didefinisikan dalam state widget dapat di update, dan UI akan direfresh sesuai dengan perubahan tersebut.

**Variabel yang terdampak** adalah variabel yang berada dalam state (contohnya, variabel yang dideklarasikan di dalam kelas stateful widget dengan tipe `State<>`) akan terpengaruh dan diperbarui dengan `setState()`.

### 4. Jelaskan perbedaan antara const dengan final.
- **const**: Menentukan bahwa nilai variabel bersifat konstan dan diketahui saat proses kompilasi. Nilai ini tidak dapat diubah selama runtime dan harus diinisialisasi secara langsung.
- **final**: Menentukan bahwa variabel hanya dapat diinisialisasi sekali, tetapi nilainya dapat diatur saat runtime. Setelah diinisialisasi, nilainya tidak dapat diubah.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
1. **Pembuatan Proyek Flutter**: Dimulai dengan membuat proyek melalui perintah `flutter create peonies_site` dan `cd peonies_site` serta repositori baru peonies-site-mobile untuk proyek ini.

2. **Merapikan Struktur Proyek**: Dilanjut membuat file baru bernama `menu.dart` di direktori `lib`. Kemudian, memindahkan (cut) kode yang berisi class `MyHomePage` dan `State<MyHomePage>` dari `main.dart` ke `menu.dart`. 

3. **Mengatasi Error Import**: Setelah memindahkan class, muncul error as expected di `main.dart` karena `MyHomePage` tidak dikenali. So, saya menambahkan `import 'package:peonies_site/menu.dart';` di bagian atas file `main.dart`.

4. **Mengubah Tema Warna Aplikasi**: Saya membuka file `main.dart` dan mengubah bagian tema aplikasi menggunakan `ColorScheme.fromSwatch` agar warna tema sesuai dengan desain yang diinginkan.

5. **Mengubah Sifat Widget Menjadi Stateless**: Pada `menu.dart`, saya mengubah class `MyHomePage` dari stateful menjadi stateless. Saya menghapus atribut `final String title;`, konstruktor `MyHomePage({super.key, required this.title});`, serta class `State<MyHomePage>`. Saya menambahkan konstruktor `MyHomePage({super.key});` dan mengimplementasikan `Widget build()` di class tersebut.

6. **Membuat InfoCard dan ItemCard**: Saya menambahkan class `InfoCard` dan `ItemCard` di `menu.dart`. `InfoCard` menampilkan informasi seperti NPM, nama, dan kelas, sementara `ItemCard` berisi tombol dengan ikon dan teks. Saya juga menambahkan interaksi `onTap` pada `ItemCard` untuk menampilkan `SnackBar` saat tombol ditekan.

7. **Mengintegrasikan Widget di MyHomePage**: Di method `Widget build()` pada `MyHomePage`, saya menyusun `InfoCard` dalam `Row` dan menampilkan `ItemCard` menggunakan `GridView.count`.

8. **Mengecek Kode dengan Flutter Analyze**: Setelah semua langkah selesai, saya menjalankan `flutter analyze` untuk memastikan tidak ada error atau issue pada proyek.

9. **Penyesuaian Berkas Soal**: Sesuai dengan penugasan ini, saya menambahkan color item yang berbeda untuk setiap card icon, hal ini diperlukan penambahan parameter di class `ItemHomepage` yang didalamnya ditambahkan paramteter color supaya tidak ada missing parameter `ItemHomepage(this.name, this.icon, this.color);`. Terakhir saya juga ubah color di ItemCard menjadi `color: item.color,` supaya warna yang dikeluarkan itu dari item terkait bukan dari secondary yang ada di main.