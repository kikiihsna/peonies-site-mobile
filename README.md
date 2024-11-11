# Peonies Site - Mobile
Welcome to Peonies Site, your one-stop shop for fresh, beautiful flowers!

## Daftar Tugas:
- **[Tugas 7](#tugas-7)**<br>
- **[Tugas 8](#tugas-8)**<br>


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

## Tugas 8

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Pada Flutter, `const` digunakan untuk membuat nilai konstan yang bersifat immutable atau tidak dapat diubah. Jika sebuah widget atau objek diberi kata kunci `const`, nilai tersebut dihitung satu kali saja pada saat kompilasi, sehingga efisiensi memori dan performa aplikasi meningkat.

**Keuntungan Menggunakan `const`**
- Efisiensi Memori: Objek `const` hanya dihitung satu kali pada saat kompilasi, sehingga mengurangi pemakaian memori dan mencegah pembentukan objek baru secara berulang.
- Performa Lebih Baik (cepat): Karena objek `const` tidak berubah, Flutter dapat langsung menggunakan objek ini tanpa harus merender ulang ketika UI diperbarui.
- Kode yang Lebih Jelas: Menandakan bahwa widget atau nilai tersebut tidak akan pernah berubah.

**Kapan Sebaiknya Menggunakan `const`**
Beberapa keadaan yang sebaiknya mengimplementasikan `const` ketika nilai objek atau widget tidak akan berubah (statis) seperti teks, ikon, padding, dan warna yang tidak akan berubah serta ketika user ingin meningkatkan performa aplikasi dengan menghindari rebuild yang tidak diperlukan. 

**Sebaliknya, Kapan Sebaiknya Menggunakan `const`?**
User perlu menghindari `const` ketika nilai objek atau widget berubah selama masa hidup aplikasi dan ketika user membutuhkan nilai yang tergantung dari input dinamis atau variabel yang mungkin berubah.

**Contoh Penggunaan**
```dart
const Padding(
  padding: EdgeInsets.all(8.0),
  child: Text(
    'Welcome to Peonies Site',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
    ),
  ),
);
```

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
`Column` adalah widget yang menyusun elemen anak-anaknya secara vertikal (dari atas ke bawah) pada sumbu `Y`. Cocok digunakan untuk layout vertikal seperti form, daftar item, atau elemen UI yang perlu ditumpuk secara vertikal.

**Contoh Implementasi Column**
```dart
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Text('Item Name: $_itemName'),
        Text('Desription: $_description'),
        Text('Price: $_price'),
        Text('Bouquet Type: $_bouquet'),
        Text('Wrap Color: $_wrapColor'),
    ],
)
```

Sedangkan `Row` adalah widget yang menyusun elemen anak-anaknya secara horizontal (dari kiri ke kanan) pada sumbu `X`. Ideal digunakan untuk layout horizontal seperti tombol-tombol, ikon, atau elemen UI yang ditempatkan sejajar.

**Contoh Implementasi Row**
```dart
Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        InfoCard(title: 'NPM', content: npm),
        InfoCard(title: 'Name', content: name),
        InfoCard(title: 'Class', content: className),
    ],
),
```
Namun, keduanya memiliki properti seperti `MainAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu utama dan `CrossAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu silang.

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Dalam pengerjaan tugas 8 ini, saya menggunakan beberapa elemen input Flutter, yaitu:
- **`TextFormField`**: Elemen input ini diimplementasikan untuk input teks seperti itemName, description, dan wrap color.
- **`DropdownButtonFormField`**: Elemen input ini hanya digunakan untuk input bouquet type yang pilihannya terdiri atas Single, Small, Medium, dan Big.

Ada beberapa elemen input Flutter lain yang tidak saya gunakan pada form data Peonies Site, yaitu:
- **Slider**: Digunakan untuk input angka dalam rentang tertentu, misalnya mengatur intensitas warna.
- **Checkbox**: Cocok untuk opsi ya/tidak.
- **Radio**: Digunakan untuk pilihan satu dari beberapa opsi.
- **Switch**: Mirip dengan Checkbox, tapi dalam bentuk switch yang bisa diaktifkan atau dinonaktifkan.
- **`DatePicker` dan `TimePicker`**: Untuk memilih tanggal dan waktu.

Dalam pemilihan elemen item Flutter sendiri itu cukup didasari dari kebutuhan form input data yang diinginkan dari pengguna.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk mengatur tema pada Flutter, saya menggunakan properti `theme` di dalam `MaterialApp`. Tema dapat diset secara global dan konsisten di seluruh aplikasi dengan mendefinisikan warna utama, warna latar belakang, serta gaya teks di `ThemeData`.

**Contoh Impelmentasi Theme**
```dart
MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.teal,
    ).copyWith(secondary: Colors.teal[100]),
    ),
    home: MyHomePage(),
);
```

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Pada Flutter, navigasi antar halaman dapat dilakukan dengan menggunakan `Navigator` dan `MaterialPageRoute`. `Navigator.push` digunakan untuk berpindah ke halaman baru, dan `Navigator.pop` untuk kembali ke halaman sebelumnya.

**Beberapa Implementasi Saya di Tugas 8**
1. Menggunakan `Navigator.pushReplacement()`
Method `pushReplacement()`menggantikan halaman yang sedang aktif dengan halaman baru tanpa menambahkan halaman lama ke dalam stack. Artinya, halaman lama akan dihapus dan digantikan oleh halaman baru, sehingga pengguna tidak dapat kembali ke halaman sebelumnya dengan menekan tombol back.

```dart
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => MyHomePage(),
    ));
```

2. Menggunakan `Navigator.push()`
Method `push()` digunakan untuk menambahkan sebuah route baru ke dalam stack yang dikelola oleh `Navigator`. Route yang ditambahkan akan berada di paling atas stack, sehingga halaman baru tersebut akan langsung ditampilkan kepada pengguna, sementara halaman sebelumnya tetap ada di bawahnya dalam stack.

```dart
Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const ProductEntryFormPage(),
    ),
);
```

3. Menggunakan `Navigator.pop()`
Method `pop()` digunakan untuk menghapus atau menghilangkan halaman yang sedang aktif (paling atas) dari stack yang dikelola oleh `Navigator`. Hal ini menyebabkan pengguna kembali ke halaman sebelumnya yang ada di bawahnya dalam stack.

```dart
onPressed: () {
    Navigator.pop(context);
    _formKey.currentState!.reset();
},
```