import 'package:flutter/material.dart';
import 'update_profile_umkm.dart';

class kebijakanPrivasi extends StatelessWidget {
  const kebijakanPrivasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kembali",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Kebijakan dan Privasi Aplikasi TemanInvest',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('(berlaku sejak 11 Juni 2023)')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                '1. Pengumpulan informasi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('TemanInvest mengumpulkan informasi pribadi yang diberikan oleh pengguna saat mendaftar dan menggunakan layanan aplikasi. Informasi yang dikumpulkan dapat mencakup nama, alamat email, nomor telepon, dan informasi keuangan terkait.',
                textAlign: TextAlign.justify,
              ),
              Text(
                '2. Penggunaan Informasi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('Informasi yang dikumpulkan digunakan untuk mengelola akun pengguna, memproses transaksi, dan memberikan layanan yang sesuai. Informasi juga dapat digunakan untuk keperluan analisis, pengembangan produk, dan peningkatan layanan TemanInvest.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                '3. Kemanan Data',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('TemanInvest menjaga keamanan data pengguna dengan menerapkan langkah-langkah teknis dan organisasi yang sesuai. Namun, pengguna juga diharapkan mengambil langkah-langkah keamanan sendiri untuk melindungi akun dan informasi pribadi mereka.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                '4. Penyimpanan Data',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('Data pengguna akan disimpan selama diperlukan untuk menyediakan layanan TemanInvest dan sesuai dengan persyaratan hukum yang berlaku. Data yang tidak lagi diperlukan akan dihapus atau diubah menjadi bentuk yang tidak dapat diidentifikasi.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                '5. Berbagi Informasi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('TemanInvest dapat membagikan informasi pengguna dengan pihak ketiga yang terkait, seperti penyedia layanan pembayaran atau pihak yang terkait dengan proses verifikasi kredit. Namun, TemanInvest tidak akan menjual atau menyewakan informasi pribadi pengguna kepada pihak lain tanpa izin.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
