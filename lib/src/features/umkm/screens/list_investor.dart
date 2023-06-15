import 'package:apps/src/constants.dart';
import 'package:apps/src/features/umkm/screens/pengajuan_investor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InvestorModel {
  String name;
  String email;
  String role;
  String createAt;
  String updatedAt;
  InvestorModel({
    required this.name,
    required this.email,
    required this.role,
    required this.createAt,
    required this.updatedAt,
  });
}

class InvestorCubit extends Cubit<List<InvestorModel>> {
  String url = "http://localhost:3000/v1/users?role=user";
  InvestorCubit() : super([]);

  List<InvestorModel> listInvestor = <InvestorModel>[];

  void setFromJson(Map<String, dynamic> json) {
    var data = json["data"];
    for (var val in data) {
      String name = val['nama'];
      String email = val['email'];
      String role = val['role'];
      String createdAt = val['createdAt'];
      String updatedAt = val['updatedAt'];

      listInvestor.add(InvestorModel(
          name: name,
          email: email,
          role: role,
          createAt: createdAt,
          updatedAt: updatedAt));
    }

    emit(listInvestor);
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

class ListInvestor extends StatelessWidget {
  const ListInvestor({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Investor",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Container(
                  margin: const EdgeInsets.all(2),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0x68666363)),
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey[350],
                              child: const Icon(Icons.person,
                                  size: 25, color: Colors.black45)),
                          const SizedBox(width: 15),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nama Investor",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text("Informasi"),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jumlah Pinjaman Max.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text("RpX.XXX.XXX"),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        primaryColor, // <-- Button color
                                    foregroundColor: warnaKeempat,
                                  ),
                                  onPressed: () {
                                    _navigateToNextScreen(context);
                                  },
                                  child: const Text(
                                    "Apply",
                                    style: TextStyle(color: Colors.black),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => PengajuanInvestor()));
}
