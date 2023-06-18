import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'registermember.dart';


// Event untuk mengarahkan navigasi ke halaman RegisterPage1
class NavigateToRegisterPage1Event extends Object {}

// Bloc untuk mengelola navigasi
class NavigationBloc extends Bloc<Object, Object> {
  NavigationBloc() : super(Object());

  @override
  Stream<Object> mapEventToState(Object event) async* {
    if (event is NavigateToRegisterPage1Event) {
      yield* navigateToRegisterPage2();
    }
  }

  Stream<Object> navigateToRegisterPage2() async* {
    yield RegisterPage2(title: "title");
  }
}

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

enum UserType { Investor, Member }

class _RegisterPage2State extends State<RegisterPage2> {
  UserType? jenisuser;
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
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 50,
                        child: Text('gambar'),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15, left: 10),
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
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
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
                      margin: EdgeInsets.only(top: 5),
                      height: 30,
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          _navigationBloc.add(NavigateToRegisterPage1Event());
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
      home: BlocProvider(
        create: (context) => NavigationBloc(),
        child: RegisterPage2(title: 'MyProject'),
      ),
    );
  }
}
