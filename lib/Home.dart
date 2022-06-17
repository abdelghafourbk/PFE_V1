import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/Admin/HomeAd.dart';
import 'package:setram/AfterScan.dart';
import 'package:setram/History.dart';
import 'package:setram/Login.dart';
import 'package:setram/Notifications.dart';
import 'package:setram/ContactUs.dart';
import 'package:setram/ProfileScreen/Profile.dart';
import 'package:setram/ScanQrCode.dart';
import 'package:setram/SelectDestination.dart';
import 'package:setram/models/user.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.7);
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    var activePage;
    //Popular Destinations
    var Destination1 = {
      'image': 'images/Dest1.png',
      'name': 'National Library',
      'desc': 'Description of the place should be written here ...',
      'tag': 'Destination1'
    };
    var Destination2 = {
      'image': 'images/Dest2.png',
      'name': 'USTHB',
      'desc': 'Description of the place should be written here ...',
      'tag': 'Destination2'
    };
    var Destination3 = {
      'image': 'images/Dest2.png',
      'name': 'USTHB',
      'desc': 'Description of the place should be written here ...',
      'tag': 'Destination3'
    };
    List Dest = [Destination1, Destination2, Destination3];

    var Subs1 = {
      'name': 'Tawasol University',
      'desc':
          'For people who study in universities and Vocational training centers whose age does not exceed 29.',
      'price': '600DA',
      'Day': '30 days',
      'tag': 'Subs1'
    };
    var Subs2 = {
      'name': 'Tawasol University',
      'desc':
          'For people who study in universities and Vocational training centers whose age does not exceed 29.',
      'price': '600DA',
      'Day': '30 days',
      'tag': 'Subs1'
    };
    List Subsc = [Subs1, Subs2];

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, top: 32.0, bottom: 20.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notifs(),
                          ));
                    },
                    icon: const Icon(Icons.notifications_none_outlined),
                  ),
                  SizedBox(
                    width: width * 0.12,
                  ),
                  Column(
                    children: [
                      const Text(
                        "Welcome back,",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        "${loggedInUser.firstName}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * 0.12,
                  ),
                  Container(
                    width: 57,
                    height: 57,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
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
            ),
            const Text(
              "Choose a destination\nenjoy your trip.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 25.0, bottom: 30.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(left: 10.0),
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(0x80000000),
                      size: 24,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search for destination",
                          // contentPadding: EdgeInsets.only(bottom: 10.0),
                          hintStyle: TextStyle(
                            color: Color(0x80000000),
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                          fillColor: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Popular Destinations",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ));
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Color(0xff6998CA),
                        fontSize: 14.0,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.26,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: Dest.length,
                  itemBuilder: (BuildContext context, int pagePosition) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const selectDestination(),
                            ));
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 24.0, bottom: 10.0),
                        child: Container(
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x1a6998CA),
                                blurRadius: 7,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    Dest[pagePosition]['image'],
                                    width: double.infinity,
                                    height: height * 0.12,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const SizedBox(height: 5.0),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    Dest[pagePosition]['name'],
                                    style: const TextStyle(
                                      color: Color(0xff302F2F),
                                      fontSize: 16.0,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5.0),
                                Text(
                                  Dest[pagePosition]['desc'],
                                  style: const TextStyle(
                                    color: Color(0xff88879C),
                                    fontSize: 12.0,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Subscriptions",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 18.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home(),
                          ));
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Color(0xff6998CA),
                        fontSize: 14.0,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ],
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
                      padding: const EdgeInsets.only(
                          right: 24.0, left: 24.0, bottom: 10.0),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
            // Stack(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.all(30.0),
            //       child: Align(
            //         alignment: Alignment(0.0, 1.0),
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.all(Radius.circular(30)),
            //           child: BottomNavigationBar(
            //               selectedItemColor: Colors.white,
            //               backgroundColor: Colors.blue[900],
            //               items: const [
            //                 BottomNavigationBarItem(
            //                   icon: Icon(
            //                     Icons.home,
            //                     color: Colors.white,
            //                   ),
            //                   label: "Home",
            //                 ),
            //                 BottomNavigationBarItem(
            //                     icon: Icon(
            //                       Icons.speaker_notes,
            //                       color: Colors.white,
            //                     ),
            //                     label: "notes"),
            //                 BottomNavigationBarItem(
            //                     icon: Icon(
            //                       Icons.history,
            //                       color: Colors.white,
            //                     ),
            //                     label: "history"),
            //                 BottomNavigationBarItem(
            //                     icon: Icon(
            //                       Icons.person_outline,
            //                       color: Colors.white,
            //                     ),
            //                     label: "Profile"),
            //               ]),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
