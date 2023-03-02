import '/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './global.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double fsize = MediaQuery.textScaleFactorOf(context);
    // double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.green,
        body: ListView(children: [
          Column(children: [
            Padding(
              padding: EdgeInsets.only(top: sheight * 0.1),
              child: Text(
                " TAB CANISTER",
                style: TextStyle(
                    fontSize: fsize * 24,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: sheight * 0.1),
              child: Text(
                " LOGIN",
                style: TextStyle(
                    fontSize: fsize * 22,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.063,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 173, 248, 193),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 6,
                    shadowColor: const Color.fromARGB(255, 173, 248, 193),
                    child: TextField(
                      controller: emailController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                          size: MediaQuery.of(context).size.height * 0.038,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.063,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 173, 248, 193),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 6,
                    shadowColor: const Color.fromARGB(255, 173, 248, 193),
                    child: TextField(
                      controller: passwordController,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize:
                                MediaQuery.textScaleFactorOf(context) * 17),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: MediaQuery.of(context).size.height * 0.038,
                          color: Colors.black,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04),
              child: TextButton(
                onPressed: () async {
                  var url = Uri.http(baseurl, '/applogin', {
                    'email': emailController.text,
                    'password': passwordController.text
                  });
                  var response = await http.get(url);
                  print(response.body);
                  if (response.statusCode == 200) {
                    if (response.body == "success") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    }
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 166, 245, 173))),
                child: Text("Login",
                    style: TextStyle(
                        fontSize: fsize * 22,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            )
          ])
        ]));
  }
}
