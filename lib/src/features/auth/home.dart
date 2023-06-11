import 'package:flutter/material.dart';
import 'loginpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Void and Function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: double.infinity, // 100% max width parent
            // decoration: BoxDecoration(
            //   border: Border.all(color: Color.fromARGB(255, 0, 4, 255)),
            // ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 600,
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          // sets the container height to 300
                          width: double.infinity,
                          // sets container width to 100% of the parent width
                          decoration: const BoxDecoration(
                            color: Color(0xFF57C5B6),
                            // sets container color to #57C5B6
                            borderRadius: BorderRadius.only(
                              // sets container bottom border radius to 18px
                              bottomLeft: Radius.circular(180),
                              bottomRight: Radius.circular(180),
                            ),
                            // border: Border.all(
                            //   color: Colors.black, // sets border color to black
                            //   width: 1, // sets border width to 1px
                            // ),
                          ),
                          // add other widgets, such as child and margin here if needed
                        ),
                        Positioned(
                          top: 200,
                          left: 0,
                          right: 0,
                          child: Container(
                            //container 1
                            // margin: const EdgeInsets.only(bottom: 16, top: 32),
                            // margin: EdgeInsets.only(top: 150),
                            // decoration: BoxDecoration(
                            //   border:
                            //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                            // ),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Image(
                                        image: AssetImage('assets/logo.png')),
                                    width: 200,
                                    height: 200,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(bottom: 30, top: 20),
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
                                  Container(
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    //container 2
                    margin: EdgeInsets.only(top: 120),
                    // decoration: BoxDecoration(
                    //   border:
                    //       Border.all(color: const Color.fromARGB(255, 255, 0, 0)),
                    // ),
                    height: 40,
                    width: 240,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => login_page(title: "title")));
                      },
                      child: Text(
                        "Mulai aplikasi",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}