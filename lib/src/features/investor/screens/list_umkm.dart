import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

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
              Container(
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
                              child: Icon(Icons.person,
                                  size: 25, color: Colors.black45)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama Usaha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Jenis UMKM"),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          width: 500.0,
                          padding: new EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                          Text("Rp XX.XXX.XXX")
                        ],
                      ),
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
                            "Jangka Waktu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX Hari")
                        ],
                      ),
                    ],
                  )),
              Container(
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
                              child: Icon(Icons.person,
                                  size: 25, color: Colors.black45)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama Usaha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Jenis UMKM"),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          width: 500.0,
                          padding: new EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                          Text("Rp XX.XXX.XXX")
                        ],
                      ),
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
                            "Jangka Waktu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX Hari")
                        ],
                      ),
                    ],
                  )),
              Container(
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
                              child: Icon(Icons.person,
                                  size: 25, color: Colors.black45)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama Usaha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Jenis UMKM"),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          width: 500.0,
                          padding: new EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                          Text("Rp XX.XXX.XXX")
                        ],
                      ),
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
                            "Jangka Waktu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX Hari")
                        ],
                      ),
                    ],
                  )),
              Container(
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
                              child: Icon(Icons.person,
                                  size: 25, color: Colors.black45)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama Usaha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Jenis UMKM"),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          width: 500.0,
                          padding: new EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                          Text("Rp XX.XXX.XXX")
                        ],
                      ),
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
                            "Jangka Waktu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX Hari")
                        ],
                      ),
                    ],
                  )),
              Container(
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
                              child: Icon(Icons.person,
                                  size: 25, color: Colors.black45)),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama Usaha",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Jenis UMKM"),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor),
                          width: 500.0,
                          padding: new EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
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
                          Text("Rp XX.XXX.XXX")
                        ],
                      ),
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
                            "Jangka Waktu",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("XX Hari")
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
