import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:setram/Login.dart';
import 'package:setram/MailVerificatio.dart';

//import 'package:email_validator/email_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String _emailID = "abc@gmail.com",
      _password = "",
      _email = "abc@gmail.com",
      _pass = "Try.t.r.y@1";
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: SingleChildScrollView(
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
                      Container(
                        child: Image.asset(
                          "images/Signup.png",
                          width: 250.0,
                          height: 200.0,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Signup",
                            style: TextStyle(
                                color: Color(0xff023047),
                                fontSize: 25.0,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w900),
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
                              Icons.person,
                              color: Colors.black54,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Firstname",
                                ),
                                validator: (First) {
                                  if (First != null &&
                                      First.isEmpty &&
                                      RegExp(r'^[A-Z]+$').hasMatch(First)) {
                                    return null;
                                  } else {
                                    return "Enter correct name";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.person,
                              color: Colors.black54,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Lastname",
                                ),
                                validator: (Last) {
                                  if (Last != null &&
                                      Last.isEmpty &&
                                      RegExp(r'^[a-z A-Z]+$').hasMatch(Last)) {
                                    return null;
                                  } else {
                                    return "Enter correct Lastname";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
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
                                //validator: (email) {
                                //if (email != null && email.isEmpty && EmailValidator.validate(email))
                                // return null;
                                //else{
                                //    return 'Enter valid email address';
                                //     }
                                //},
                                //onSaved: (email) => _emailID = _email,
                                //textInputAction: TextInputAction.next
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.password_rounded,
                              color: Colors.black54,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              child: TextFormField(
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                    onPressed: _toggle,
                                  ),
                                ),
                                validator: (password) {
                                  if (password != null &&
                                      password.isEmpty &&
                                      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                          .hasMatch(password)) {
                                    return null;
                                  } else {
                                    return 'Enter valid password';
                                  }
                                },
                                onSaved: (password) => _password = _password,
                                textInputAction: TextInputAction.done,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.password_rounded,
                              color: Colors.black54,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Flexible(
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Confirm password",
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                    onPressed: _toggle,
                                  ),
                                ),
                                validator: (password) {
                                  if (password != null &&
                                      password.isEmpty &&
                                      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                          .hasMatch(password)) {
                                    return null;
                                  } else {
                                    return 'Enter valid password';
                                  }
                                },
                                onSaved: (password) => _password = _password,
                                textInputAction: TextInputAction.done,
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
                                "Register",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onPressed: () {
                                debugPrint("Register pressed");

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const MailVerif(),
                                    ));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff341AF6)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Already have an account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ));
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Color(0xffF62921),
                                fontSize: 15.0,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
