import 'dart:convert';

import 'package:apps/src/features/auth/loginpage.dart';
import 'package:apps/src/features/umkm/screens/home_umkm.dart';
import 'package:apps/src/temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'src/features/investor/screens/home_investor.dart';

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
  String status;
  String duration;
  String deviden;
  InvestApplicationModel(
      {required this.investorId,
      required this.businessId,
      required this.amount,
      required this.status,
      required this.duration,
      required this.deviden}); //constructor
}

class InvestApplicationCubit extends Cubit<InvestApplicationModel> {
  String url = "http://localhost:3000/v1/invest-applications";
  InvestApplicationCubit()
      : super(InvestApplicationModel(
            investorId: "",
            businessId: "",
            status: "",
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

// invest cubit

class InvestCubit extends Cubit<InvestApplicationModel> {
  String url = "http://localhost:3000/v1/invest-applications";
  InvestCubit()
      : super(InvestApplicationModel(
            investorId: "",
            businessId: "",
            status: "",
            amount: "0",
            duration: "0",
            deviden: "0"));

  void invest(BuildContext context) async {
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
        return const DashboardInvestorScreen();
      })));
    } else {
      throw Error();
    }
  }
}

class InvestGetApplicationCubit extends Cubit<List<InvestApplicationModel>> {
  String url =
      "http://localhost:3000/v1/invest-applications?businessId=648db840705c2c19ada9c1c7";
  InvestGetApplicationCubit() : super([]);

  List<InvestApplicationModel> listInvestApplication =
      <InvestApplicationModel>[];
  //map dari json ke atribut
  void setFromJson(Map<String, dynamic> json) {
    var data = json["data"]['results'];
    for (var val in data) {
      String investorId = val['investorId'];
      String businessId = val['businessId'];
      String status = val['status'];
      int amount = val['amount'];
      int duration = val['duration'];
      int deviden = val['deviden'];

      listInvestApplication.add(InvestApplicationModel(
        investorId: investorId,
        businessId: businessId,
        status: status,
        amount: amount.toString(),
        duration: duration.toString(),
        deviden: deviden.toString(),
      ));
    }
    emit(listInvestApplication);
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
class InvestorModel {
  String name;
  String email;
  String password;
  String nik;
  String role;
  Investor investor;

  InvestorModel(
      {required this.name,
      required this.email,
      required this.password,
      required this.nik,
      required this.role,
      required this.investor});

  // Method to convert the model to a JSON representation
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "password": password,
      "nik": nik,
      "role": role,
      "investor": investor.toJson(), // Convert nested 'investor' to JSON
    };
  }
}

class Investor {
  String profession;
  String company;
  String income;

  Investor({
    required this.profession,
    required this.company,
    required this.income,
  });

  // Method to convert the nested 'investor' to a JSON representation
  Map<String, dynamic> toJson() {
    return {
      "profession": profession,
      "company": company,
      "income": income,
    };
  }
}

class RegisterInvestorCubit extends Cubit<InvestorModel> {
  String url = "http://localhost:3000/v1/auth/register";
  RegisterInvestorCubit()
      : super(InvestorModel(
            name: "",
            email: "",
            password: "",
            nik: "0",
            role: "0",
            investor:
                Investor(company: "", income: 0.toString(), profession: "")));

  void registration(BuildContext context, payload) async {
    final payloadInvestor = InvestorModel(
      name: "John Doe",
      email: "john@example.com",
      password: "password123",
      nik: "1234567890",
      role: "investor",
      investor: Investor(
        profession: "apa cik",
        company: "bebas",
        income: 10000000.toString(),
      ),
    );

    final payloadJson = json.encode(payloadInvestor.toJson());
    print(payloadJson);
    final response = await http.post(Uri.parse(url), body: payloadJson);
    print(response.body);
    if (response.statusCode == 200) {
      // ignore: use_build_context_synchronously
      Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
        return const LoginPage(
          title: "Login page",
        );
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
            create: (_) => InvestApplicationCubit()),
        BlocProvider<InvestGetApplicationCubit>(
            create: (_) => InvestGetApplicationCubit()),
        BlocProvider<RegisterInvestorCubit>(
            create: (_) => RegisterInvestorCubit()),
        BlocProvider<InvestCubit>(create: (_) => InvestCubit()),
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
