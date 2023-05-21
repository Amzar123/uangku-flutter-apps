import 'package:flutter/material.dart';
import 'registerinvestorpage.dart';
import 'registermember.dart';

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
      home: const registerpage2(title: 'MyProject'),
    );
  }
}

class registerpage2 extends StatefulWidget {
  const registerpage2({super.key, required this.title});
  final String title;
  @override
  State<registerpage2> createState() => _registerpage2State();
}

enum UserType { Investor, Member }

class _registerpage2State extends State<registerpage2> {
  // Void and Function
  UserType? jenisuser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // decoration: BoxDecoration(
            //   border: Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
            // ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  //Container pertama (logo dan appsname)
                  // decoration: BoxDecoration(
                  //   border:
                  //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        // decoration: BoxDecoration(
                        //   border: Border.all(
                        //       color: const Color.fromARGB(255, 255, 0, 0)),
                        // ),
                        height: 50,
                        child: Text('gambar'),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15, left: 10),
                        // decoration: BoxDecoration(
                        //   border: Border.all(
                        //       color: const Color.fromARGB(255, 255, 0, 0)),
                        // ),
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
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 12, left: 10),
                  //container2 radiobutton
                  // decoration: BoxDecoration(
                  //   border:
                  //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          'Sebagai apa anda mendaftar?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFF1A5F7A),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        child: RadioListTile<UserType>(
                          title: const Text('Investor'),
                          value: UserType.Investor,
                          groupValue: jenisuser,
                          onChanged: (UserType? value) {
                            setState(() {
                              jenisuser = value;
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
                        child: RadioListTile<UserType>(
                          title: const Text('Member'),
                          value: UserType.Member,
                          groupValue: jenisuser,
                          onChanged: (UserType? value) {
                            setState(() {
                              jenisuser = value;
                            });
                          },
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
                                  builder: (_) => registermember(title: "title")));
                        },
                        child: Text(
                          "Lanjutkan",
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
                Container(
                  margin: EdgeInsets.only(top: 600),
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
