import 'package:flutter/material.dart';
import 'Profile.dart';

class addCard extends StatefulWidget {
  const addCard({Key? key}) : super(key: key);

  @override
  State<addCard> createState() => _addCardState();
}

class _addCardState extends State<addCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    String name = "B.Abdelghafour";
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CustomPaint(
              child: Container(
                width: width,
                height: height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 140.0,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70.0,
                    ),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 50.0),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0, top: 20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Credit card number",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 10.0, right: 30.0, bottom: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "xxxx",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "xxxx",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "xxxx",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "xxxx",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Cardholder Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 10.0, right: 30.0, bottom: 20.0),
                      child: Container(
                        width: width * 0.8,
                        height: 43,
                        child: const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            hintText: "B.Abdelghafour",
                            hintStyle: TextStyle(
                                fontSize: 14.0, color: Color(0x66000000)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Expire date",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Text(
                            "CVV Code",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "10",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            "/",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "12",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 2,
                            child: SizedBox(
                              width: 100.0,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: const EdgeInsets.only(right: 10.0),
                              height: 43,
                              child: const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  hintText: "123",
                                  hintStyle: TextStyle(
                                      fontSize: 14.0, color: Color(0x66000000)),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          width: 150.0,
                          height: 40,
                          child: ElevatedButton(
                            child: const Text("Confirm"),
                            onPressed: () {
                              debugPrint("Confirm pressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProfileScreen(),
                                  ));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black87),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    width: width * 0.1,
                    height: height * 0.053,
                    decoration: BoxDecoration(
                      color: const Color(0x33CCCCCC),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.24,
                  ),
                  const Text(
                    "My Cards",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.only(top: 90.0, bottom: 20.0, left: 140.0),
              height: 105,
              width: 105,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3.5,
                ),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/userPic.png")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
