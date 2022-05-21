import 'package:flutter/material.dart';
import 'package:setram/Signup.dart';
import 'package:setram/ForgotPassword.dart';
import 'package:setram/Home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _emailID = "abc@gmail.com",
      _password = "",
      _email = "abc@gmail.com",
      _pass = "Try.t.r.y@1";
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
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
                    "images/Login.png",
                    width: 300.0,
                    height: 250.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.alternate_email,
                        color: Colors.black54,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
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
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 60.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.password_rounded,
                        color: Colors.black54,
                        size: 25,
                      ),
                      SizedBox(
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
                            } else
                              return 'Enter valid password';
                          },
                          onSaved: (password) => _password = _password,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, right: 60),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassword(),
                            ));
                      },
                      child: Text(
                        "Forgot password ?",
                        style: TextStyle(
                          color: Colors.blue[300],
                          fontSize: 15.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Container(
                      width: 350.0,
                      height: 40,
                      child: ElevatedButton(
                        child: const Text("Login"),
                        onPressed: () {
                          debugPrint("Login pressed");

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue[900]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 70.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 160.0,
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.grey[600],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Text("OR")),
                      SizedBox(
                        width: 160.0,
                        child: Divider(
                          thickness: 2.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Container(
                      width: 350.0,
                      height: 40,
                      child: ElevatedButton(
                        child: Row(
                          children: [
                            Container(
                              child: Image.asset(
                                "images/GoogleIco.png",
                                width: 40.0,
                                height: 30.0,
                              ),
                            ),
                            SizedBox(
                              width: 80.0,
                            ),
                            Text(
                              "Login with Google",
                              style: TextStyle(
                                color: Colors.blue[900],
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {
                          debugPrint("Login with Google pressed");

                          //Navigator.push(
                          // context,
                          //MaterialPageRoute(
                          // builder: (context) => Page3(),
                          // ));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.grey[300]),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120.0, bottom: 20.0),
                  child: Row(
                    children: [
                      Text(
                        "Don’t have an account? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ));
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15.0,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
