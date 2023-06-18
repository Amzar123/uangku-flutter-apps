import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../main.dart';
import '../../../constants.dart';
import '../../../currency_format.dart';
import 'home_investor.dart';

class DetailUmkm extends StatefulWidget {
  const DetailUmkm({Key? key}) : super(key: key);

  @override
  State<DetailUmkm> createState() => _DetailUmkmState();
}

class _DetailUmkmState extends State<DetailUmkm> {
  double nominalAngka = 0.0;
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey[350],
                            child: Icon(Icons.person,
                                size: 25, color: Colors.black45)),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama Usaha",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text(
                              "Jenis UMKM",
                              style: TextStyle(fontSize: 12),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_pin,
                                  size: 12,
                                ),
                                Text(
                                  " Kecamatan, Kota, Provinsi",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Row(
                        children: [
                          Icon(Icons.star),
                          Text("A"),
                        ],
                      )),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            nominalAngka -= 100000;
                            if (nominalAngka < 0) {
                              nominalAngka = 0;
                            }
                          });
                        },
                      ),
                      Text(
                        CurrencyFormat.convertToIdr(nominalAngka, 0),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            nominalAngka += 100000;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        child: Text('Rp500rb'),
                        onPressed: () {
                          setState(() {
                            nominalAngka = 500000;
                          });
                        },
                      ),
                      ElevatedButton(
                        child: Text('Rp1jt'),
                        onPressed: () {
                          setState(() {
                            nominalAngka = 1000000;
                          });
                        },
                      ),
                      ElevatedButton(
                        child: Text('Rp2jt'),
                        onPressed: () {
                          setState(() {
                            nominalAngka = 2000000;
                          });
                        },
                      ),
                      ElevatedButton(
                        child: Text('Max'),
                        onPressed: () {
                          setState(() {
                            // Tentukan nilai maksimum sesuai kebutuhan aplikasi Anda
                            nominalAngka = 999999999;
                          });
                        },
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (nominalAngka == 0) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Investasi Gagal'),
                              content: Text(
                                  'Anda harus memasukkan nominal yang lebih dari 0.'),
                              actions: [
                                TextButton(
                                  child: Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Menutup AlertDialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Konfirmasi'),
                              content: Text(
                                  'Anda yakin ingin melakukan investasi sebesar ${CurrencyFormat.convertToIdr(nominalAngka, 0)}?'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Batal'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: Text('Ya'),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ConfirmationPage(
                                          nominalAngka: nominalAngka,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      width: 500.0,
                      padding: new EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: new Column(children: [
                        new Text(
                          "Invest Sekarang",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Investasi Berhasil'),
          content: Text(
              'Investasi sebesar ${CurrencyFormat.convertToIdr(nominalAngka, 0)} berhasil dilakukan.'),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const int imbalHasil = 3;
    const int tenor = 4;
    const String jenisAngsuran = "Mingguan";
    const int jumlahAngsuran = 100000;
    const int penghasilanPerbulan = 4000000;
    const String pekerjaan = "Petani";
    const String sektor = "Pertanian";
    const String akad = "?";

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[350],
                      child: const Icon(Icons.person,
                          size: 25, color: Colors.black45)),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama Usaha",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                      Text(
                        "Jenis UMKM",
                        style: TextStyle(fontSize: 12),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 12,
                          ),
                          Text(
                            " Kecamatan, Kota, Provinsi",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Expanded(
                    child: Row(
                  children: [
                    Icon(Icons.star),
                    Text("A"),
                  ],
                )),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0x68666363)),
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Plafon",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(CurrencyFormat.convertToIdr(5000000, 0)),
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        "Imbal Hasil",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("$imbalHasil%"),
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        "Tenor",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("$tenor Minggu"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow("Imbal Hasil", "$imbalHasil%"),
                  _buildInfoRow("Tenor", "$tenor Minggu"),
                  _buildInfoRow("Jenis Angsuran", jenisAngsuran),
                  _buildInfoRow("Jumlah Angsuran",
                      CurrencyFormat.convertToIdr(jumlahAngsuran, 0)),
                  _buildInfoRow("Penghasilan Perbulan",
                      CurrencyFormat.convertToIdr(penghasilanPerbulan, 0)),
                  _buildInfoRow("Pekerjaan", pekerjaan),
                  _buildInfoRow("Sektor", sektor),
                  _buildInfoRow("Akad", akad),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                context.read<InvestCubit>().invest(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                width: 500.0,
                padding: new EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: new Column(children: [
                  new Text(
                    "Invest disini",
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    );
  }
}

class ConfirmationPage extends StatelessWidget {
  final double nominalAngka;

  const ConfirmationPage({Key? key, required this.nominalAngka})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false); // Mencegah navigasi kembali
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Konfirmasi Investasi'),
          automaticallyImplyLeading:
              false, // Menghilangkan tombol back di AppBar
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                size: 100,
                color: Colors.green,
              ),
              SizedBox(height: 20),
              Text(
                'Investasi Berhasil!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Anda telah melakukan investasi sebesar',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                '${CurrencyFormat.convertToIdr(nominalAngka, 0)}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                child: Text('Kembali'),
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
