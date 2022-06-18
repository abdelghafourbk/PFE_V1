import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:setram/ContactUs.dart';
import 'package:setram/History.dart';
import 'package:setram/Home.dart';
import 'package:setram/Login.dart';
import 'package:setram/ProfileScreen/Cards.dart';

import 'package:setram/ResetPassword.dart';
import 'package:setram/ScanQrCode.dart';
import '../models/user.dart';
import 'EditPersonalInfos.dart';
import 'components/ProfileMenu.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String name = "B.Abdelghafour";
    final GoogleSignIn _googleSignIn = GoogleSignIn();

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

    User? user = FirebaseAuth.instance.currentUser;
    UserModel loggedInUser = UserModel();
    @override
    void initState() {
      super.initState();

      FirebaseFirestore.instance
          .collection("users")
          .doc(user!.uid)
          .get()
          .then((value) {
        loggedInUser = UserModel.fromMap(value.data());
        setState(() {});
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
              selectedIndex: 4,
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
      body: Stack(
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
              margin: const EdgeInsets.only(top: 140.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 70.0,
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 60.0),
                  ProfileMenu(
                    text: "Personal infos",
                    icon: "images/Infos.png",
                    press: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PersonalInfos(),
                          )),
                    },
                  ),
                  ProfileMenu(
                    text: "My Card",
                    icon: "images/Card.png",
                    press: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Cards(),
                          )),
                    },
                  ),
                  ProfileMenu(
                    text: "Password",
                    icon: "images/Password.png",
                    press: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPassword(),
                          )),
                    },
                  ),
                  ProfileMenu(
                      text: "Logout",
                      icon: "images/Logout.png",
                      press: () async {
                        if (user!.displayName != null) {
                          await _googleSignIn.signOut();
                          await FirebaseAuth.instance.signOut();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        } else {
                          await FirebaseAuth.instance.signOut();
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        }
                      }),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
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
                  "Settings",
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
            margin: const EdgeInsets.only(top: 90.0, bottom: 20.0, left: 140.0),
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
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xff6998CA);
    Path path = Path()
      ..relativeLineTo(0, 230)
      ..quadraticBezierTo(size.width / 2, 350, size.width, 230)
      ..relativeLineTo(0, -260)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
