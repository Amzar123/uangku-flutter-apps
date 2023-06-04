import 'package:apps/src/constants.dart';
import 'package:flutter/material.dart';

class ProfileInvestorScreen extends StatelessWidget {
  const ProfileInvestorScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.chevron_left),
        title: Text("Profile Saya",
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
                        child: Icon(Icons.person,
                            size: 25, color: Colors.black45)),
                  ),
                  SizedBox(width: 10),
                  Expanded(
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
                  Expanded(
                      child: Icon(Icons.edit),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x68666363)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: warnaKetiga,
                        ),
                        title: Text('Data Investor'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      
                      ListTile(
                        leading: Icon(Icons.person, color: warnaKetiga),
                        title: Text('Rekening Bank'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      
                      ListTile(
                        leading: Icon(Icons.person, color: warnaKetiga),
                        title: Text('Keamanan Akun'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x68666363)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.person,
                          color: warnaKetiga,
                        ),
                        title: Text('Pusat Bantuan'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      
                      ListTile(
                        leading: Icon(Icons.person, color: warnaKetiga),
                        title: Text('Syarat dan Ketentuan'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      
                      ListTile(
                        leading: Icon(Icons.person, color: warnaKetiga),
                        title: Text('Kebijakan Privasi'),
                        trailing: Icon(Icons.chevron_right),
                        onTap: () {},
                      ),
                      
                      ListTile(
                        leading: Icon(Icons.person, color: warnaKetiga),
                        title: Text('Logout'),
                        trailing: Icon(Icons.chevron_right),
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
