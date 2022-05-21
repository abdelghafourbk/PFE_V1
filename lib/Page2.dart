// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:setram/Page3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "images/Logo_SETRAM_Algérie1.png",
                width: 130.0,
                height: 50.0,
              ),
            ),
            const SizedBox(
              height: 38.0,
            ),
            Container(
              child: Image.asset(
                "images/Getstarted2.png",
                width: 300.0,
                height: 250.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text("Confirm payment",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                )),
            Container(
              padding:
                  const EdgeInsets.only(left: 50.0, top: 20.0, right: 50.0),
              child: const Text(
                  "Choose the ticket duration and purchase your E-ticket",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: "Poppins",
                  )),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0x8C341AF6),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 17,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xff341AF6),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 6,
                  height: 6,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0x8C341AF6),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 120.0,
            ),
            Container(
                width: 350.0,
                height: 50,
                child: ElevatedButton(
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    debugPrint("Next pressed");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Page3(),
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff341AF6)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    )),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
