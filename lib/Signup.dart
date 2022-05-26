import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:setram/Login.dart';
import 'package:setram/MailVerificatio.dart';
import 'package:email_validator/email_validator.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String _firstName = "";
  String _lastName = "";
  String _email = "";
  String _password = "";
  String _pass = "";
  bool _obscureText = true;

  final _formKey = GlobalKey<FormState>();
  var _passKey = GlobalKey<FormFieldState>();

  bool equalsIgnoreCase(String string1, String string2) {
    return string1.toLowerCase() == string2.toLowerCase();
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void onPressedSubmit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print("FirstName " + _firstName);
      print("LastName " + _lastName);
      print("Email " + _email);
      // Scaffold.of(context)
      //     .showSnackBar(SnackBar(content: Text('Form Submitted')));
    }
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
              return SingleChildScrollView(
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
                              fontWeight: FontWeight.w600),
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
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 60.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.person_outline,
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
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Your Firstname';
                                      } else if (!RegExp(
                                              //r"^([a-zA-Z]{2,}\s[a-zA-Z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)*$"
                                              //r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$"
                                              r"^([a-zA-Z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)*$")
                                          .hasMatch(value)) {
                                        return 'Enter a valid Firstname';
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        _firstName = value!;
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
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 60.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.person_outline,
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
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter Your Lastname';
                                      } else if (!RegExp(
                                              r"^([a-zA-Z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)*$")
                                          .hasMatch(value)) {
                                        return 'Enter a valid Lastname';
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      setState(() {
                                        _lastName = value!;
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
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 60.0),
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
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 60.0),
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
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = !_obscureText;
                                          });
                                        },
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
                                    // onSaved: (value) {
                                    //   setState(() {
                                    //     _password = value!;
                                    //   });
                                    // },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 60.0),
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
                                        hintText: "Confirm password",
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _obscureText
                                                ? Icons.visibility_off
                                                : Icons.visibility,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _obscureText = !_obscureText;
                                            });
                                          },
                                        ),
                                      ),
                                      validator: (confirmPassword) {
                                        if (confirmPassword == null ||
                                            confirmPassword.isEmpty) {
                                          setState(() {});
                                          return 'Enter the password';
                                        } else {
                                          var password =
                                              _passKey.currentState!.value;
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
                                    "Register",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  onPressed: () {
                                    debugPrint("Register pressed");
                                    onPressedSubmit();
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MailVerif(),
                                          ));
                                    }
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
                        ],
                      ),
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
      ),
    );
  }
}
