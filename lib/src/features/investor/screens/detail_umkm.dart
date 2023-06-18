import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../main.dart';
import '../../../constants.dart';
import '../../../currency_format.dart';

class DetailUmkm extends StatelessWidget {
  const DetailUmkm({Key? key}) : super(key: key);

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
