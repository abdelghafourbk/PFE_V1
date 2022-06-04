import 'package:flutter/material.dart';
import 'package:setram/ProfileScreen/addCard.dart';

import 'Profile.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                    const SizedBox(height: 60.0),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0),
                      width: width * 0.8,
                      height: height * 0.27,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 30.0),
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Master card",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11.0,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "2 2 1 3",
                                    style: TextStyle(
                                      color: Color(0xffD4D4D4),
                                      fontSize: 15.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "4 5 6 3",
                                    style: TextStyle(
                                      color: Color(0xffD4D4D4),
                                      fontSize: 15.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "6 7 8 9",
                                    style: TextStyle(
                                      color: Color(0xffD4D4D4),
                                      fontSize: 15.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    "6 4 5 7",
                                    style: TextStyle(
                                      color: Color(0xffD4D4D4),
                                      fontSize: 15.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "images/Chip.png",
                                  ),
                                  Image.asset(
                                    "images/NFC.png",
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "B. Abdelghafour",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                const SizedBox(width: 50),
                                Image.asset(
                                  "images/Mastercard.png",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0Xff302F2F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          width: 155.0,
                          height: 39,
                          child: ElevatedButton(
                            child: const Text(
                              "Add Card",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.w500),
                            ),
                            onPressed: () {
                              debugPrint("Add card pressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const addCard(),
                                  ));
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xff302F2F)),
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
