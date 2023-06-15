import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'registermember.dart';


// Event untuk mengarahkan navigasi ke halaman RegisterMember
class NavigateToRegisterMemberEvent extends Object {}

// Bloc untuk mengelola navigasi
class NavigationBloc extends Bloc<Object, Object> {
  NavigationBloc() : super(Object());


  @override
  Stream<Object> mapEventToState(Object event) async* {
    if (event is NavigateToRegisterMemberEvent) {
      yield* navigateToRegisterMember();
    }
  }

  Stream<Object> navigateToRegisterMember() async* {
    yield RegisterMember(title: "title");
  }
}


class RegisterPage1 extends StatefulWidget {
  const RegisterPage1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RegisterPage1> createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  late NavigationBloc _navigationBloc;

  @override
  void initState() {
    super.initState();
    _navigationBloc = NavigationBloc();
  }

  @override
  void dispose() {
    _navigationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.only(bottom: 12, left: 10, right: 10),
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
                Container(
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
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Nama Lengkap",
                            prefixIcon:
                            Icon(Icons.lock_outlined, color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
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
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "NIK",
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
                        child: Text("Email"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Email",
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
                        child: Text("Password"),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock_outlined, color: Colors.white),
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
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Konfirmasi Password",
                            prefixIcon: Icon(Icons.lock_outlined, color: Colors.white,),
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
                      margin: EdgeInsets.only(top: 5),
                      height: 40,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          _navigationBloc.add(NavigateToRegisterMemberEvent());
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
                  margin: EdgeInsets.only(top: 318),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
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
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage1(title: 'MyProject'),
    );
  }
}
