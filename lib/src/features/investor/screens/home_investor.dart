import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

class DashboardInvestorScreen extends StatefulWidget {
  const DashboardInvestorScreen({super.key});

  @override
  State<DashboardInvestorScreen> createState() => _DashboardInvestorScreenState();
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
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                                    fontSize: 18, fontWeight: FontWeight.w500),
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
                              onPressed: () {},
                              child: Icon(Icons.money, color: Colors.black),
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(25),
                                backgroundColor:
                                    primaryColor, // <-- Button color
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
              Container(
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: warnaKetiga,
                      ),
                      title: Text('Investasi Aktif'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.person, color: warnaKetiga),
                      title: Text('Pengajuan Investor'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    ListTile(
                      leading: Icon(Icons.person, color: warnaKetiga),
                      title: Text('Riwayat Transaksi'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 500,
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
                        ),
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
                      child: Column(
                        children: [
                          Text("Anda sedang invest di 0 umkm".toUpperCase(), style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          // Text(
                          //   "0",
                          //   style: TextStyle(fontSize: 30),
                          // ),
                          // Text("Umkm".toUpperCase()),
                          GestureDetector(
                            onTap: () {
                              // Go To ListUmkmScreen()
                            },
                            child: Container(
                              // width: 500.0,
                              padding:
                                  new EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  margin: EdgeInsets.only(top: 20),
                              color: primaryColor,
                              child: new Column(children: [
                                new Text("Mulai Invest"),
                              ]),
                            ),
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
