import 'dart:convert';

import 'package:apps/src/features/umkm/bloc/umkm_bloc.dart';
import 'package:apps/src/features/umkm/screens/list_investor.dart';
import 'package:apps/src/temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class UMKMModel {
  String userId;
  int saldo;
  UMKMModel({required this.userId, required this.saldo}); //constructor
}

class UMKMCubit extends Cubit<List<UMKMModel>> {
  String url = "http://localhost:3000/v1/investors";
  UMKMCubit() : super([]);

  List<UMKMModel> ListUMKModel = <UMKMModel>[];
  //map dari json ke atribut
  void setFromJson(Map<String, dynamic> json) {
    var data = json["data"];
    for (var val in data) {
      String userId = val['userId'];
      int saldo = val['saldo'];

      ListUMKModel.add(UMKMModel(userId: userId, saldo: saldo));
    }
    emit(ListUMKModel);
  }

  void fetchData() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setFromJson(jsonDecode(response.body));
    } else {
      throw Exception('Gagal load');
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<UMKMCubit>(create: (_) => UMKMCubit())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
          useMaterial3: true,
        ),
        home: TempScreen(),
      ),
    );
  }
}
