import 'package:apps/src/temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Membuat Event untuk BLoC
abstract class RegisterMemberEvent {}

class CreateAccountEvent extends RegisterMemberEvent {}

// Membuat State untuk BLoC
abstract class RegisterMemberState {}

class RegisterMemberInitialState extends RegisterMemberState {}

class RegisterMemberLoadingState extends RegisterMemberState {}

class RegisterMemberSuccessState extends RegisterMemberState {}

class RegisterMemberFailureState extends RegisterMemberState {
  final String errorMessage;

  RegisterMemberFailureState(this.errorMessage);
}

// Membuat BLoC
class RegisterMemberBloc extends Bloc<RegisterMemberEvent, RegisterMemberState> {
  RegisterMemberBloc() : super(RegisterMemberInitialState());

  @override
  Stream<RegisterMemberState> mapEventToState(RegisterMemberEvent event) async* {
    if (event is CreateAccountEvent) {
      yield RegisterMemberLoadingState();

      try {
        // Logika untuk membuat akun
        await Future.delayed(Duration(seconds: 2)); // Contoh penundaan selama 2 detik

        yield RegisterMemberSuccessState();
      } catch (e) {
        yield RegisterMemberFailureState(e.toString());
      }
    }
  }
}

class RegisterMember extends StatefulWidget {
  const RegisterMember({super.key, required this.title});
  final String title;

  @override
  State<RegisterMember> createState() => _RegisterMemberState();
}

enum jnsUsaha { Kuliner, Fashion, Agribisnis }

class _RegisterMemberState extends State<RegisterMember> {
  final RegisterMemberBloc _registerMemberBloc = RegisterMemberBloc();

  // Void and Function
  jnsUsaha? jenisUsaha;

  @override
  void dispose() {
    _registerMemberBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterMemberBloc, RegisterMemberState>(
      listener: (context, state) {
        if (state is RegisterMemberLoadingState) {
          // Tampilkan loading atau indikator proses
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 16),
                      Text('Membuat akun...'),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is RegisterMemberSuccessState) {
          // Akun berhasil dibuat
          Navigator.of(context).pop(); // Tutup dialog loading
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
                          Navigator.of(context).pop(); // Tutup dialog success
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else if (state is RegisterMemberFailureState) {
          // Gagal membuat akun
          Navigator.of(context).pop(); // Tutup dialog loading
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
                      Icon(Icons.error, color: Colors.red, size: 48),
                      SizedBox(height: 16),
                      Text('Gagal membuat akun!'),
                      SizedBox(height: 16),
                      Text(state.errorMessage),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Tutup dialog failure
                        },
                        child: Text('OK'),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
      child: Scaffold(
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
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
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
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
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
                        margin: EdgeInsets.only(top: 5),
                        height: 30,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            _registerMemberBloc.add(CreateAccountEvent());
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
                  Container(
                    margin: EdgeInsets.only(top: 490),
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
      ),
    );
  }
}
