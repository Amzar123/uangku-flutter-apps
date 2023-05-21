import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const registerinvestor(title: 'MyProject'),
    );
  }
}

class registerinvestor extends StatefulWidget {
  const registerinvestor({super.key, required this.title});
  final String title;
  @override
  State<registerinvestor> createState() => _registerinvestorState();
}

class _registerinvestorState extends State<registerinvestor> {
  // Void and Function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            //width: double.infinity, // 100% max width parent
            // decoration: BoxDecoration(
            //  border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
            // ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container( // c1 atas
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 12, left: 10, right: 10),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
                  // ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text('Gambar'),
                      ),
                      Container(
                        child: const Text(
                          'Mari Buat Akun Anda',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFF002B5B),
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Container( //c2 form
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Pekerjaan"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Pekerjaan",
                            prefixIcon: Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50), // Set the border radius to make it rounded
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Perusahaan"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Perusahaan",
                            prefixIcon: Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50), // Set the border radius to make it rounded
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Penghasilan"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Penghasilan",
                            prefixIcon: Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50), // Set the border radius to make it rounded
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //container 3 button
                      // decoration: BoxDecoration(
                      //        border: Border.all(color: Color.fromARGB(255, 0, 255, 21)),
                      //     ),
                      //margin: EdgeInsets.only(bottom: 30, top: 20),
                      margin: EdgeInsets.only(top: 5),
                      // decoration: BoxDecoration(
                      //   border:
                      //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                      // ),
                      height: 30,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Buat Akun",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color(0xFF57C5B6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Container( //c4logo
                  margin: EdgeInsets.only(top: 490),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          //gambar
                          child: Text('Gambar'),
                        ),
                        Container(
                          child: const Text(
                            'TemanInvest',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF002B5B),
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Your container content here
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}