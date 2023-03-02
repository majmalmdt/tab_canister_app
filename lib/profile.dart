import 'home.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double fsize = MediaQuery.textScaleFactorOf(context);
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "TAB CANISTER",
            style: TextStyle(
                fontSize: fsize * 23,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: BackButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            color: Colors.white,
          ),
        ),
        body: ListView(children: [
          Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      child: const Image(
                        image: AssetImage("assets/profile.jpeg"),
                        height: 180,
                        width: 90,
                      ),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 32, 122, 20),
                      ),
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.15,
                      left: MediaQuery.of(context).size.width * 0.08,
                      child: RawMaterialButton(
                        onPressed: () async {
                          await showDialog(
                              context: context, builder: (_) => ImageDialog());
                        },
                        elevation: 2.0,
                        fillColor: const Color(0xFFF5F6F9),
                        child: const Icon(
                          Icons.qr_code_2,
                          color: Colors.black,
                          size: 25,
                        ),
                        shape: const CircleBorder(),
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: sheight * 0.001),
                child: Text(
                  "Sanjay",
                  style: TextStyle(
                      fontSize: fsize * 20,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.01),
                    child: Text(
                      "Address           : ",
                      style: TextStyle(
                          fontSize: fsize * 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.055),
                    child: Text(
                      "Sanjay Bhavan Anjal",
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: fsize * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.02),
                    child: Text(
                      "PIN                    :",
                      style: TextStyle(
                          fontSize: fsize * 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.02),
                    child: Text(
                      "695604",
                      style: TextStyle(
                          fontSize: fsize * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.02),
                    child: Text(
                      "DOB                   :",
                      style: TextStyle(
                          fontSize: fsize * 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.02),
                    child: Text(
                      "07/05/2000",
                      style: TextStyle(
                          fontSize: fsize * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.02),
                    child: Text(
                      "Blood Group     :",
                      style: TextStyle(
                          fontSize: fsize * 18,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: swidth * 0.05, top: sheight * 0.02),
                    child: Text(
                      "O+",
                      style: TextStyle(
                          fontSize: fsize * 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: swidth * 0.05, top: sheight * 0.02),
                  child: Text(
                    "Contact No       :",
                    style: TextStyle(
                        fontSize: fsize * 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: swidth * 0.05, top: sheight * 0.02),
                  child: Text(
                    "7356710355",
                    style: TextStyle(
                        fontSize: fsize * 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ]),
              Row(children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: swidth * 0.05, top: sheight * 0.02),
                  child: Text(
                    "Emergency No :",
                    style: TextStyle(
                        fontSize: fsize * 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: swidth * 0.05, top: sheight * 0.02),
                  child: Text(
                    "9188421245",
                    style: TextStyle(
                        fontSize: fsize * 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ]),
            ],
          )
        ]));
  }
}

// ignore: use_key_in_widget_constructors
class ImageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: ExactAssetImage('assets/qrcode.png'), fit: BoxFit.fill)),
      ),
    );
  }
}
