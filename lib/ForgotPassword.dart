import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:setram/Login.dart';
import 'package:setram/ResetPassword.dart';

FirebaseAuth auth = FirebaseAuth.instance;

// DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("users");
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String _email = "";
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
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
                      fontWeight: FontWeight.w600,
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
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Email",
                        ),
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
                      onPressed: () async {
                        debugPrint("Submit pressed");
                        if (_emailController.text.isEmpty) {
                          Fluttertoast.showToast(msg: "please enter an email!");
                        } else {
                          // print(_emailController.text.trim());
                          bool toResetPassword =
                              await resetPwd(_emailController.text.trim());
                          if (toResetPassword == true) {
                            await FirebaseAuth.instance.sendPasswordResetEmail(
                                email: _emailController.text.trim());
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ));
                          } else {
                            Fluttertoast.showToast(
                                msg:
                                    "There is no Account related with this email");
                          }
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff341AF6)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> resetPwd(String email) async {
    // final ParseUser user = ParseUser(null, null, _emailidController.text.trim());
    try {
      // await auth.sendPasswordResetEmail(email: _email.trim());
      //! verify if the email exist in our database
      // Fetch sign-in methods for the email address
      final list =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);

      // In case list is not empty
      if (list.isNotEmpty) {
        // Return true because there is an existing
        // user using the email address
        return true;
      } else {
        // Return false because email adress is not in use

        return false;
      }
    } catch (error) {
      Fluttertoast.showToast(msg: error.toString());
    }
    return true;
  }
}
