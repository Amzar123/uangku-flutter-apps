import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';
import 'update_profile_umkm.dart';

class RekeningBank extends StatelessWidget {
  const RekeningBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kembali",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              SizedBox(height: 20),
              Text('Rekening Bank Terdaftar:'),
              SizedBox(height: 5),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.money,
                      color: warnaKetiga,
                    ),
                    title: Text('MANDIRI'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (_) => data_umkm()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.money, color: warnaKetiga),
                    title: Text('BRI'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.money, color: warnaKetiga),
                    title: Text('BNI'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (_) => data_umkm()));
                  },
                  child: Text(
                    "Tambah Rekening Baru",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Color(0xFF57C5B6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
