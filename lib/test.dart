import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
                  Text(
                    'Masukkan Nominal Angka',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
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
                        nominalAngka.toStringAsFixed(0),
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
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    child: Text('Simpan'),
                    onPressed: () {
                      // Lakukan sesuatu dengan nominalAngka
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    child: Text('Invest Sekarang'),
                    onPressed: () {
                      // Lakukan sesuatu ketika tombol "Invest Sekarang" ditekan
                      // Contoh: Navigasi ke halaman investasi
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Tampilkan Bottom Sheet'),
          onPressed: () {
            _showBottomSheet();
          },
        ),
      ),
    );
  }
}
