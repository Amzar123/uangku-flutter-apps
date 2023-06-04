import 'package:apps/src/constants.dart';
import 'package:apps/src/features/investor/screens/detail_umkm.dart';
import 'package:flutter/material.dart';

import '../../../currency_format.dart';

class ListUmkmScreen extends StatelessWidget {
  const ListUmkmScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
        title: Text(
          "UMKM",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListUmkm(
                  namaUsaha: "Amiw Cell",
                  jenisUmkm: "Elektronik",
                  jumlahPinjaman: 2000000,
                  imbalHasil: 20,
                  jangkaWaktu: 30),
              ListUmkm(
                  namaUsaha: "Aijo Bengkel",
                  jenisUmkm: "Reparasi",
                  jumlahPinjaman: 5000000,
                  imbalHasil: 10,
                  jangkaWaktu: 30),
              ListUmkm(
                  namaUsaha: "Raven PS",
                  jenisUmkm: "Rental",
                  jumlahPinjaman: 3000000,
                  imbalHasil: 15,
                  jangkaWaktu: 20),
              ListUmkm(
                  namaUsaha: "Monone Laundry",
                  jenisUmkm: "Laundry",
                  jumlahPinjaman: 2500000,
                  imbalHasil: 20,
                  jangkaWaktu: 30),
              ListUmkm(
                  namaUsaha: "Warteg Memeng",
                  jenisUmkm: "Makanan",
                  jumlahPinjaman: 1000000,
                  imbalHasil: 10,
                  jangkaWaktu: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class ListUmkm extends StatelessWidget {
  final String namaUsaha;
  final String jenisUmkm;
  final int jumlahPinjaman;
  final int imbalHasil;
  final int jangkaWaktu;
  // final String imagePathUmkm;
  const ListUmkm({
    Key? key,
    required this.namaUsaha,
    required this.jenisUmkm,
    required this.jumlahPinjaman,
    required this.imbalHasil,
    required this.jangkaWaktu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0x68666363)),
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[350],
                    child: Icon(Icons.person, size: 25, color: Colors.black45)),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(namaUsaha,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text(jenisUmkm),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const DetailUmkm(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                width: 500.0,
                padding: new EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.symmetric(vertical: 15),
                child: new Column(children: [
                  new Text(
                    "Detail UMKM",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jumlah Pinjaman",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(CurrencyFormat.convertToIdr(jumlahPinjaman, 0))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Imbal Hasil",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("${imbalHasil}%")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jangka Waktu",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("${jangkaWaktu} Hari")
              ],
            ),
          ],
        ));
  }
}
