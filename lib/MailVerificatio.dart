import 'package:flutter/material.dart';
import 'package:setram/Signup.dart';
import 'package:setram/Home.dart';

class MailVerif extends StatefulWidget {
  const MailVerif({Key? key}) : super(key: key);

  @override
  State<MailVerif> createState() => _MailVerifState();
}

class _MailVerifState extends State<MailVerif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 50.0, bottom: 50.0),
            child: Row(
              children: [
                Container(
                  width: 28.0,
                  height: 28.0,
                  child: FloatingActionButton(
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xff302F2F),
                      size: 13.0,
                    ),
                    onPressed: () {
                      debugPrint("go back pressed");

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ));
                    },
                  ),
                ),
                const SizedBox(
                  width: 90.0,
                ),
                const Text(
                  "Verification",
                  style: TextStyle(
                    color: Color(0xff302F2F),
                    fontSize: 15.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Code is sent to your email",
            style: TextStyle(
              color: Color(0xff302F2F),
              fontSize: 16.0,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
            width: 234,
            height: 55,
            child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    left: 183,
                    child: Container(
                        width: 51,
                        height: 55,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(
                                    105, 152, 202, 0.07000000029802322),
                                offset: Offset(2, 4),
                                blurRadius: 5)
                          ],
                          color: Color.fromRGBO(
                              105, 152, 202, 0.07000000029802322),
                        ))),
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 51,
                        height: 55,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 51,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                      bottomLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(105, 152, 202,
                                              0.07000000029802322),
                                          offset: Offset(2, 2),
                                          blurRadius: 5)
                                    ],
                                    color: const Color.fromRGBO(
                                        105, 152, 202, 0.05000000074505806),
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                          105, 152, 202, 1),
                                      width: 1.5,
                                    ),
                                  ))),
                          const Positioned(
                              top: 13,
                              left: 19,
                              child: Text(
                                // here we add input fields
                                '5',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color.fromRGBO(52, 26, 246, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                        ]))),
                Positioned(
                    top: 0,
                    left: 61,
                    child: Container(
                        width: 51,
                        height: 55,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 51,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                      bottomLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(105, 152, 202,
                                              0.07000000029802322),
                                          offset: Offset(2, 2),
                                          blurRadius: 5)
                                    ],
                                    color: const Color.fromRGBO(
                                        105, 152, 202, 0.05000000074505806),
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                          105, 152, 202, 1),
                                      width: 1.5,
                                    ),
                                  ))),
                          const Positioned(
                              top: 13,
                              left: 19,
                              child: Text(
                                '2',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(52, 26, 246, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              )),
                        ]))),
                Positioned(
                    top: 0,
                    left: 122,
                    child: Container(
                        width: 51,
                        height: 55,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                  width: 51,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                      bottomLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6),
                                    ),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromRGBO(105, 152, 202,
                                              0.07000000029802322),
                                          offset: Offset(2, 2),
                                          blurRadius: 5)
                                    ],
                                    color: const Color.fromRGBO(
                                        105, 152, 202, 0.05000000074505806),
                                    border: Border.all(
                                      color: const Color.fromRGBO(
                                          105, 152, 202, 1),
                                      width: 1.5,
                                    ),
                                  ))),
                          const Positioned(
                              top: 13,
                              left: 19,
                              child: Text(
                                '8',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(52, 26, 246, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              )),
                        ]))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Didin’t recieve code?",
                  style: TextStyle(
                    color: Color(0xB3302F2F),
                    fontSize: 14.0,
                    fontFamily: "Poppins",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MailVerif(),
                        ));
                  },
                  child: const Text(
                    "Request again",
                    style: TextStyle(
                      color: Color(0xff302F2F),
                      fontSize: 15.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
                width: 350.0,
                height: 50,
                child: ElevatedButton(
                  child: const Text(
                    "Verify your Account",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    debugPrint("Verify your Account pressed");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff341AF6)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
