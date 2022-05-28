import 'package:flutter/material.dart';

import 'Home.dart';

class AfterContactUs extends StatefulWidget {
  const AfterContactUs({Key? key}) : super(key: key);

  @override
  State<AfterContactUs> createState() => _AfterContactUsState();
}

class _AfterContactUsState extends State<AfterContactUs> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width * 0.1,
                  height: height * 0.053,
                  decoration: BoxDecoration(
                    color: const Color(0x338ECAE6),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_outlined,
                      color: Colors.black,
                      size: 20.0,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
                SizedBox(
                  width: width * 0.185,
                ),
                const Text(
                  "Contact us",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width * 0.178,
                ),
                Container(
                  width: 57,
                  height: 57,
                  child: IconButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const Login(),
                      //     ));
                    },
                    icon: ClipOval(
                      child: Image.asset(
                        'images/userPic.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Image.asset(
                "images/Thanks.png",
                width: 196.0,
                height: 196.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Thank you!",
                  style: TextStyle(
                    color: Color(0xff302F2F),
                    fontSize: 24.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Thank you for sharing your thoughts. We appreciate your Feedback!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Return to home",
                    style: TextStyle(
                      color: Color(0xff341AF6),
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_outlined,
                      color: Color(0xff341AF6),
                      size: 25.0,
                    ),
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          )),
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
