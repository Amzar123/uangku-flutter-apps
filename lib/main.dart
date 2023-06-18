import 'dart:convert';

import 'package:apps/src/features/umkm/bloc/umkm_bloc.dart';
import 'package:apps/src/features/umkm/screens/home_umkm.dart';
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

// invest application cubit
class InvestApplicationModel {
  String investorId;
  String businessId;
  String amount;
  String duration;
  String deviden;
  InvestApplicationModel(
      {required this.investorId,
      required this.businessId,
      required this.amount,
      required this.duration,
      required this.deviden}); //constructor
}

class InvestApplicationCubit extends Cubit<InvestApplicationModel> {
  String url = "http://localhost:3000/v1/invest-applications";
  InvestApplicationCubit()
      : super(InvestApplicationModel(
            investorId: "",
            businessId: "",
            amount: "0",
            duration: "0",
            deviden: "0"));

  void applyInvestor(BuildContext context) async {
    final response = await http.post(Uri.parse(url), body: {
      "investorId": "648db840705c2c19ada9c1c9",
      "businessId": "648db840705c2c19ada9c1c7",
      "amount": 100.toString(),
      "duration": 12.toString(),
      "deviden": 3.toString()
    });

    if (response.statusCode == 200) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
        return const HomeUMKM();
      })));
    } else {
      throw Error();
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UMKMCubit>(create: (_) => UMKMCubit()),
        BlocProvider<InvestApplicationCubit>(
            create: (_) => InvestApplicationCubit())
      ],
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
