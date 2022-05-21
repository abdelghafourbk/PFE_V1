import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setram/Signup.dart';
import 'package:setram/Home.dart';

class MailVerif extends StatefulWidget {
  const MailVerif({Key? key}) : super(key: key);

  @override
  State<MailVerif> createState() => _MailVerifState();
}

class _MailVerifState extends State<MailVerif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30.0, top: 30.0, bottom: 50.0),
            child: Row(
              children: [
                Container(
                  width: 25.0,
                  height: 25.0,
                  child: FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                      size: 15.0,
                    ),
                    onPressed: () {
                      debugPrint("go back pressed");

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  width: 100.0,
                ),
                Text(
                  "Verification",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Code is sent to your email",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: "Poppins",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 120.0, top: 40.0, bottom: 40.0),
            child: Row(
              children: [
                Text(
                  "Didin’t recieve code?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                    fontFamily: "Poppins",
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MailVerif(),
                        ));
                  },
                  child: Text(
                    "Request again",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
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
                height: 40,
                child: ElevatedButton(
                  child: const Text("Verify your Account"),
                  onPressed: () {
                    debugPrint("Verify your Account pressed");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
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
