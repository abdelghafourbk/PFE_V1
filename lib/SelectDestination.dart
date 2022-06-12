import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/ContactUs.dart';
import 'package:setram/History.dart';
import 'package:setram/Home.dart';
import 'package:setram/NoQrCodeDetected.dart';
import 'package:setram/ProfileScreen/Profile.dart';
import 'package:setram/ScanQrCode.dart';
import 'package:setram/SelectDestinationStation.dart';

class selectDestination extends StatefulWidget {
  const selectDestination({Key? key}) : super(key: key);

  @override
  State<selectDestination> createState() => _selectDestinationState();
}

class _selectDestinationState extends State<selectDestination> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    String title = "University of Science and Technology Houari Boumediene";
    String description =
        "This should be a small description about the place so i will fill it later on with more informations This should be a small description about the place so i will fill it later on with more informations";
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
                    "Destination",
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
                        //temp to check the noQrCodeDetected page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NoQrCode(),
                            ));
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 17.0),
                width: width * 0.9,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(37.0),
                  child: Image.asset(
                    'images/Dest2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff302F2F),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text(
                  description,
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12.0,
                    color: Color(0xff88879C),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
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
                      margin: const EdgeInsets.all(10.0),
                      width: width * 0.5,
                      height: width * 0.5,
                      child: Image.asset('images/ScanningQrCode.png')),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: width * 0.55,
                height: width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: const Color(0xffffffff),
                  border: Border.all(
                    color: const Color(0xff302F2F),
                    width: 2,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const selectDestination(),
                                  ));
                            },
                            icon: const Icon(Icons.qr_code_rounded,
                                color: Color(0xff302F2F)),
                          ),
                          const Text(
                            "Qr Code",
                            style: TextStyle(
                              color: Color(0xff302F2F),
                              fontFamily: "Poppins",
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 1.0,
                      color: Color(0xff302F2F),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SelectDestinationStation(),
                                  ));
                            },
                            icon: const Icon(Icons.list_alt_rounded,
                                color: Color(0x80302F2F)),
                          ),
                          const Text(
                            "Station",
                            style: TextStyle(
                              color: Color(0x80302F2F),
                              fontFamily: "Poppins",
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
