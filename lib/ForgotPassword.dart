import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:setram/ResetPassword.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String _email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/Logo_SETRAM_Algérie1.png",
            width: 130.0,
            height: 50.0,
          ),
          Image.asset(
            "images/Forgotpassword.png",
            width: 250.0,
            height: 200.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot\nPassword?",
                style: TextStyle(
                  color: Color(0xff023047),
                  fontSize: 25.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Dont’ worry it happens. "
                "Please enter the adress associated with your account. ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: "Poppins",
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 60.0),
            child: Row(
              children: [
                const Icon(
                  Icons.alternate_email,
                  color: Colors.black54,
                  size: 25,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Your Email';
                      } else if (!EmailValidator.validate(value)) {
                        return 'Enter a valid Email';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        _email = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
              width: 350.0,
              height: 50,
              child: ElevatedButton(
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    debugPrint("Submit pressed");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPassword(),
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff341AF6)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    )),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
