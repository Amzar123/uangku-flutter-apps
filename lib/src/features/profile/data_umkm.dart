import 'package:flutter/material.dart';
import 'update_profile_umkm.dart';

class DataUmkm extends StatelessWidget {
  const DataUmkm({super.key});

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
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey[350],
                          child: Icon(Icons.person, size: 50, color: Colors.black45),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text('Ganti foto profile'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Nama Lengkap'),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set the background color to gray
                  //border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Jhon Doe', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 20),
              Text('Email'),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set the background color to gray
                  //border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('jhondoe@gmail.com', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 20),
              Text('Pekerjaan'),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set the background color to gray
                  //border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Wiraswasta', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 20),
              Text('Nama Usaha'),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set the background color to gray
                  //border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Jhon ThriftShop', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 20),
              Text('Jenis UMKM'),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Set the background color to gray
                  //border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Fashion', style: TextStyle(fontSize: 16)),
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => update_profile_umkm()));
                  },
                  child: Text(
                    "Update Profile",
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
