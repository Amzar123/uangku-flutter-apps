import 'package:flutter/material.dart';
import 'register1.dart';

class login_page extends StatefulWidget {
  const login_page({super.key, required this.title});
  final String title;
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  // Void and Function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity, // 100% max width parent
            //decoration: BoxDecoration(
            //  border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
            //),
            child: Column(
              children: [
                Container(
                  // container1 apps header
                  decoration: BoxDecoration(
                    // border: Border.all(color: Color.fromARGB(255, 255, 153, 0)),
                  ),
                  //height: 50,
                  margin: EdgeInsets.only(bottom: 30, top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(//apps logo,

                          ),
                          Container(
                            child: const Text(
                              'TemanInvest',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF002B5B),
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        //apps jargon
                        child: const Text(
                          'Sahabat investasi masyarakat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1A5F7A),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //container 2 email and password
                  decoration: BoxDecoration(
                    //  border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
                    borderRadius: BorderRadius.circular(
                        10), // Set the border radius to make it rounded
                  ),
                  margin: EdgeInsets.only(bottom: 30, top: 20),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start, // Align children to the start
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Email"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50), // Set the border radius to make it rounded
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Password"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: TextStyle(fontSize: 16.0, color: Colors.black),
                          decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.symmetric(vertical: 16.0),
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock_outlined),
                            border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(50)),
                                borderSide: BorderSide(
                                  color: Color(0xFF5C62FF),
                                  width: 3,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //container 3 button
                  // decoration: BoxDecoration(
                  //        border: Border.all(color: Color.fromARGB(255, 0, 255, 21)),
                  //     ),
                  //margin: EdgeInsets.only(bottom: 30, top: 20),
                  margin: EdgeInsets.only(top: 5),
                  // decoration: BoxDecoration(
                  //   border:
                  //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                  // ),
                  height: 30,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => registerpage1(title: "title")));
                    },
                    child: Text(
                      "Masuk",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Color(0xFF57C5B6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Container(
                  //container 4 text
                  decoration: BoxDecoration(
                    //  border: Border.all(color: Color.fromARGB(255, 221, 0, 255)),
                  ),
                  margin: EdgeInsets.only(bottom: 20, top: 20),
                  child: Text("or"),
                ),
                Container(
                  //container 5 button sign up
                  decoration: BoxDecoration(
                    //   border: Border.all(color: Color.fromARGB(255, 0, 255, 157)),
                  ),
                  margin: EdgeInsets.only(bottom: 30, top: 20),
                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                          icon: Icon(Icons
                              .facebook), // Replace Icons.add with your desired icon
                          label: Text(
                              'Sign Up With Facebook'), // Replace 'Add' with your desired button label
                          style: ElevatedButton.styleFrom(
                            // Customize the button's appearance here
                            primary: Colors
                                .blue, // Set the button's background color
                            onPrimary:
                            Colors.white, // Set the button's text color
                            elevation: 4, // Set the button's elevation
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Set the button's border radius
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 250,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            // Add your onPressed logic here
                          },
                          icon: Icon(Icons
                              .facebook), // Replace Icons.add with your desired icon
                          label: Text(
                              'Sign Up With Google'), // Replace 'Add' with your desired button label
                          style: ElevatedButton.styleFrom(
                            // Customize the button's appearance here
                            primary: Colors
                                .blue, // Set the button's background color
                            onPrimary:
                            Colors.white, // Set the button's text color
                            elevation: 4, // Set the button's elevation
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8), // Set the button's border radius
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
