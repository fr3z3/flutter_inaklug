import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Times'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String currentPage0 = '←';
  String currentPage1 = '1';
  String currentPage2 = '2';
  String currentPage3 = '3';
  String currentPage4 = '4';
  String currentPage5 = '5';
  String currentPage6 = '6';
  String currentPage7 = '7';
  String currentPage8 = '8';
  String currentPage9 = '9';
  String currentPage10 = '10';
  String currentPage11 = '→';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.blue.withOpacity(0.95),
        elevation: 0,
        leading: Image.asset('image/inaklug.png', height: 30, width: 30),
        title: Row(
          children: [
            const Text(
              'Inaklug',
              style: TextStyle(
                fontSize: 23, // Sesuaikan dengan ukuran teks yang diinginkan
                fontWeight: FontWeight.bold, // Sesuaikan dengan gaya teks yang diinginkan
              ),
            ),
            Spacer(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(top: 0), // Menambahkan padding hanya di bagian atas
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Gambar atau konten di bagian kiri DrawerHeader
                  Image.asset('image/inaklug.png', height: 70, width: 70),
                  // Tombol close di bagian kanan DrawerHeader
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey, // Warna abu
                        shape: BoxShape.circle, // Bentuk bulat
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.white, // Warna ikon putih
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Tentang Kami'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Layanan Kami'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Artikel'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Hubungi Kami'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 75),
            ArticleWidget(
              title: 'ARTIKEL TERBARU',
              imageUrl: 'image/2.jpg',
              description: 'Benteng Cina adalah struktur pertahanan kuno yang dibangun di Tiongkok untuk melindungi wilayah dari serangan musuh. Benteng-benteng ini memiliki berbagai bentuk, ukuran, dan desain, tergantung pada periode sejarah dan tujuan pembangunannya.',
              uploadTime: 'selasa, 29 november 2023 12:30 WIB',
            ),
            ArticleWidget(
              title: '',
              imageUrl: 'image/3.jpg',
              description: 'Menara Eiffel adalah salah satu struktur paling ikonik di dunia dan menjadi simbol yang sangat dikenal dari Paris. Dibangun untuk Pameran Dunia 1889 (Exposition Universelle) yang diadakan untuk merayakan seratus tahun Revolusi Prancis, menara ini awalnya dimaksudkan sebagai struktur sementara.',
              uploadTime: 'selasa, 29 november 2023 12:30 WIB',
            ),
            ArticleWidget(
              title: '',
              imageUrl: 'image/4.jpg',
              description: ' Tokyo dikenal sebagai kota dengan teknologi canggih. Kehidupan sehari-hari di kota ini sering kali dicirikan oleh inovasi teknologi, mulai dari sistem transportasi hingga fasilitas publik yang modern.',
              uploadTime: 'selasa, 29 november 2023 12:30 WIB',
            ),
            ArticleWidget(
              title: '',
              imageUrl: 'image/5.jpg',
              description: 'Switzerland terkenal dengan keindahan alamnya. Pegunungan Alpen yang spektakuler, danau-lembah yang indah, dan padang rumput hijau menjadi ciri khas negara ini. Matterhorn, salah satu gunung paling terkenal di dunia, juga terletak di Swiss.',
              uploadTime: 'selasa, 29 november 2023 12:30 WIB',
            ),
            ArticleWidget(
              title: '',
              imageUrl: 'image/berlin.jpg',
              description: 'Kota ini menampilkan berbagai gaya arsitektur yang mencerminkan sejarahnya yang kompleks. Dari istana klasik hingga bangunan modern, Berlin menawarkan perpaduan yang menarik antara masa lalu dan masa kini.',
              uploadTime: 'selasa, 29 november 2023 12:30 WIB',
            ),

            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (String currentPage in [
                    '←',
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                  ])
                    Padding(
                      padding: EdgeInsets.only(right: currentPage == '5' ? 40.0 : 0.0), // Jarak kosong hanya di sebelah kanan nomor 5
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Tambahkan logika atau navigasi sesuai kebutuhan
                              print('Pressed $currentPage');
                            },
                            splashColor: Colors.blue.withOpacity(0.5),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '$currentPage',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  for (String currentPage in [
                    '6',
                    '7',
                    '8',
                    '9',
                    '10',
                    '→',
                  ])
                    Padding(
                      padding: EdgeInsets.only(right: 0.0), // Jarak kosong hanya di sebelah kanan nomor 5
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              // Tambahkan logika atau navigasi sesuai kebutuhan
                              print('Pressed $currentPage');
                            },
                            splashColor: Colors.blue.withOpacity(0.5),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '$currentPage',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),



            ContactInfoWidget(),
            ElevatedButton(
              onPressed: () {
                // Tambahkan fungsi untuk menangani tombol "Lokasi Kami"
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Sesuaikan ukuran tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Sesuaikan nilai sesuai keinginan Anda
                ),
              ),
              child: Text(
                'Lokasi Kami',
                style: TextStyle(fontSize: 18), // Sesuaikan ukuran teks
              ),
            ),
            SizedBox(height: 16), // Beri jarak antara tombol "Lokasi Kami" dan tombol "Kirim Pesan"

            ElevatedButton(
              onPressed: () {
                // Tambahkan fungsi untuk menangani tombol "Kirim Pesan"
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Sesuaikan ukuran tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Sesuaikan nilai sesuai keinginan Anda
                  side: BorderSide(color: Colors.blue), // Warna garis (border) tombol
                ),
                primary: Colors.white, // Warna latar belakang tombol
              ),
              child: Text(
                'Kirim Pesan',
                style: TextStyle(fontSize: 18, color: Colors.blue), // Sesuaikan ukuran dan warna teks
              ),
            ),
            Text(
              '© Hak Cipta 2023',
              style: TextStyle(color: Colors.white), // Warna teks putih
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Copyright 2022 - Inaklug Indonesia Hak Cipta dilindungi Undang-undang',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String uploadTime;

  ArticleWidget({
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.uploadTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8), // Jarak di pinggir kiri dan kanan
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8), // Jarak pada gambar
          child: Container(
            height: 200, // Ganti tinggi gambar sesuai keinginan
            width: double.infinity, // Lebar gambar mengambil lebar penuh
            child: Image.asset(imageUrl, fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Jarak pada deskripsi
          child: Container(
            width: MediaQuery.of(context).size.width, // Mengambil lebar penuh
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                description,
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Jarak pada waktu unggah
          child: Text(uploadTime, style: TextStyle(fontSize: 12)),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}


class ContactInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 200),
        Text(
          'Hubungi Kami',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 45, // Ganti ukuran font sesuai keinginan
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Kantor Pusat',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35, // Ganti ukuran font sesuai keinginan
          ),
        ),
        SizedBox(height: 8),
        Text(
          'MULA BY GALERIA JAKARTA, CILANDAK TOWN SQUARE, LT.BASEMENT.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18, // Ganti ukuran font sesuai keinginan
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Phone: 085822179786',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15, // Ganti ukuran font sesuai keinginan
          ),
        ),
        SizedBox(height: 10),
        // Tambahkan informasi kontak sesuai kebutuhan
      ],
    );
  }
}

