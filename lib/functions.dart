import 'package:flutter/material.dart';

Widget container(context, name, count, temp, doses) {
  return Padding(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.05,
        left: MediaQuery.of(context).size.width * 0.01),
    child: Container(
        height: MediaQuery.of(context).size.height * 0.27,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 157, 237, 159),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * 0.09),
                  child: Text(
                    "Name : $name",
                    style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // Padding(
                //   padding:
                //       MediaQueryData.fromWindow(window).viewPadding,
                //   child: Text("MUhammed AJMAL",
                //       maxLines: 3,
                //       style: TextStyle(
                //           fontSize: fsize * 14,
                //           fontFamily: "Montserrat",
                //           fontWeight: FontWeight.w500)),
                // ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.width * 0.40),
                  child: Text(
                    "Doses :$doses",
                    style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // Padding(
                //   padding:
                //       MediaQueryData.fromWindow(window).viewPadding,
                //   child: Text("55",
                //       style: TextStyle(
                //           fontSize: fsize * 14,
                //           fontFamily: "Montserrat",
                //           fontWeight: FontWeight.w500)),
                // ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.width * 0.09),
                  child: Text(
                    "Count :$count",
                    style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // Padding(
                //   padding:
                //       MediaQueryData.fromWindow(window).viewPadding,
                //   child: Text("55",
                //       style: TextStyle(
                //           fontSize: fsize * 14,
                //           fontFamily: "Montserrat",
                //           fontWeight: FontWeight.w500)),
                // ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.width * 0.48),
                  child: Text(
                    "Temp :$temp",
                    style: TextStyle(
                        fontSize: MediaQuery.textScaleFactorOf(context) * 14,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                  ),
                ),
                // Padding(
                //   padding:
                //       MediaQueryData.fromWindow(window).viewPadding,
                //   child: Text("55",
                //       style: TextStyle(
                //           fontSize: fsize * 14,
                //           fontFamily: "Montserrat",
                //           fontWeight: FontWeight.w500)),
                // ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(
            //           top: MediaQuery.of(context).size.height * 0.02,
            //           left: MediaQuery.of(context).size.width * 0.01),
            //       child: Text("12.00",
            //           style: TextStyle(
            //               color: const Color.fromARGB(255, 0, 0, 0),
            //               fontSize: MediaQuery.textScaleFactorOf(context) * 20,
            //               fontFamily: "Montserrat",
            //               fontWeight: FontWeight.w800)),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(
            //           top: MediaQuery.of(context).size.height * 0.02,
            //           left: MediaQuery.of(context).size.width * 0.01),
            //       child: const CircularProgressIndicator(
            //         value: 50 / 100,
            //         backgroundColor: Color.fromARGB(56, 255, 255, 255),
            //         valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            //       ),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(
            //           top: MediaQuery.of(context).size.height * 0.02,
            //           left: MediaQuery.of(context).size.width * 0.01),
            //       child: IconButton(
            //           onPressed: () {},
            //           icon: const Icon(
            //             Icons.clear_outlined,
            //             size: 30,
            //             color: Colors.white,
            //           )),
            //     ),
            //     Padding(
            //       padding: EdgeInsets.only(
            //           top: MediaQuery.of(context).size.height * 0.02,
            //           left: MediaQuery.of(context).size.width * 0.01),
            //       child: IconButton(
            //           onPressed: () {},
            //           icon: const Icon(
            //             Icons.check_outlined,
            //             size: 30,
            //             color: Colors.white,
            //           )),
            //     ),
            //   ],
            // ),
          ],
        )),
  );
}
