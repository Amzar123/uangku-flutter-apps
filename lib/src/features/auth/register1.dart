import 'registerpage2.dart';
import 'registerinvestorpage.dart';
import 'package:flutter/material.dart';
import 'registermember.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final UserType? userType;

  const MyApp({Key? key, this.userType});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: registerpage1(title: 'MyProject', userType: userType),
    );
  }
}

class registerpage1 extends StatefulWidget {
  final String title;
  final UserType? userType;

  const registerpage1({Key? key, required this.title, required this.userType})
      : super(key: key);
  @override
  State<registerpage1> createState() => _registerpage1State();
}

class _registerpage1State extends State<registerpage1> {
  // Void and Function
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController nikController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController pekerjaanController = TextEditingController();
  final TextEditingController perusahaanController = TextEditingController();
  final TextEditingController penghasilanController = TextEditingController();

  void navigateToRegisterMember() {
    final registrationData = RegistrationData(
      fullName: fullNameController.text,
      nik: nikController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      pekerjaan: pekerjaanController.text,
      jenisUsaha: null,
    );
    final registrationData2 = RegistrationData2(
      fullName: fullNameController.text,
      nik: nikController.text,
      email: emailController.text,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
      pekerjaan: pekerjaanController.text,
      perusahaan: perusahaanController.text,
      penghasilan: penghasilanController.text,
    );
    if (widget.userType.toString() == 'UserType.Member') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => RegisterMember(
                title: "test", registrationData: registrationData)),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => RegisterInvestor(
                title: "test", registrationData: registrationData2)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Selected userType: ${widget.userType.toString()}');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
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
                Container(
                  // c1 atas
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
                        child: const Text(
                          'Mari Buat Akun Anda ',
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
                          controller: fullNameController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Nama Lengkap",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  50), // Set the border radius to make it rounded
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("NIK"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: nikController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "NIK",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  50), // Set the border radius to make it rounded
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
                          controller: emailController,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Email",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  50), // Set the border radius to make it rounded
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Password"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Password",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                borderSide: BorderSide(
                                  color: Color(0xFF5C62FF),
                                  width: 3,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Konfirmasi Password"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Konfirmasi Password",
                            prefixIcon: Icon(
                              Icons.lock_outlined,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                borderSide: BorderSide(
                                  color: Color(0xFF5C62FF),
                                  width: 3,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
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
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: navigateToRegisterMember,
                        child: Text(
                          'Lanjutkan',
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
                  //c4logo
                  margin: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 0, top: 20),
                          child: const Image(
                              image: AssetImage('assets/TemanInvest_Logo.png')),
                          width: 250,
                        ),
                      ],
                    ),
                    // Your container content here)
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
