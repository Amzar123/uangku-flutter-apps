import 'package:flutter/material.dart';
import 'data_umkm.dart';

enum JnsUsaha { Kuliner, Fashion, Agribisnis }

class update_profile_umkm extends StatelessWidget {
  const update_profile_umkm({Key? key});

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
              SizedBox(height: 30),
              Container(
                //c2 form
                margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Nama Lengkap"),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                          labelText: "Nama Lengkap",
                          prefixIcon:
                          Icon(Icons.lock_outlined, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                6), // Set the border radius to make it rounded
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Email"),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                          labelText: "Email",
                          prefixIcon:
                          Icon(Icons.lock_outlined, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                6), // Set the border radius to make it rounded
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Pekerjaan"),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                          labelText: "Pekerjaan",
                          prefixIcon:
                          Icon(Icons.lock_outlined, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                6), // Set the border radius to make it rounded
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Nama Usaha"),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                          labelText: "Nama Usaha",
                          prefixIcon:
                          Icon(Icons.lock_outlined, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                6), // Set the border radius to make it rounded
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Jenis UMKM"),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: DropdownButtonFormField<JnsUsaha>(
                        value: null,
                        items: [
                          DropdownMenuItem<JnsUsaha>(
                            value: JnsUsaha.Kuliner,
                            child: Text("Usaha Kuliner"),
                          ),
                          DropdownMenuItem<JnsUsaha>(
                            value: JnsUsaha.Fashion,
                            child: Text("Usaha Fashion"),
                          ),
                          DropdownMenuItem<JnsUsaha>(
                            value: JnsUsaha.Agribisnis,
                            child: Text("Usaha Agribisnis"),
                          ),
                        ],
                        onChanged: (JnsUsaha? value) {
                          // handle the value change here
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                          labelText: "Jenis UMKM",
                          prefixIcon:
                          Icon(Icons.lock_outlined, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                6), // Set the border radius to make it rounded
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (_) => DataUmkm()));
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
