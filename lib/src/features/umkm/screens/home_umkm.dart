import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

class HomeUMKM extends StatelessWidget {
  const HomeUMKM({super.key});
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pinjaman 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Rp.XX.XXX.XXX"),
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
                  )),
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
                              Text("Rp.XX.XXX.XXX"),
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
                              Text("Rp XXX.XXX"),
                              Text("05 April 2023")
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Ingatkan Saya"),
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: primaryColor)),
                      )
                    ],
                  )),
              const SizedBox(height: 24),
              const Text(
                "Riwayat Pengembalian",
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.north_east),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pengembalian 1",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("Peminjaman 1"),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("RpXXX.XXX",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("30 Maret 2023")
                            ],
                          )
                        ],
                      ),
                      const Divider(color: Colors.grey, height: 24),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.south_west),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Peminjaman 1",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("Nama Investor"),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("RpXXX.XXX",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text("30 Maret 2023")
                            ],
                          )
                        ],
                      ),
                      const Divider(color: Colors.grey, height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text("Lihat Semua",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: warnaKetiga)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
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
