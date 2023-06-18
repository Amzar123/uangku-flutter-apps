import 'package:apps/src/features/investor/screens/detail_pinjaman_screen.dart';
import 'package:apps/src/features/investor/screens/detail_umkm.dart';
import 'package:apps/src/features/investor/screens/list_umkm.dart';
import 'package:apps/src/features/investor/screens/riwayat_transaksi_screen.dart';
import 'package:apps/src/features/investor/screens/top_up.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../currency_format.dart';

class DashboardInvestorScreen extends StatefulWidget {
  const DashboardInvestorScreen({Key? key}) : super(key: key);

  @override
  State<DashboardInvestorScreen> createState() =>
      _DashboardInvestorScreenState();
}

class _DashboardInvestorScreenState extends State<DashboardInvestorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hi, Investor!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: const [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      spreadRadius: 1.5,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Dana Tersedia",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Rp 100.000.000",
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const Divider(color: Colors.grey),
                            const Text(
                              "Dana Dialokasikan",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Rp 58.000.000",
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 50),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => TopUpScreen(),
                                ),
                              );
                            },
                            child:
                                const Icon(Icons.payment, color: Colors.black),
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(25),
                              backgroundColor: primaryColor,
                              foregroundColor: warnaKeempat,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Top Up",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Pendanaan Aktif",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text("Anda sedang mendanai 0 UMKM"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ListUmkmScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      color: primaryColor,
                      child: Row(
                        children: [
                          const Text(
                            "Mulai Invest",
                            style: TextStyle(color: Colors.black),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(),
              Container(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildExpansionTile(
                      leadingIcon: Icons.trending_up,
                      title: 'Investasi Aktif',
                      children: [
                        _buildInvestasiAktifTile("Pinjaman 1", 3000000, () {
                          // Tambahkan aksi saat list tile ditekan
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPinjamanScreen(
                                      namaUMKM: "Amiw Cell",
                                      nominalPinjaman: 1000000,
                                      isSelesai: true,
                                    )),
                          );
                        }),
                        _buildInvestasiAktifTile("Pinjaman 2", 1500000,() {
                          // Tambahkan aksi saat list tile ditekan
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPinjamanScreen(
                                      namaUMKM: "Amiw Cell",
                                      nominalPinjaman: 1000000,
                                      isSelesai: false,
                                    )),
                          );
                        }),
                        _buildInvestasiAktifTile("Pinjaman 3", 1000000, () {
                          // Tambahkan aksi saat list tile ditekan
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DetailPinjamanScreen(
                                      namaUMKM: "Amiw Cell",
                                      nominalPinjaman: 1000000,
                                      isSelesai: true,
                                    )),
                          );
                        }),
                      ],
                    ),
                    _buildExpansionTile(
                      leadingIcon: Icons.attach_money,
                      title: 'Pengajuan Pinjaman',
                      children: [
                        _buildPengajuanPinjamanTile(
                            "Amiw Cell", 2000000, "30 Hari", () {
                          _navigateToDetailUmkm(context);
                        }),
                        _buildPengajuanPinjamanTile(
                            "Hans Laundry", 2500000, "30 Hari", () {
                          // Tambahkan aksi saat button ditekan
                          _navigateToDetailUmkm(context);
                        }),
                        _buildPengajuanPinjamanTile(
                            "Aijo Bengkel", 1000000, "30 Hari", () {
                          // Tambahkan aksi saat button ditekan
                          _navigateToDetailUmkm(context);
                        }),
                      ],
                    ),
                    _buildExpansionTile(
                      leadingIcon: Icons.history,
                      title: 'Riwayat Transaksi',
                      children: [
                        _buildRiwayatTransaksiTile("Investasi", "Amiw Cell",
                            2000000, "30 Maret 2023", Icons.north_east, () {
                          // Tambahkan aksi saat container ditekan
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailRiwayatTransaksiScreen(
                                category: 'Investasi',
                                title: 'UMKM XYZ',
                                amount: 2000000,
                                date: '30 Maret 2023',
                              ),
                            ),
                          );
                        }),
                        _buildRiwayatTransaksiTile("Top Up", "BCA", 5000000,
                            "30 Maret 2023", Icons.south_west, () {
                          // Tambahkan aksi saat container ditekan
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailRiwayatTransaksiScreen(
                                category: 'Top Up',
                                title: 'BCA',
                                amount: 5000000,
                                date: '30 Maret 2023',
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDetailUmkm(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailUmkm(),
      ),
    );
  }

  Widget _buildExpansionTile({
    required IconData leadingIcon,
    required String title,
    required List<Widget> children,
  }) {
    return ExpansionTile(
      leading: Icon(
        leadingIcon,
        color: warnaKetiga,
      ),
      title: Text(title),
      children: children,
    );
  }

  Widget _buildInvestasiAktifTile(
      String title, int amount,void Function() onPressed) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x68666363)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(CurrencyFormat.convertToIdr(amount, 0)),
            onTap: onPressed,
          ),
        ],
      ),
    );
  }

  Widget _buildPengajuanPinjamanTile(
      String title, int amount, String duration, void Function() onPressed) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x68666363)),
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle:
                Text("${CurrencyFormat.convertToIdr(amount, 0)} - $duration"),
            trailing: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: primaryColor,
              ),
              child: const Text(
                'Lihat Detail',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
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
}
