import 'package:flutter/material.dart';
import 'package:setram/ResetPassword.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String _emailID = "abc@gmail.com", _email = "abc@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
              "images/Forgotpassword.png",
              width: 300.0,
              height: 250.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot ",
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
                "Password?",
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
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Container(
                width: 350.0,
                height: 40,
                child: ElevatedButton(
                  child: const Text("Submit"),
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
