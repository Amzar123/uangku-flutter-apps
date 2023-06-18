import 'package:flutter/material.dart';
import 'register1.dart';


class RegisterMember extends StatefulWidget {
  const RegisterMember({Key? key, required this.title, required this.registrationData}) : super(key: key);
  final String title;
  final RegistrationData? registrationData;

  @override
  State<RegisterMember> createState() => _RegisterMemberState();
}

enum JnsUsaha { Kuliner, Fashion, Agribisnis }

class RegistrationData {
  final String fullName;
  final String nik;
  final String email;
  final String password;
  final String confirmPassword;

  RegistrationData({
    required this.fullName,
    required this.nik,
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}

class _RegisterMemberState extends State<RegisterMember> {
  JnsUsaha? jenisUsaha;

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Mari Buat Akun Anda',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFF002B5B),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                ),
              ),
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
                    prefixIcon: Icon(Icons.lock_outlined, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
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
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: RadioListTile<JnsUsaha>(
                        title: const Text('Usaha Kuliner'),
                        value: JnsUsaha.Kuliner,
                        groupValue: jenisUsaha,
                        onChanged: (JnsUsaha? value) {
                          setState(() {
                            jenisUsaha = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: RadioListTile<JnsUsaha>(
                        title: const Text('Usaha Fashion'),
                        value: JnsUsaha.Fashion,
                        groupValue: jenisUsaha,
                        onChanged: (JnsUsaha? value) {
                          setState(() {
                            jenisUsaha = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: RadioListTile<JnsUsaha>(
                        title: const Text('Usaha Agribisnis'),
                        value: JnsUsaha.Agribisnis,
                        groupValue: jenisUsaha,
                        onChanged: (JnsUsaha? value) {
                          setState(() {
                            jenisUsaha = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
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
                    Navigator.of(context).pop(); // Close the loading dialog

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
                                Icon(Icons.check_circle, color: Colors.green, size: 48),
                                SizedBox(height: 16),
                                Text('Akun berhasil dibuat!'),
                                SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Close the success dialog
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
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final RegistrationData? registrationData;
  const MyApp({Key? key, this.registrationData});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Register Member',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterMember(title: 'Register Member', registrationData: registrationData),
    );
  }
}
