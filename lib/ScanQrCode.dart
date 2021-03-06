import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/AfterScan.dart';
import 'package:setram/ContactUs.dart';
import 'package:setram/History.dart';
import 'package:setram/Home.dart';
import 'package:setram/ProfileScreen/Profile.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({Key? key}) : super(key: key);

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  @override
  Widget build(BuildContext context) {
    var Subs1 = {
      'name': 'Tawasol University',
      'desc':
          'For people who study in universities and Vocational training centers whose age does not exceed 29.',
      'price': '600DA',
      'Day': '30 days',
      'tag': 'Subs1'
    };
    var Subs2 = {
      'name': 'Tawasol Junior',
      'desc':
          'For people whose age does not exceed 25, and allows you to have unlimited mobility',
      'price': '990DA',
      'Day': '30 days',
      'tag': 'Subs1'
    };
    List Subsc = [Subs1, Subs2];

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 24.0,
            left: 24.0,
            top: 32.0,
            bottom: 20.0,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  // SizedBox(
                  //   width: width * 0.25,
                  // ),
                  const Text(
                    "Scan Qrcode",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // SizedBox(
                  //   width: width * 0.25,
                  // ),
                  Container(
                    width: 57,
                    height: 57,
                    child: IconButton(
                      onPressed: () {
                        //temp to check the noQrCodeDetected page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AfterScan(),
                            ));
                      },
                      icon: ClipOval(
                        child: Image.asset(
                          'images/userPic.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Scan the Departure Station Qrcode",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Stack(
                children: [
                  Container(
                    width: width * 0.55,
                    height: width * 0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xffffffff),
                      border: Border.all(
                        color: const Color(0xff302F2F),
                        width: 2,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(10.0),
                      width: width * 0.5,
                      height: width * 0.5,
                      child: Image.asset('images/ScanningQrCode.png')),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 150.0,
                    child: Divider(
                      thickness: 1.0,
                      color: Color(0xCC000000),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text("OR")),
                  SizedBox(
                    width: 150.0,
                    child: Divider(
                      thickness: 1.0,
                      color: Color(0xCC000000),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " Buy Subscription",
                    style: TextStyle(
                      color: Color(0xff000000),
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
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Subsc.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(right: 24.0, bottom: 10.0),
                        child: Container(
                          width: 350,
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
                                flex: 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //name
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        Subsc[index]['name'],
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
                                        Subsc[index]['desc'],
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffFCE6E6),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: TextButton(
                                              child: const Text(
                                                "Tramway",
                                                style: TextStyle(
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
                                        Subsc[index]['price'],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    //Day
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        Subsc[index]['Day'],
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
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
