import 'package:apps/src/constants.dart';
import 'package:apps/src/features/umkm/screens/home_umkm.dart';
import 'package:apps/src/features/umkm/screens/list_investor.dart';
import 'package:flutter/material.dart';

import 'features/umkm/screens/profile_umkm.dart';

class HomeUmkm extends StatefulWidget {
  const HomeUmkm({super.key});

  @override
  State<HomeUmkm> createState() => _HomeUmkmState();
}

class _HomeUmkmState extends State<HomeUmkm> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    HomeUMKM(),
    ListInvestor(),
    ProfileUmkmScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.newspaper), label: "Investor"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        fixedColor: warnaKeempat,
      ),
    );
  }
}
