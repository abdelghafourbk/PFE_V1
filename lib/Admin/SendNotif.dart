import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/Admin/HomeAd.dart';
import 'package:setram/Admin/ProfileAd.dart';
import 'package:setram/Admin/Statistics.dart';

import 'NotifSent.dart';

class SendNotif extends StatefulWidget {
  const SendNotif({Key? key}) : super(key: key);

  @override
  State<SendNotif> createState() => _SendNotifState();
}

class _SendNotifState extends State<SendNotif> {
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

    return Scaffold(
      backgroundColor: Colors.white,
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
        child: SingleChildScrollView(
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
              const SizedBox(
                height: 15.0,
              ),
              Image.asset(
                "images/ContactUs.png",
                width: 196.0,
                height: 160.0,
              ),
              const Text(
                "Inform users with notifications",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Send notifications to passengers about the situation of tramway and any lateness and to control agents",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: height * 0.34,
                width: width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          flex: 2,
                          child: TextField(
                            minLines: 1,
                            maxLines: 4,
                            decoration: InputDecoration(
                              // border: InputBorder.none,
                              hintText:
                                  "There was a thief in the traway and... ",
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.add_photo_alternate_outlined,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff302F2F),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  const Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Type:",
                                      style: TextStyle(
                                        color: Color(0xff1A1A25),
                                        fontSize: 13.0,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.info,
                                        color: Color(0xff6D5FFD),
                                      ),
                                      TextButton(
                                        child: const Text(
                                          "Information",
                                          style: TextStyle(
                                            color: Color(0xff1A1A25),
                                            fontSize: 15.0,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.warning,
                                        color: Color(0xffEC473D),
                                      ),
                                      TextButton(
                                        child: const Text(
                                          "Warning",
                                          style: TextStyle(
                                            color: Color(0xff1A1A25),
                                            fontSize: 15.0,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: const Color(0xff73BFDC),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    const Text(
                      "To:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0x26EB5757)),
                      ),
                      child: const Text(
                        "Admin",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            color: Color(0XFFEB5757)),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0x26302F2F)),
                      ),
                      child: const Text(
                        "Control Agent",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            color: Color(0xFF302F2F)),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                  width: 350.0,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      "Send",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      debugPrint("Send pressed");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotifSent(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff341AF6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
