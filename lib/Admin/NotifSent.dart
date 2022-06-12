import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/Admin/HomeAd.dart';
import 'package:setram/Admin/ProfileAd.dart';
import 'package:setram/Admin/Statistics.dart';
import 'SendNotif.dart';

class NotifSent extends StatefulWidget {
  const NotifSent({Key? key}) : super(key: key);

  @override
  State<NotifSent> createState() => _NotifSentState();
}

class _NotifSentState extends State<NotifSent> {
  @override
  Widget build(BuildContext context) {
    List pages = [
      const HomeAd(),
      const SendNotif(),
      const Statistics(),
      const ProfileAd(),
    ];
    int currentIndex;
    void onTap(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var Notif1 = {
      'icon': Icons.info,
      'type': 'Information',
      'description':
          'The service was late today andwrite something here to complete notification.',
    };
    List notifs = [Notif1];

    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xff302F2F),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 15.0,
          ),
          child: GNav(
              selectedIndex: 1,
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
                  text: "Notify",
                ),
                GButton(
                  icon: Icons.query_stats_rounded,
                  text: 'Stats',
                ),
                GButton(
                  icon: Icons.person_rounded,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
        child: Column(
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
                //   width: width * 0.185,
                // ),
                const Text(
                  "Send Notifications",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // SizedBox(
                //   width: width * 0.178,
                // ),
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
              padding: const EdgeInsets.only(top: 50.0, bottom: 10.0),
              child: Container(
                width: width * 0.9,
                height: height * 0.164,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        notifs[0]['icon'],
                        color: const Color(0xff341AF6),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              notifs[0]['type'],
                              style: const TextStyle(
                                color: Color(0xff1A1A25),
                                fontSize: 15.0,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            notifs[0]['description'],
                            style: const TextStyle(
                              color: Color(0xff808192),
                              fontSize: 14.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffF3F2F8),
                  borderRadius: BorderRadius.circular(15),
                ),
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
                "Your Notification has been sent to passengers!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
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
                            builder: (context) => const HomeAd(),
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
