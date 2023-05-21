import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

enum jnsUsaha {Kuliner, Fashion, Agribisnis}

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
      home: const registermember(title: 'MyProject'),
    );
  }
}

class registermember extends StatefulWidget {
  const registermember({super.key, required this.title});
  final String title;
  @override
  State<registermember> createState() => _registermemberState();
}

class _registermemberState extends State<registermember> {
  // Void and Function
  jnsUsaha? jenisUsaha;
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
                        child: Text("Nama Usaha"),
                      ),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.only(bottom: 12, left: 10, right: 10),
                        // decoration: BoxDecoration(
                        //   border:
                        //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                        // ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Set the border color
                                  width: 1.0, // Set the border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    50), // Set the border radius
                              ),
                              child: RadioListTile<jnsUsaha>(
                                title: const Text('Usaha Kuliner'),
                                value: jnsUsaha.Kuliner,
                                groupValue: jenisUsaha,
                                onChanged: (jnsUsaha? value) {
                                  setState(() {
                                    jenisUsaha = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Set the border color
                                  width: 1.0, // Set the border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    50), // Set the border radius
                              ),
                              child: RadioListTile<jnsUsaha>(
                                title: const Text('Usaha Fashion'),
                                value: jnsUsaha.Fashion,
                                groupValue: jenisUsaha,
                                onChanged: (jnsUsaha? value) {
                                  setState(() {
                                    jenisUsaha = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey, // Set the border color
                                  width: 1.0, // Set the border width
                                ),
                                borderRadius: BorderRadius.circular(
                                    50), // Set the border radius
                              ),
                              child: RadioListTile<jnsUsaha>(
                                title: const Text('Usaha Agribisnis'),
                                value: jnsUsaha.Agribisnis,
                                groupValue: jenisUsaha,
                                onChanged: (jnsUsaha? value) {
                                  setState(() {
                                    jenisUsaha = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MyHomePage(title: "title")));
                        },
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
