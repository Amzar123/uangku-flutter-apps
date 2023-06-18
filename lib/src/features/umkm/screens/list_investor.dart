import 'package:apps/main.dart';
import 'package:apps/src/constants.dart';
import 'package:apps/src/features/umkm/screens/pengajuan_investor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              BlocBuilder<UMKMCubit, List<UMKMModel>>(
                builder: (context, listUmkmModel) {
                  context.read<UMKMCubit>().fetchData();
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: listUmkmModel.length,
                    itemBuilder: (context, index) {
                      var investor = listUmkmModel[index];
                      return Container(
                          margin: const EdgeInsets.all(2),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(investor.userId,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18)),
                                      Text("Informasi"),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Jumlah Pinjaman Max.",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      Text(investor.saldo.toString()),
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
                                            style:
                                                TextStyle(color: Colors.black),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ));
                    },
                  );
                },
              ),
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
