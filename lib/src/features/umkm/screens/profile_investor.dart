import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

class ProfileInvestorScreen extends StatelessWidget {
  const ProfileInvestorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.chevron_left),
        title: const Text("Profile Saya",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[350],
                        child: const Icon(Icons.person,
                            size: 25, color: Colors.black45)),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nama Usaha",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text(
                          "Investor",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  const Expanded(
                    child: Icon(Icons.edit),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0x68666363)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(
                          Icons.person,
                          color: warnaKetiga,
                        ),
                        title: const Text('Data Diri'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: warnaKetiga),
                        title: const Text('Rekening Bank'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: warnaKetiga),
                        title: const Text('Keamanan Akun'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0x68666363)),
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(
                          Icons.person,
                          color: warnaKetiga,
                        ),
                        title: const Text('Pusat Bantuan'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: warnaKetiga),
                        title: const Text('Syarat dan Ketentuan'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: warnaKetiga),
                        title: const Text('Kebijakan Privasi'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.person, color: warnaKetiga),
                        title: const Text('Logout'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
