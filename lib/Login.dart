import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:setram/Admin/HomeAd.dart';
import 'package:setram/AfterScan.dart';
import 'package:setram/AgentC/HomeC.dart';
import 'package:setram/History.dart';
import 'package:setram/Signup.dart';
import 'package:setram/ForgotPassword.dart';
import 'package:setram/Home.dart';
import 'package:setram/provider/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _email = "";
  String _password = "";
  bool _obscureText = true;

  final _formKey = GlobalKey<FormState>();

  void onPressedLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print("Email " + _email);
      print("Password " + _password);
      // Scaffold.of(context)
      //     .showSnackBar(SnackBar(content: Text('Form Submitted')));
    }
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  //firebase
  final _auth = FirebaseAuth.instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    GoogleSignInAccount? user = _googleSignIn.currentUser;

    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Home();
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            return SizedBox(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/Logo_SETRAM_Algérie1.png",
                            width: 130.0,
                            height: 50.0,
                          ),
                          Image.asset(
                            "images/Login.png",
                            width: 250.0,
                            height: 200.0,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: Color(0xff023047),
                                  fontSize: 25.0,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 60.0),
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
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter Your Email';
                                            } else if (!EmailValidator.validate(
                                                value)) {
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
                                  height: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0, right: 60.0),
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
                                            validator: (_password) {
                                              if (_password == null ||
                                                  _password.isEmpty) {
                                                return 'Enter a password';
                                              } else if (!RegExp(
                                                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                                  .hasMatch(_password)) {
                                                //                                               r'^
                                                //   (?=.*[A-Z])       // should contain at least one upper case
                                                //   (?=.*[a-z])       // should contain at least one lower case
                                                //   (?=.*?[0-9])      // should contain at least one digit
                                                //   (?=.*?[!@#\$&*~]) // should contain at least one Special character
                                                //   .{8,}             // Must be at least 8 characters in length
                                                // $
                                                return 'Your password should contain at least one uppercase, one lowercase, one digit, a special character and must be at least 8 characters in length';
                                              } else {
                                                return null;
                                              }
                                            },
                                            onSaved: (value) {
                                              setState(() {
                                                _password = value!;
                                              });
                                            }),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ForgotPassword(),
                                            ));
                                      },
                                      child: const Text(
                                        "Forgot password?",
                                        style: TextStyle(
                                          color: Color(0xff6998CA),
                                          fontSize: 13.0,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Container(
                                      width: 350.0,
                                      height: 50,
                                      child: ElevatedButton(
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onPressed: () {
                                          debugPrint("Login pressed");
                                          onPressedLogin();
                                          signIn(_email, _password);
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color(0xff341AF6)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          )),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              SizedBox(
                                width: 150.0,
                                child: Divider(
                                  thickness: 1.0,
                                  color: Color(0xCC000000),
                                ),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: Text("OR")),
                              SizedBox(
                                width: 150.0,
                                child: Divider(
                                  thickness: 1.0,
                                  color: Color(0xCC000000),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Container(
                                width: 350.0,
                                height: 50,
                                child: ElevatedButton(
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "images/GoogleIco.png",
                                        width: 40.0,
                                        height: 30.0,
                                      ),
                                      const SizedBox(
                                        width: 80.0,
                                      ),
                                      const Text(
                                        "Login with Google",
                                        style: TextStyle(
                                          color: Color(0xff341AF6),
                                          fontFamily: "Poppins",
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  onPressed: () async {
                                    debugPrint("Login with Google pressed");

                                    final newUser =
                                        await _googleSignIn.signIn();
                                    final googleAuth =
                                        await newUser!.authentication;
                                    final creds = GoogleAuthProvider.credential(
                                      accessToken: googleAuth.accessToken,
                                      idToken: googleAuth.idToken,
                                    );
                                    await FirebaseAuth.instance
                                        .signInWithCredential(creds);
                                    // final provider =
                                    //     await Provider.of<GoogleSignInProvider>(
                                    //         context,
                                    //         listen: false);
                                    // provider.googleLogin();
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xffEAEBED)),
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
                                "Don’t have an account? ",
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
                                        builder: (context) => const Signup(),
                                      ));
                                },
                                child: const Text(
                                  "SignUp",
                                  style: TextStyle(
                                    color: Color(0xffF62921),
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            );
          }),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successfull"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
