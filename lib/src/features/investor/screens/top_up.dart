import 'package:apps/src/constants.dart';
import 'package:apps/src/currency_format.dart';
import 'package:flutter/material.dart';

class TopUpScreen extends StatelessWidget {
  final List<int> topUpOptions = [100000, 500000, 1000000, 2000000];
  final TextEditingController customAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pilih Jumlah Top Up',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1.5,
              children: [
                ...topUpOptions.map((amount) {
                  return ElevatedButton(
                    onPressed: () {
                      _showConfirmationDialog(context, amount);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      backgroundColor: secondaryColor,
                    ),
                    child: Text(
                      CurrencyFormat.convertToIdr(amount, 0),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _showCustomAmountDialog(context);
              },
              child: Text(
                'Nominal Lainnya',
                style: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, int amount) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konfirmasi Top Up'),
          content: Text(
            'Apakah Anda yakin ingin melakukan top up sebesar ${CurrencyFormat.convertToIdr(amount, 0)}?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _performTopUp(context, amount);
              },
              child: Text('Ya'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  void _showCustomAmountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nominal Custom'),
          content: TextFormField(
            controller: customAmountController,
            decoration: InputDecoration(
              labelText: 'Nominal',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                String customAmountText = customAmountController.text;
                if (customAmountText.isNotEmpty) {
                  int? customAmount = int.tryParse(customAmountText);
                  if (customAmount != null) {
                    _showConfirmationDialog(context, customAmount);
                  }
                }
              },
              child: Text('Top Up'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
          ],
        );
      },
    );
  }

  void _performTopUp(BuildContext context, int amount) {
    // Logika untuk melakukan top up
    // ...
    _showSnackBar(context, amount);
  }

  void _showSnackBar(BuildContext context, int amount) {
    final snackBar = SnackBar(
      content:
          Text('Top Up ${CurrencyFormat.convertToIdr(amount, 0)} berhasil!'),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
