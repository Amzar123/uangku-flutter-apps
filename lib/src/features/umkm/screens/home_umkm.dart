import 'package:apps/main.dart';
import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:apps/src/features/umkm/screens/riwayat_transaksi_screen.dart';

import '../../../currency_format.dart';

class HomeUMKM extends StatelessWidget {
  const HomeUMKM({super.key});

  void _showSuccessAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Success'),
          content: Text('Pembayaran berhasil!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the alert dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Overview",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Pinjaman Saya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              BlocBuilder<InvestGetApplicationCubit,
                      List<InvestApplicationModel>>(
                  builder: (context, listInvestApplication) {
                context.read<InvestGetApplicationCubit>().fetchData();
                return ListView.builder(
                    itemCount: listInvestApplication.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var investApplication = listInvestApplication[index];
                      return Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0x68666363)),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pinjaman 1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Text("Rp.1.000.000"),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'Dalam Proses',
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ));
                    });
              }),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Pengembalian Aktif",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                  margin: const EdgeInsets.all(5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0x68666363)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text("Pinjaman 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text("Rp.1.000.000"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _stepCircle(0, warnaKeempat),
                          _stepLine(Colors.black45),
                          _stepCircle(1, Colors.grey.shade400),
                          _stepLine(Colors.grey.shade400),
                          _stepCircle(2, Colors.grey.shade400),
                        ],
                      ),
                      const SizedBox(height: 24),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jumlah Tagihan",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text(
                                "Batas Waktu",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Rp 100.000"),
                              Text("2 April 2023")
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Center(
                          child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Center(
                                child: Container(
                                  padding: EdgeInsets.all(8.0),
                                  width: 300.0,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Jumlah Tagihan:',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '100.000',
                                        style: TextStyle(
                                          fontSize: 30.0,
                                        ),
                                      ),
                                      SizedBox(height: 16.0),
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(
                                              context); // Close the modal
                                          _showSuccessAlert(
                                              context); // Show the success alert
                                        },
                                        child: Text('Bayar Sekarang'),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Text('Bayar'),
                      ))
                    ],
                  )),
              const SizedBox(height: 24),
              Container(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildExpansionTile(
                      title: 'Riwayat Transaksi',
                      children: [
                        _buildRiwayatTransaksiTile("Pengembalian", "Pinjaman 1",
                            100000, "30 Maret 2023", Icons.north_east, () {
                          // Tambahkan aksi saat container ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailRiwayatTransaksiScreen(
                                category: 'Pengembalian',
                                title: 'UMKM Amiw Cell',
                                amount: 100000,
                                date: '30 Maret 2023',
                              ),
                            ),
                          );
                        }),
                        _buildRiwayatTransaksiTile("Peminjaman", "John Doe",
                            1000000, "23 Maret 2023", Icons.south_west, () {
                          // Tambahkan aksi saat container ditekan
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailRiwayatTransaksiScreen(
                                category: 'Peminjaman',
                                title: 'John Doe',
                                amount: 1000000,
                                date: '25 Maret 2023',
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _stepCircle(int stepIndex, Color color) {
  return Container(
    width: 60,
    height: 60,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: Center(
      child: Text(
        '${stepIndex + 1}',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget _stepLine(Color color) {
  return Container(
    height: 2.0,
    width: 40.0,
    color: color,
  );
}

Widget _buildExpansionTile({
  required String title,
  required List<Widget> children,
}) {
  return ExpansionTile(
    title: Text(title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    children: children,
  );
}

Widget _buildRiwayatTransaksiTile(String category, String title, int amount,
    String date, IconData icon, void Function() onPressed) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(color: const Color(0x68666363)),
      color: const Color(0xffffffff),
      borderRadius: BorderRadius.circular(8),
    ),
    child: GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Icon(icon)),
              SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(title),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    CurrencyFormat.convertToIdr(amount, 0),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(date),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
