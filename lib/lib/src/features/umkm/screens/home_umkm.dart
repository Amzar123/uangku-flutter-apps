import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

class HomeUMKM extends StatelessWidget {
  const HomeUMKM({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Overview",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                "Pinjaman Saya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x68666363)),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pinjaman 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Rp.XX.XXX.XXX"),
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Dalam Proses',
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 24,
              ),
              Text(
                "Pengembalian Aktif",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                  margin: EdgeInsets.all(5),
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
                      SizedBox(height: 24),
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
                      SizedBox(height: 24),
                      Row(
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
                      SizedBox(
                        height: 24,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Ingatkan Saya"),
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: primaryColor)),
                      )
                    ],
                  )),
              SizedBox(height: 24),
              Text(
                "Riwayat Pengembalian",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                  margin: EdgeInsets.all(5),
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
                      Divider(color: Colors.grey, height: 24),
                      Row(
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
                      Divider(color: Colors.grey, height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Text("Lihat Semua",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, color: warnaKetiga)),
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
        style: TextStyle(
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
