import 'package:apps/src/features/auth/registermember.dart';
import 'package:apps/src/features/auth/registerpage2.dart';
import 'package:apps/src/features/auth/register1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../homeinvestor.dart';
import 'register1.dart';
import 'registerinvestorpage.dart';

// Event untuk mengarahkan navigasi ke halaman Home
class NavigateToHomeEvent extends Object {}

// Bloc untuk mengelola navigasi
class NavigationBloc extends Bloc<Object, Object> {
  NavigationBloc() : super(Object());

  @override
  Stream<Object> mapEventToState(Object event) async* {
    if (event is NavigateToHomeEvent) {
      yield* navigateToHome();
    }
  }

  Stream<Object> navigateToHome() async* {
    yield Home();
  }
}

class login_page extends StatefulWidget {
  const login_page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  margin: EdgeInsets.only(bottom: 30, top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(),
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
                      Container(
                        child: const Text(
                          'Sahabat investasi masyarakat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1A5F7A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.only(bottom: 30, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Email"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Password"),
                      ),
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
                            prefixIcon: Icon(Icons.lock_outlined),
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(50)),
                              borderSide: BorderSide(
                                color: Color(0xFF5C62FF),
                                width: 3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 30,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      _navigationBloc.add(NavigateToHomeEvent());
                    },
                    child: Text(
                      "Masuk",
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum memiliki akun?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => RegisterPage2(title: "title")));
                      },
                      child: Text(
                        ' Daftar sekarang',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
