import 'package:flutter/material.dart';


class KeamananAkun extends StatelessWidget {
  const KeamananAkun({super.key});

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
              Text('Keamanan Akun'),
              SizedBox(height: 5),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: Text('Nomor Telepon'),
                    trailing: Text('085*********'),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (_) => data_umkm()));
                    },
                  ),
                  ListTile(
                    title: Text('Email'),
                    trailing: Text('jhon*****@gmail.com'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Password'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),

                ],
              ),
              SizedBox(height: 20),
             
            ],
          ),
        ),
      ),
    );
  }
}
