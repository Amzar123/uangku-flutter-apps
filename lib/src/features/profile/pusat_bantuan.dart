import 'package:flutter/material.dart';

class PusatBantuan extends StatelessWidget {
  const PusatBantuan({super.key});

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
              Text('Pusat Bantuan'),
              SizedBox(height: 5),
              ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  ListTile(
                    title: Text('Hubungi Customer Service'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (_) => data_umkm()));
                    },
                  ),
                  SizedBox(height: 10),
                  Text("Pertanyaan Populer"),
                  SizedBox(height: 5),
                  ListTile(
                    title: Text('Apa yang harus dilakukan ketika lupa password?'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text('Bagaimana cara mengajukan pinjaman?'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text('Bagaimana cara menemukan investor?'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text('Cara mengatasi saldo tidak masuk?'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    title: Text('Bagaimana memilih investor yang terpercaya?'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ],
              ),
              Divider(color: Colors.grey),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
