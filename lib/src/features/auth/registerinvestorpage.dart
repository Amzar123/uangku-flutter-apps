import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main.dart';

class RegistrationDataInvestor {
  final String fullName;
  final String nik;
  final String email;
  final String password;
  final String confirmPassword;
  String pekerjaan;
  String perusahaan;
  String penghasilan;

  RegistrationDataInvestor({
    required this.fullName,
    required this.nik,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.pekerjaan,
    required this.perusahaan,
    required this.penghasilan,
  });
}

class RegisterInvestor extends StatefulWidget {
  const RegisterInvestor(
      {Key? key, required this.title, required this.registrationData})
      : super(key: key);
  final String title;
  final RegistrationDataInvestor? registrationData;

  @override
  State<RegisterInvestor> createState() => _RegisterInvestorState();
}

class _RegisterInvestorState extends State<RegisterInvestor> {
  final TextEditingController pekerjaanController = TextEditingController();
  final TextEditingController perusahaanController = TextEditingController();
  final TextEditingController penghasilanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print('Full Name: ${widget.registrationData?.fullName}');
    print('NIK: ${widget.registrationData?.nik}');
    print('Email: ${widget.registrationData?.email}');
    print('Password: ${widget.registrationData?.password}');
    print('Confirm Password: ${widget.registrationData?.confirmPassword}');

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
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin:
                      const EdgeInsets.only(bottom: 12, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mari Buat Akun Anda',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Color(0xFF002B5B),
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Pekerjaan"),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: pekerjaanController,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Pekerjaan",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Perusahaan"),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: perusahaanController,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Perusahaan",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Penghasilan"),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          controller: penghasilanController,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Penghasilan",
                            prefixIcon:
                                Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
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
                      margin: const EdgeInsets.only(top: 5),
                      height: 30,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          widget.registrationData?.pekerjaan =
                              pekerjaanController.text;
                          widget.registrationData?.perusahaan =
                              perusahaanController.text;
                          widget.registrationData?.penghasilan =
                              penghasilanController.text;
                          print(
                              'Pekerjaan:${widget.registrationData?.pekerjaan}');
                          print(
                              'Perusahaan:${widget.registrationData?.perusahaan}');
                          print(
                              'Penghasilan:${widget.registrationData?.penghasilan}');
                          showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircularProgressIndicator(),
                                      SizedBox(height: 16),
                                      Text('Membuat akun...'),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.of(context)
                                .pop(); // Close the loading dialog

                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return Dialog(
                                  child: Container(
                                    padding: EdgeInsets.all(16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.check_circle,
                                            color: Colors.green, size: 48),
                                        SizedBox(height: 16),
                                        Text('Akun berhasil dibuat!'),
                                        SizedBox(height: 16),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the success dialog
                                          },
                                          child: Text('OK'),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          });
                        },
                        child: Text(
                          'Buat Akun',
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
                  margin: const EdgeInsets.only(top: 490),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Gambar'),
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

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final RegistrationDataInvestor? registrationData;
  const MyApp({Key? key, this.registrationData});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Member',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterInvestor(
          title: 'Register Investor', registrationData: registrationData),
    );
  }
}
