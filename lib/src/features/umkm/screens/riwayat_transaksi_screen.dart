import 'package:flutter/material.dart';

class DetailRiwayatTransaksiScreen extends StatelessWidget {
  final String category;
  final String title;
  final int amount;
  final String date;

  DetailRiwayatTransaksiScreen({
    required this.category,
    required this.title,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Riwayat Transaksi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kategori: $category',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            ListTile(
              title: Text(
                'Nama',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(title),
            ),
            ListTile(
              title: Text(
                'Nominal',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Rp ${amount.toStringAsFixed(0)}'),
            ),
            ListTile(
              title: Text(
                'Tanggal',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(date),
            ),
            ListTile(
              title: Text(
                'ID Transaksi',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("12912012901290129"),
            ),
          ],
        ),
      ),
    );
  }
}
