# Peonies Site - Mobile
Welcome to Peonies Site, your one-stop shop for fresh, beautiful flowers!

## Daftar Tugas:
- **[Tugas 7](#tugas-7)**<br>
- **[Tugas 8](#tugas-8)**<br>
- **[Tugas 9](#tugas-9)**<br>



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

## Tugas 9
### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model diperlukan untuk mempermudah pengelolaan dan manipulasi data JSON yang diterima atau dikirimkan oleh aplikasi. Dengan menggunakan model kita bisa:
- **Memastikan Validasi Data**: Dengan adanya model, aplikasi bisa memverifikasi bahwa data JSON sesuai dengan struktur yang diharapkan, sehingga mengurangi potensi timbulnya error.
- **Konversi Otomatis**: Model dapat secara otomatis mengubah data JSON menjadi objek Dart (di Flutter) atau objek Python (di Django) untuk mempermudah pengolahan data.
- **Kemudahan Pengembangan**: Dengan model kita juga dapat mengakses properti data secara langsung daripada menggunakan indeks atau key manual.

**Apakah Akan Terjadi Error Jika Tidak Membuat Model?**
Jawabannya tidak selalu. Namun, tanpa membuat model, kita harus menangani parsing data JSON secara manual, karena possible rentan terhadap hal hal berikut:
- **Kesalahan Parsing**: Misalnya, jika key JSON berubah, maka aplikasi akan gagal memproses data.
- **Kesalahan Validasi**: Data yang tidak valid dapat diterima tanpa disadari, mengakibatkan error saat aplikasi mencoba menggunakannya.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Secara umum, library `http` digunakan untuk:
1. **Mengirim Permintaan HTTP**: Seperti `GET`, `POST`, `PUT`, dan `DELETE`.
2. **Mengelola Header dan Body**: Termasuk mengirim data JSON dan menerima respons dari server.
3. **Mendukung API Interaksi**: Mempermudah komunikasi antara Flutter dan Django.

Pada tugas 9 ini, library `http` membantu menghubungkan aplikasi Flutter dengan API Django, seperti untuk login, register, pengambilan produk, dan menambahkan data produk.

**Berikut beberapa implementasi yang saya lakukan**
1. GET (mengambil data produk yang ada di Django)
```dart
Future<List<ProductEntry>> fetchProduct(CookieRequest request) async {
    final response = await request.get('http://localhost:8000/json-by-user/');
    
    var data = response;
    
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }
```

2. POST (menambahkan produk baru ke server)
```dart
final response = await request.postJson(
  "http://localhost:8000/create-flutter/",
    jsonEncode(<String, String>{
        'name': _name,
        'price': _price.toString(),
        'description': _description,
        'bouquet_type': _bouquet,
        'wrap_color': _wrapColor,
    }),
);
```

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
`CookieRequest` adalah sebuah library untuk menangani sesi autentikasi di Flutter dengan cookie. Berikut fungsi utamanya:
1. **Menyimpan Status Login**: `CookieRequest` menyimpan cookie yang digunakan untuk autentikasi, memastikan pengguna tetap login meskipun aplikasi berpindah halaman.
2. **Mengelola Permintaan dengan Autentikasi**: Setiap permintaan yang membutuhkan otorisasi akan otomatis menggunakan cookie.
3. **Menghapus Cookie pada Logout**: Saat logout, cookie akan dihapus untuk memastikan keamanan sesi.

**Lalu, mengapa instance `CookieRequest` dibagikan ke seluruh komponen?**
`CookieRequest` perlu dibagikan agar setiap komponen aplikasi Flutter dapat mengakses status login pengguna dan mengirimkan cookie ke API Django. Dengan cara ini, autentikasi pengguna tetap konsisten di seluruh aplikasi.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Berikut setiap bagian dari mekanisme pengiriman data yang saya terapkan:
1. **Input Data**:
   - User memasukkan data melalui form di Flutter.
   - Form memvalidasi input (seperti nama produk, harga, etc).
2. **Pengiriman Data ke API**:
   - Data yang valid dikirim dalam format JSON menggunakan `http.post` atau `request.postJson`.
3. **Pemrosesan Data di Django**:
   - Django menerima data, memvalidasinya, dan menyimpannya ke database.
   - Django mengirim respons JSON ke Flutter (berhasil atau gagal).
4. **Menampilkan Data di Flutter**:
   - Flutter menerima respons dari Django.
   - Jika berhasil, data ditampilkan melalui widget yang sesuai.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Berikut setiap bagian dari mekanisme yang ada:
**Login**
1. **Input Data**: User memasukkan username dan password di Flutter.
2. **Pengiriman ke Django**:
   - Flutter mengirim data menggunakan `request.postJson`.
   - Django memeriksa username dan password, lalu membuat cookie jika valid.
3. **Respons ke Flutter**:
   - Django mengirimkan status login dan cookie.
   - `CookieRequest` menyimpan cookie tersebut.
4. **Navigasi**:
   - Jika login berhasil, user diarahkan ke main page.

### **Register**
1. **Input Data**: User memasukkan data akun baru di Flutter.
2. **Pengiriman ke Django**:
   - Data dikirim dalam format JSON menggunakan `request.postJson`.
   - Django memvalidasi data dan menyimpan akun baru ke database.
3. **Respons ke Flutter**:
   - Django mengirimkan status (berhasil atau gagal).
   - Flutter menampilkan pesan sesuai status.

### **Logout**
1. **Permintaan Logout**:
   - Flutter mengirim permintaan logout ke Django.
   - Django menghapus cookie dari sesi user.
2. **Penghapusan Cookie di Flutter**:
   - `CookieRequest` juga menghapus cookie lokal.
3. **Navigasi**:
   - User diarahkan kembali ke halaman login.

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
**Setup Django API**
1. Pertama saya menjalankan perintah `startapp authentication` dengan `python3 manage.py startapp authentication` dan menambahkan `authentication` ke `INSTALLED_APPS` yang ada di `settings.py`. 
2. Kemudian saya juga install library `django-cors-headers` dan menambahkannya ke `INSTALLED_APPS` dan `requirements`.
3. Lalu, pada views.py di app authentication yang baru dibuat tadi, saya menambahkan function untuk login, register, dan logout yang nantinya akan dipanggil pada program Flutter.
4. Tidak lupa untuk selalu update urls.py untuk menambahkan path menuju function-function terkait.
5. Untuk kebutuhan flutter tepatnya pada root Flutter, saya juga menginstall `package provider` dan `pbp_django_auth` yang sudah disediakan dan menyesuaikan widget-widget yang sudah ada sebelumnya.
implement login, register

Tahap setup intinya untuk mengintegrasikan django dengan flutter dan menambahkan fitur registrasi dan login di Flutter.

**Implementasi Login dan Register**
6. Dimulai dengan membuat file baru yaitu `login.dart` pada folder `screens`
7. Lalu menyesuaikan widget awal yang ditampilkan oleh Flutter pada main.dart yang awalnya seperti ini:
``` dart
return MaterialApp(
      ...
      home: MyHomePage(),
    );
```

diubah menjadi seperti ini

```dart
return MaterialApp(
      ...
      home: const LoginPage(),
    );
```

3. Untuk fitur register, kurang lebih mirip seperti login, pertama saya membuat `register.dart` dan menambahkan button untuk menghubungkan page register dan login

**Membuat Model Custom**
8. Pada tahap ini saya membuat model yang menyesuaikan dengan endpoint JSON ProductEntry website Django, tahap ini saya sepenuhnya mengimplementasikan tahapan tutorial, yaitu dengan memanfaatkan web Quicktype untuk membantu membuat model yang sesuai. 
9. Tahap 8 dilakukan dengan menjalankan aplikasi django, lalu mengambil data json didalamnya.
10. Kemudian hasil code yang didapat dari Quicktype saya paste pada `lib/models/product_entry.dart` di program Flutter

**Membuat Page List Product yang terdaftar**
11. Untuk menampilkan product yang terdapat di endpoint JSON, pertama saya membuat `list_productentry.dart` pada folder screens dan import package-package yang dibutuhkan
12. Sebagai catatan, pada page ini, masing-masing produk hanya menampilkan overview produk yaitu meliputi; nama, harga, dan description
13. Supaya dapat mengakses list produk (Collection Flower) ini dari side bar dan home page, saya juga menambahkan pilihan view collection pada `left_drawer.dart` (side bar) dan `product_card.dart` (home page)

**Membuat Page Product Detail**
14. Selanjutnya adalah membuat page untuk melihat detail dari setiap product yang ada (bukan lagi hanya name, price, dan description),
15. Pertama saya membuat `product_detail.dart` pada folder `screens`, page ini akan menampilkan semua atribut yang dimiliki oleh product peonies site dan button untuk kembali ke collection list.
16. Lalu saya sedikit mengubah bagian list collection agar card yang ditampilkan dapat diclick untuk mengarahkan ke page detail dengan menggunakan 
``` dart
builder: (context) => DetailItemPage
```

**Melakukan Filter pada Page Product List/Collection**
17. Untuk filter produk sesuai user yang sedang log in, saya menambahkan function `get_user_goods_json` pada views.py di aplikasi main Django dan melakukan routing di urls.py (json-by-user).
18. Dan untuk di Flutter tepatnya di `list_productsentry.dart` saya juga mengubah response menjadi 
```dart
final response = await request.get('http://localhost:8000/json-by-user/');, 
```
dengan ini product yang ditampilkan hanya product yang sesuai dengan user yang sedang log in.
