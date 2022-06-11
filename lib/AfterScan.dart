import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/ContactUs.dart';
import 'package:setram/History.dart';
import 'package:setram/Home.dart';
import 'package:setram/ProfileScreen/Profile.dart';
import 'package:setram/ScanQrCode.dart';

class AfterScan extends StatefulWidget {
  const AfterScan({Key? key}) : super(key: key);

  @override
  State<AfterScan> createState() => _AfterScanState();
}

class _AfterScanState extends State<AfterScan> {
  @override
  Widget build(BuildContext context) {
    var ticket1 = {
      'name': 'Tram Ticket',
      'desc': 'Valid for one trip for tramwaya only',
      'price': '40DA',
      'duration': '1 Trip',
      'tag': ['Tramaway']
    };
    var ticket2 = {
      'name': 'Tram-Metro Ticket',
      'desc': 'Valid for one trip for both tram and metro',
      'price': '70DA',
      'duration': '1 Trip',
      'tag': ['Tramaway', 'Metro']
    };
    var ticket3 = {
      'name': '24 Hours Ticket',
      'desc':
          'Valid for 24 hours and unlimited trips on both tramway and metro',
      'price': '200DA',
      'duration': '1 Day',
      'tag': ['Tramway']
    };
    List ticket = [ticket1, ticket2, ticket3];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List pages = [
      const Home(),
      const ContactUs(),
      const ScanQrCode(),
      const History(),
      const ProfileScreen(),
    ];
    int currentIndex;
    void onTap(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      bottomNavigationBar: Container(
        color: const Color(0xff302F2F),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 15.0,
          ),
          child: GNav(
              selectedIndex: 2,
              backgroundColor: const Color(0xff302F2F),
              gap: 8.0,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: const EdgeInsets.all(13),
              onTabChange: (index) {
                print(index);
                onTap(index);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pages[index]));
              },
              iconSize: 24,
              tabs: const [
                GButton(
                  icon: Icons.home_rounded,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.message_rounded,
                  text: "Contact Us",
                ),
                GButton(
                  icon: Icons.qr_code_scanner_rounded,
                  text: 'Scan',
                ),
                GButton(
                  icon: Icons.history_rounded,
                  text: 'Payments',
                ),
                GButton(
                  icon: Icons.person_rounded,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 24.0, top: 32.0, bottom: 20.0, right: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    width: width * 0.166,
                  ),
                  const Text(
                    "Scan Qrcode",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.164,
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
              const Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 30.0,
                  bottom: 10,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Pick your ticket",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160.0,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 12.0, bottom: 10.0),
                  child: Container(
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0x80341AF6)),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1a2D9CDB),
                          blurRadius: 7,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //name
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ticket[0]['name'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              //desc
                              Expanded(
                                flex: 2,
                                child: Text(
                                  ticket[0]['desc'],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffFCE6E6),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: TextButton(
                                            child: Text(
                                              (ticket[0]['tag'] as List)[0],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffEB5757),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //price
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ticket[0]['price'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              //Duration
                              Expanded(
                                flex: 2,
                                child: Text(
                                  ticket[0]['duration'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.red,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 95,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff341AF6),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        child: const Text(
                                          "Purchase",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          debugPrint("Purchase pressed");
                                          //Navigator.push(
                                          // context,
                                          //MaterialPageRoute(
                                          // builder: (context) => Page3(),
                                          // ));
                                        },
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Colors.white,
                                        size: 15.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160.0,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 12.0, bottom: 10.0),
                  child: Container(
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0x80341AF6)),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1a2D9CDB),
                          blurRadius: 7,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //name
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ticket[1]['name'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              //desc
                              Expanded(
                                flex: 2,
                                child: Text(
                                  ticket[1]['desc'],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffFCE6E6),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: TextButton(
                                            child: Text(
                                              (ticket[1]['tag'] as List)[0],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffEB5757),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //price
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ticket[1]['price'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              //Duration
                              Expanded(
                                flex: 2,
                                child: Text(
                                  ticket[1]['duration'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.red,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 95,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff341AF6),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        child: const Text(
                                          "Purchase",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          debugPrint("Purchase pressed");
                                          //Navigator.push(
                                          // context,
                                          //MaterialPageRoute(
                                          // builder: (context) => Page3(),
                                          // ));
                                        },
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Colors.white,
                                        size: 15.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 160.0,
                width: width,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, left: 12.0, bottom: 10.0),
                  child: Container(
                    width: width * 0.85,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0x80341AF6)),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1a2D9CDB),
                          blurRadius: 7,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(children: [
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //name
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ticket[2]['name'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              //desc
                              Expanded(
                                flex: 2,
                                child: Text(
                                  ticket[2]['desc'],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 11,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffFCE6E6),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: TextButton(
                                            child: Text(
                                              (ticket[2]['tag'] as List)[0],
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xffEB5757),
                                              ),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              //price
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ticket[2]['price'],
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              //Duration
                              Expanded(
                                flex: 2,
                                child: Text(
                                  ticket[2]['duration'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.red,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: 95,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff341AF6),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        child: const Text(
                                          "Purchase",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          debugPrint("Purchase pressed");
                                          //Navigator.push(
                                          // context,
                                          //MaterialPageRoute(
                                          // builder: (context) => Page3(),
                                          // ));
                                        },
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Colors.white,
                                        size: 15.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
