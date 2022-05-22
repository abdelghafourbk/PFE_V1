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
                    fontSize: 18.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
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
          Padding(
            padding: const EdgeInsets.only(top: 140.0, bottom: 40.0),
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
                          builder: (context) => Home(),
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
