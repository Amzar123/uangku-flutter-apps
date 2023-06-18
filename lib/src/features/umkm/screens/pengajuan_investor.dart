import 'package:apps/main.dart';
import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:apps/src/currency_format.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CurrencyCubit extends Cubit<String> {
  CurrencyCubit() : super('');

  void formatCurrency(int amount) {
    final formatCurrency = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp',
      decimalDigits: 0,
    );
    final formattedAmount = formatCurrency.format(amount);
    emit(formattedAmount);
  }
}

class TextFieldCubit extends Cubit<Map<String, String>> {
  TextFieldCubit() : super({});

  void updateValue(String textFieldKey, String value) {
    final updatedValues = Map<String, String>.from(state);
    updatedValues[textFieldKey] = value;
    emit(updatedValues);
  }

  String getValue(String textFieldKey) {
    return state[textFieldKey] ?? '';
  }
}

class PengajuanInvestor extends StatefulWidget {
  const PengajuanInvestor({super.key});

  @override
  State<PengajuanInvestor> createState() => _PengajuanInvestorState();
}

class _PengajuanInvestorState extends State<PengajuanInvestor> {
  final currencyCubit = CurrencyCubit();
  final textFieldCubit = TextFieldCubit();

  final TextEditingController jumlahPinjamanController =
      TextEditingController();
  final TextEditingController durasiPinjamanController =
      TextEditingController();
  final TextEditingController imbalHasilController = TextEditingController();

  @override
  void dispose() {
    currencyCubit.close();
    jumlahPinjamanController.dispose();
    durasiPinjamanController.dispose();
    imbalHasilController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CurrencyCubit>.value(
        value: currencyCubit,
        child: BlocProvider<TextFieldCubit>.value(
            value: textFieldCubit,
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  "Pengajuan Investor",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          width: double.infinity,
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text("Jumlah Pinjaman",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      Text("max. Rp.XX.XXX.XXX"),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 24),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 125,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color(0x68666363)),
                                          color: const Color(0xffffffff),
                                        ),
                                        child: const Text('500.000',
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 125,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color(0x68666363)),
                                          color: const Color(0xffffffff),
                                        ),
                                        child: const Text('1.000.000',
                                            style: TextStyle(fontSize: 20)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 125,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color(0x68666363)),
                                          color: const Color(0xffffffff),
                                        ),
                                        child: const Text('2.500.000',
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 125,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: const Color(0x68666363)),
                                          color: const Color(0xffffffff),
                                        ),
                                        child: const Text('5.000.000',
                                            style: TextStyle(fontSize: 20)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  TextField(
                                    controller: jumlahPinjamanController,
                                    onChanged: (value) {
                                      final parsedAmount =
                                          int.tryParse(value) ?? 0;
                                      currencyCubit
                                          .formatCurrency(parsedAmount);
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Rp",
                                        hintStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      FilteringTextInputFormatter.digitsOnly,
                                      LengthLimitingTextInputFormatter(12)
                                    ],
                                  ),
                                  BlocBuilder<CurrencyCubit, String>(
                                    builder: (context, state) {
                                      return Text(
                                        state,
                                        style: const TextStyle(fontSize: 18),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 40),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text("Durasi Pinjaman",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(height: 40),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color:
                                                      const Color(0x68666363)),
                                              color: const Color(0xffffffff),
                                            ),
                                            child: const Text("minggu"),
                                          ),
                                          const SizedBox(
                                            width: 3,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 70,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  color:
                                                      const Color(0x68666363)),
                                              color: const Color(0xffffffff),
                                            ),
                                            child: const Text("bulan"),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(height: 24),
                                          SizedBox(
                                            width: 120,
                                            child: TextField(
                                              controller:
                                                  durasiPinjamanController,
                                              onChanged: (value) {
                                                textFieldCubit.updateValue(
                                                    'durasiPinjaman', value);
                                              },
                                              textAlign: TextAlign.center,
                                              decoration: const InputDecoration(
                                                  hintText: "XX",
                                                  hintStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text("Imbal Hasil",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 40),
                                          Text("(dalam %)")
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const SizedBox(height: 24),
                                          SizedBox(
                                            width: 120,
                                            child: TextField(
                                              controller: imbalHasilController,
                                              onChanged: (value) {
                                                textFieldCubit.updateValue(
                                                    'imbalHasil', value);
                                              },
                                              textAlign: TextAlign.center,
                                              decoration: const InputDecoration(
                                                  hintText: "XX",
                                                  hintStyle: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .deny(RegExp(r'[^0-9.]'))
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                      const SizedBox(height: 24),
                      Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0x68666363)),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              const Text(
                                "Summary",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const SizedBox(height: 24),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Jumlah Pinjaman",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Durasi Pinjaman",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text("Imbal Hasil",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      BlocBuilder<CurrencyCubit, String>(
                                        builder: (context, state) {
                                          return Text(
                                            state,
                                          );
                                        },
                                      ),
                                      BlocBuilder<TextFieldCubit,
                                          Map<String, String>>(
                                        builder: (context, textFieldState) {
                                          final durasiValue = textFieldCubit
                                              .getValue('durasiPinjaman');
                                          final imbalHasilValue = textFieldCubit
                                              .getValue('imbalHasil');

                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text('$durasiValue'),
                                              Text('$imbalHasilValue%')
                                            ],
                                          );
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 24),
                              Center(
                                child: SizedBox(
                                  width: 150,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            primaryColor, // <-- Button color
                                        foregroundColor: warnaKeempat,
                                      ),
                                      onPressed: () {
                                        context
                                            .read<InvestApplicationCubit>()
                                            .applyInvestor(context);
                                      },
                                      child: const Text(
                                        "Apply",
                                        style: TextStyle(color: Colors.black),
                                      )),
                                ),
                              )
                            ],
                          )),
                      const SizedBox(height: 24)
                    ],
                  ),
                ),
              ),
            )));
  }
}
