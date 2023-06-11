import 'package:apps/src/constants.dart';
import 'package:apps/src/currency_format.dart';
import 'package:apps/src/features/investor/screens/top_up.dart';
import 'package:flutter/material.dart';

class DashboardInvestorScreen extends StatefulWidget {
  const DashboardInvestorScreen({super.key});

  @override
  State<DashboardInvestorScreen> createState() =>
      _DashboardInvestorScreenState();
}

class _DashboardInvestorScreenState extends State<DashboardInvestorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi, Investor!",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      // border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          // offset: const Offset(
                          //   5.0,
                          //   5.0,
                          // ),
                          blurRadius: 1.0,
                          spreadRadius: 1.5,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  // color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        // ...
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Dana Tersedia",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Rp 100.000.000",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Divider(color: Colors.grey),
                              Text(
                                "Dana Dialokasikan",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Rp 58.000.000",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
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
                              child: Icon(Icons.payment, color: Colors.white),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(25),
                                backgroundColor:
                                    warnaKetiga, // <-- Button color
                                foregroundColor:
                                    warnaKeempat, // <-- Splash color
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Top Up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    )),
                  )),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pendanaan Aktif",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Anda sedang mendanai 0 UMKM"),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Go To ListUmkmScreen()
                    },
                    child: Container(
                      // width: 500.0,
                      padding: new EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      color: warnaKetiga,
                      child: Row(children: [
                        Text(
                          "Mulai Invest",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        )
                      ]),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Divider(),
                    ExpansionTile(
                      leading: Icon(
                        Icons.trending_up,
                        color: warnaKetiga,
                      ),
                      title: Text('Investasi Aktif'),
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x68666363)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text("Pinjaman 1"),
                                subtitle: Text(CurrencyFormat.convertToIdr(3000000, 0)),
                                trailing: Icon(
                                  Icons.done_all,
                                  color: warnaKetiga,
                                ),
                              ),
                              Divider(),
                              ListTile(
                                title: Text("Pinjaman 2"),
                                subtitle: Text(CurrencyFormat.convertToIdr(1500000, 0)),
                                trailing: Icon(
                                  Icons.loop,
                                  color: warnaKetiga,
                                ),
                              ),
                              Divider(),
                              ListTile(
                                title: Text("Pinjaman 3"),
                                subtitle: Text(CurrencyFormat.convertToIdr(1000000, 0)),
                                trailing: Icon(
                                  Icons.loop,
                                  color: warnaKetiga,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    ExpansionTile(
                      leading: Icon(
                        Icons.attach_money,
                        color: warnaKetiga,
                      ),
                      title: Text('Pengajuan Pinjaman'),
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x68666363)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                  title: Text("Amiw Cell"),
                                  subtitle: Text("${CurrencyFormat.convertToIdr(2000000, 0)}- 30 Hari"),
                                  trailing: OutlinedButton(
                                    onPressed: () {
                                      // Aksi yang akan dilakukan saat tombol ditekan
                                    },
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        backgroundColor: warnaKetiga),
                                    child: Text(
                                      'Lihat Detail',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                              Divider(),
                              ListTile(
                                  title: Text("Hans Laundry"),
                                  subtitle: Text("${CurrencyFormat.convertToIdr(2500000, 0)} - 30 Hari"),
                                  trailing: OutlinedButton(
                                    onPressed: () {
                                      // Aksi yang akan dilakukan saat tombol ditekan
                                    },
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        backgroundColor: warnaKetiga),
                                    child: Text(
                                      'Lihat Detail',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                              Divider(),
                              ListTile(
                                  title: Text("Aijo Bengkel"),
                                  subtitle: Text("${CurrencyFormat.convertToIdr(1000000, 0)} - 30 Hari"),
                                  trailing: OutlinedButton(
                                    onPressed: () {
                                      // Aksi yang akan dilakukan saat tombol ditekan
                                    },
                                    style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        backgroundColor: warnaKetiga),
                                    child: Text(
                                      'Lihat Detail',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    ExpansionTile(
                      leading: Icon(
                        Icons.attach_money,
                        color: warnaKetiga,
                      ),
                      title: Text('Riwayat Transaksi'),
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x68666363)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.north_east),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Investasi",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Amiw Cell"),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(CurrencyFormat.convertToIdr(2000000, 0),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("30 Maret 2023")
                                    ],
                                  )
                                ],
                              ),
                              Divider(color: Colors.grey, height: 24),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.south_west),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Top Up",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("BCA"),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(CurrencyFormat.convertToIdr(5000000, 0),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("30 Maret 2023")
                                    ],
                                  )
                                ],
                              ),
                              
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider()
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
