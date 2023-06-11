import 'package:apps/src/constants.dart';
import 'package:apps/src/features/investor/screens/profile/data_umkm.dart';
import 'package:apps/src/features/investor/screens/profile/kebijakan_privasi.dart';
import 'package:apps/src/features/investor/screens/profile/kemanan_akun.dart';
import 'package:apps/src/features/investor/screens/profile/pusat_bantuan.dart';
import 'package:apps/src/features/investor/screens/profile/rekening_bank.dart';
import 'package:apps/src/features/investor/screens/profile/syarat_dan_ketentuan.dart';
import 'package:flutter/material.dart';

class ProfileInvestorScreen extends StatelessWidget {
  const ProfileInvestorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Saya",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey[350],
                    child: Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.black45,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Investor",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Icon(Icons.edit),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0x68666363)),
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  buildListTile(
                    context,
                    Icons.person,
                    'Data Investor',
                    const DataUmkm(),
                  ),
                  buildListTile(
                    context,
                    Icons.account_balance_wallet,
                    'Rekening Bank',
                    const RekeningBank(),
                  ),
                  buildListTile(
                    context,
                    Icons.security,
                    'Keamanan Akun',
                    const KeamananAkun(),
                  ),
                ],
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
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: <Widget>[
                  buildListTile(
                    context,
                    Icons.help,
                    'Pusat Bantuan',
                    const PusatBantuan(),
                  ),
                  buildListTile(
                    context,
                    Icons.description,
                    'Syarat dan Ketentuan',
                    const SNK(),
                  ),
                  buildListTile(
                    context,
                    Icons.privacy_tip,
                    'Kebijakan Privasi',
                    const kebijakanPrivasi(),
                  ),
                  buildListTile(
                    context,
                    Icons.exit_to_app,
                    'Logout',
                    null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(
    BuildContext context,
    IconData leadingIcon,
    String title,
    Widget? destinationScreen,
  ) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        color: warnaKetiga,
      ),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        if (destinationScreen != null) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => destinationScreen),
          );
        }
      },
    );
  }
}
