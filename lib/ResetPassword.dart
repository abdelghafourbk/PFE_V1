import 'package:flutter/material.dart';
import 'package:setram/Home.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  String _password = "";
  bool _obscureText = true;

  final _formKey = GlobalKey<FormState>();
  var _passKey = GlobalKey<FormFieldState>();

  bool equalsIgnoreCase(String string1, String string2) {
    return string1.toLowerCase() == string2.toLowerCase();
  }

  void onPressedSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/Logo_SETRAM_Algérie1.png",
              width: 130.0,
              height: 50.0,
            ),
            Image.asset(
              "images/ResetPassword.png",
              width: 250.0,
              height: 200.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Reset\nPassword",
                  style: TextStyle(
                    color: Color(0xff023047),
                    fontSize: 25.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                            key: _passKey,
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
                              if (_password == null || _password.isEmpty) {
                                return 'Enter a password';
                              } else if (!RegExp(
                                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                  .hasMatch(_password)) {
                                return 'Your password should contain at least one uppercase, one lowercase, one digit, a special character and must be at least 8 characters in length';
                              } else {
                                return null;
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
                              validator: (confirmPassword) {
                                if (confirmPassword == null ||
                                    confirmPassword.isEmpty) {
                                  setState(() {});
                                  return 'Enter the password';
                                } else {
                                  var password = _passKey.currentState!.value;
                                  if (!equalsIgnoreCase(
                                      confirmPassword, password)) {
                                    setState(() {});
                                    return 'Confirm Password invalid';
                                  } else {
                                    return null;
                                  }
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
                            onPressedSubmit();
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Home(),
                                  ));
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xff341AF6)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
