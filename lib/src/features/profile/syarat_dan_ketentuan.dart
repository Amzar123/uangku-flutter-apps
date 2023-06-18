import 'package:flutter/material.dart';
import 'update_profile_umkm.dart';

class SNK extends StatelessWidget {
  const SNK({super.key});

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
                    Text('Syarat dan Ketentuan Aplikasi TemanInvest', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text('(diperbaharui pada tanggal 11 Juni 2023)')
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('1. Pendaftaran Pengguna', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text(
                ''' 
a) Pengguna harus berusia minimal 18 tahun untuk menggunakan aplikasi TemanInvest.
b) Pengguna diharuskan menyediakan informasi pribadi yang akurat dan valid saat melakukan pendaftaran.
c) Pengguna bertanggung jawab penuh terhadap keamanan dan kerahasiaan akun mereka.
d) Pengguna tidak diperbolehkan menggunakan identitas palsu atau mengakses akun orang lain tanpa izin.
                '''
              ),
              Text('2. Pendaftaran Pengguna', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text(
                  ''' 
a) Untuk melengkapi pendaftaran, pengguna harus menyerahkan dokumen identitas yang valid sesuai dengan persyaratan yang ditetapkan oleh TemanInvest.
b) Pengguna harus memberikan informasi yang benar dan tidak boleh menyembunyikan atau mengubah data identitas mereka.
                '''
              ),
              SizedBox(height: 10),
              Text('3. Pengajuan Pinjaman', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text(
                  ''' 
a) Pengguna dapat mengajukan pinjaman melalui aplikasi TemanInvest dengan memenuhi persyaratan yang ditetapkan.
b) Informasi yang diberikan dalam pengajuan pinjaman harus akurat dan lengkap.
c) TemanInvest berhak melakukan verifikasi dan evaluasi kredit terhadap pengajuan pinjaman.
                '''
              ),
              SizedBox(height: 10),
              Text('4. Investasi', style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text(
                  ''' 
a) Pengguna dapat melakukan investasi melalui aplikasi TemanInvest dengan memilih proyek yang tersedia.
b) Pengguna diharuskan membaca dan memahami informasi proyek serta risiko yang terkait sebelum melakukan investasi.
c) Pengguna bertanggung jawab atas keputusan investasi yang diambil dan risiko yang mungkin terjadi.
                '''
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
