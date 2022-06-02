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
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: 450,
              child: Column(
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/circleavatar.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 200,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, top: 20.0, right: 30.0, bottom: 20.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Master card",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  "2 2 1 3",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "4 5 6 3",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "6 7 8 9",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "6 4 5 7",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "images/Chip.png",
                              ),
                              SizedBox(width: 150),
                              Image.asset(
                                "images/NFC.png",
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "B. Abdelghafour",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              SizedBox(width: 50),
                              Image.asset(
                                "images/Payment.png",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                        width: 150.0,
                        height: 40,
                        child: ElevatedButton(
                          child: const Text("Add card"),
                          onPressed: () {
                            debugPrint("CAdd card pressed");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => addCard(),
                                ));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
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
        ],
      ),
    );
  }
}
