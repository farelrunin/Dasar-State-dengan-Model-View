### Nama    : Farel Indra Syahputra 
## Nim      : 362358302171
# Kelas     : 2D

# Tugas Praktikum 1: Dasar State dengan Model-View

# soal
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil
akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada
yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan
demikian?
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat
konstanta ?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah
Anda buat!
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke
spreadsheet yang telah disediakan!

# hasil :

1 hasil pratikum dokumentasi
 
 ![screenshoot praktikum_model_view](/assets/images/hasil.png)

2 Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan
demikian?

    Langkah 4 (Pembuatan data_layer.dart): Pada langkah ini, kita membuat file data_layer.dart untuk mengimpor task.dart dan plan.dart dalam satu file. Dengan mengekspor file-file model di satu tempat, kita dapat mengakses model Task dan Plan dengan satu baris impor, yaitu import '../models/data_layer.dart';.

    Alasan: Hal ini bertujuan untuk memudahkan pengelolaan impor di berbagai bagian aplikasi, terutama ketika jumlah model bertambah banyak. Dengan cara ini, struktur kode menjadi lebih rapi dan lebih mudah untuk diatur dan dipelihara.

3 Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat
konstanta ?

    Alasan Dibuatnya Variabel plan sebagai Konstanta pada Langkah 6
    Langkah 6 (Deklarasi Variabel plan): Pada langkah ini, kita mendeklarasikan variabel plan dengan nilai awal sebagai konstanta Plan(). Ini dilakukan karena kita ingin plan memiliki nilai default untuk menghindari error jika aplikasi diakses tanpa data awal.

    Mengapa Konstanta?

    Menandai plan sebagai konstanta (const Plan()) di awal deklarasinya memungkinkan kita memberikan nilai default yang tidak berubah sepanjang hidup aplikasi.
    Dengan menjadikannya konstanta, kita memastikan bahwa nilai awal Plan tidak mengalami perubahan yang tidak diinginkan sampai user melakukan aksi seperti menambah tugas baru atau mengedit data yang ada.

4 Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah
Anda buat!

![Sreenshoot](/assets/images/image4.png) 

dari langkah 9 yang di tambahkan 

    Widget Dinamis dengan ListView.builder: Anda menambahkan kode untuk membuat tampilan daftar (ListTile) secara dinamis dengan menggunakan ListView.builder. Setiap Task dalam plan.tasks akan di-render sebagai item dalam ListView. Ini memungkinkan Anda menambahkan atau menghapus item secara dinamis, sehingga setiap kali ada perubahan, UI akan menyesuaikan diri tanpa perlu perubahan tambahan pada struktur kode.

    Fitur Scroll: Secara otomatis, penggunaan ListView.builder akan mengaktifkan fitur scroll apabila jumlah Task melebihi ruang yang tersedia pada layar. Ini memungkinkan pengguna menggulir tampilan untuk melihat seluruh daftar Task.

    Checkbox dan TextFormField: Pada setiap ListTile, terdapat checkbox untuk menandai Task sebagai selesai atau belum selesai (complete), serta TextFormField yang memungkinkan pengubahan deskripsi Task secara langsung. Perubahan ini akan disimpan dan tampil secara real-time pada UI melalui setState, yang memperbarui variabel plan setiap kali ada perubahan.

5  Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

    nitState(): Digunakan untuk inisialisasi data atau objek yang memerlukan konteks dan interaksi dengan widget sebelum ditampilkan, seperti menambahkan listener pada ScrollController.

    dispose(): Dipakai untuk membersihkan sumber daya yang telah digunakan oleh widget sebelum widget dihapus atau tidak digunakan lagi, seperti memanggil dispose() pada ScrollController untuk mencegah memory leaks.

## Praktikum 2: Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier

## soal
1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil
akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada
yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan
aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa
yang digunakan InheritedNotifier?
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa
dilakukan demikian?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah
Anda buat!
5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke
spreadsheet yang telah disediakan!

## jawab

1 Dokumentasi

2 Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa
yang digunakan InheritedNotifier?

    InheritedWidget adalah kelas yang memungkinkan kita untuk membagikan data ke widget lain dalam tree tanpa harus melewatkannya secara eksplisit melalui konstruktor. Namun, InheritedWidget tidak memberi tahu widget anak ketika data berubah.

    Karena itu, saya menggunakan InheritedNotifier di sini. InheritedNotifier adalah subclass dari InheritedWidget yang mendukung notifier seperti ValueNotifier. Ini memungkinkan widget anak untuk tidak hanya mendapatkan data, tetapi juga menerima pemberitahuan dan melakukan pembaruan UI secara otomatis ketika data tersebut berubah. Jadi, dengan InheritedNotifier, perubahan pada objek Plan akan memicu pembaruan pada widget yang bergantung padanya. 

3 Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa
dilakukan demikian?

    completedCount: Menghitung jumlah tugas yang selesai.

    completenessMessage: Memberikan pesan yang menunjukkan progres tugas, dengan jumlah tugas yang selesai dan total tugas.

    Kedua metode ini bertujuan untuk memberikan informasi terkait progres dan status tugas dalam Plan, membantu pengguna melacak dan memahami sejauh mana mereka telah menyelesaikan tugas yang ada.
4. Lakukan capture hasil dari method dari langkah 9 berupa GIF, kemudian jelaskan apa yang telah anda buat!

    Menambahkan SafeArea: Widget SafeArea ditambahkan di bawah widget _buildList(plan) dalam Column. Fungsi utama dari SafeArea adalah memastikan bahwa widget di dalamnya tidak tumpang tindih dengan area yang tidak dapat diakses, seperti bagian bawah layar yang digunakan oleh tombol sistem (misalnya, Home, Back, atau navigasi lainnya). Dengan menempatkan Text(plan.completenessMessage) di dalam SafeArea, Anda memastikan bahwa pesan progres tugas tetap terlihat dengan baik meskipun berada di area bawah layar.

    Menampilkan completenessMessage: Di dalam SafeArea, Anda menampilkan pesan yang memberikan informasi progres tugas, yang dihitung menggunakan metode completenessMessage. Pesan ini akan memperlihatkan jumlah tugas yang telah selesai dan jumlah total tugas, misalnya, "3 out of 5 tasks".

![Sreenshoot](/assets/images/image9.png) 

## Praktikum 3: Membuat State di Multiple Screens

# soal

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!
3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
4. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!





