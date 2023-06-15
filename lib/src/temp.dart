import 'package:apps/src/constants.dart';
import 'package:apps/src/features/auth/home.dart';
import 'package:apps/src/homeinvestor.dart';
import 'package:apps/src/homeumkm.dart';
import 'package:flutter/material.dart';

class TempScreen extends StatelessWidget {
  const TempScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomeUmkm(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                width: 500.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: const Column(children: [
                  Text(
                    "UMKM",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                width: 500.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: const Column(children: [
                  Text(
                    "Investor",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(
                      title: "TUBES",
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor),
                width: 500.0,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: const Column(children: [
                  Text(
                    "Auth",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
