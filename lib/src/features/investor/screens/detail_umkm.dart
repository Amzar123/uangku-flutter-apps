import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

class DetailUmkm extends StatefulWidget {
  const DetailUmkm({super.key});

  @override
  State<DetailUmkm> createState() => _DetailUmkmState();
}

class _DetailUmkmState extends State<DetailUmkm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.chevron_left),
        // title: Text("Overview",
        //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                      child: Row(
                    children: [
                      Icon(Icons.star),
                      Text("A"),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                      children: [
                        Text(
                          "Plafon",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("RpXX.XXX.XXX")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Imbal Hasil",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("XX%")
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Tenor",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("XX Minggu")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 220,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Imbal Hasil",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX%")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tenor",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX Minggu")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jenis Angsuran",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Mingguan")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jumlah Angsuran",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("RpXX.XXX")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Penghasilan Perbulan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("RpXXX.XXX")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pekerjaan",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XXXXXXXX")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sektor",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XXXXXXXX")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Akad",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XXXXXXXX")
                        ],
                      ),
                    ]),
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
                  padding:
                      new EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: new Column(children: [
                    new Text(
                      "Invest Di sini",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
