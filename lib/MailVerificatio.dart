import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:setram/Signup.dart';
import 'package:setram/Home.dart';
import 'package:setram/OtpInput.dart';

class MailVerif extends StatefulWidget {
  const MailVerif({Key? key}) : super(key: key);

  @override
  State<MailVerif> createState() => _MailVerifState();
}

class _MailVerifState extends State<MailVerif> {
  // 4 text editing controllers that associate with the 4 input fields
  // final TextEditingController _fieldOne = TextEditingController();
  // final TextEditingController _fieldTwo = TextEditingController();
  // final TextEditingController _fieldThree = TextEditingController();
  // final TextEditingController _fieldFour = TextEditingController();

  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;
  void initState() {
    super.initState();
    //user needs ti be created before
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    if (!isEmailVerified) {
      sendVerificationEmail();
      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload;
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isEmailVerified) timer?.cancel();
  }

  Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      setState(() => canResendEmail = false);
      await Future.delayed(const Duration(seconds: 5));
      setState(() => canResendEmail = true);
    } catch (e) {
      Fluttertoast.showToast(msg: 'error occured while verifying email');
    }
  }

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    if (isEmailVerified) {
      return const Home();
    } else {
      return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 50.0, bottom: 50.0),
              child: Row(
                children: [
                  Container(
                    width: width * 0.1,
                    height: height * 0.053,
                    decoration: BoxDecoration(
                      color: const Color(0x338ECAE6),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                          size: 20.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ));
                        }),
                  ),
                  SizedBox(
                    width: width * 0.23,
                  ),
                  const Text(
                    "Verification",
                    style: TextStyle(
                      color: Color(0xff302F2F),
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Check your email",
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
            // Implement 4 input fields
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 50.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       OtpInput(_fieldOne, true),
            //       OtpInput(_fieldTwo, false),
            //       OtpInput(_fieldThree, false),
            //       OtpInput(_fieldFour, false)
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didin’t recieve mail?",
                    style: TextStyle(
                      color: Color(0xB3302F2F),
                      fontSize: 15.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        canResendEmail ? sendVerificationEmail() : null,
                    child: const Text(
                      "Request again",
                      style: TextStyle(
                        color: Color(0xff302F2F),
                        fontSize: 15.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
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
                      "Cancel",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () async {
                      debugPrint("Verify your Account pressed");
                      await FirebaseAuth.instance.signOut();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
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
}
