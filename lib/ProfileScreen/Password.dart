import 'package:flutter/material.dart';
import 'package:setram/ProfileScreen/Profile.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  String _password = "", _pass = "Try.t.r.y@1";
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  onPressed: () {
                    debugPrint("go back pressed");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                ),
                SizedBox(
                  width: 120,
                ),
                Container(
                  child: Image.asset(
                    "images/Logo_SETRAM_Algérie1.png",
                    width: 130.0,
                    height: 50.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              "images/ResetPassword.png",
              width: 300.0,
              height: 250.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Change",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
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
                      hintText: "Old Password",
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
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "New password",
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
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
                width: 350.0,
                height: 40,
                child: ElevatedButton(
                  child: const Text("Confirm"),
                  onPressed: () {
                    debugPrint("Confirm pressed");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.blue[900]),
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
