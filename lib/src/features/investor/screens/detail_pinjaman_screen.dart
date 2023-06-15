import 'package:flutter/material.dart';

class DetailPinjamanScreen extends StatelessWidget {
  final String namaUMKM;
  final int nominalPinjaman;
  final bool isSelesai;

  DetailPinjamanScreen({
    required this.namaUMKM,
    required this.nominalPinjaman,
    required this.isSelesai,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pinjaman'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nama UMKM:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              namaUMKM,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Nominal Pinjaman:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Rp ${nominalPinjaman.toString()}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Status:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  isSelesai ? Icons.check_circle : Icons.pending,
                  color: isSelesai ? Colors.green : Colors.orange,
                ),
                SizedBox(width: 8),
                Text(
                  isSelesai ? 'Selesai' : 'Belum Selesai',
                  style: TextStyle(
                    fontSize: 16,
                    color: isSelesai ? Colors.green : Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
