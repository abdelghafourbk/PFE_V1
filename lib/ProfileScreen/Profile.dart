import 'package:flutter/material.dart';
import 'package:setram/Login.dart';
import 'package:setram/ProfileScreen/Cards.dart';
import 'package:setram/ProfileScreen/Password.dart';
import 'EditPersonalInfos.dart';
import 'components/ProfileMenu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Row(
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
                width: width * 0.166,
              ),
              const Text(
                "Settings",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
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
              child: Column(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage("images/userPic.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "B.Abdelghafour",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
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
                            builder: (context) => const Password(),
                          )),
                    },
                  ),
                  ProfileMenu(
                    text: "Logout",
                    icon: "images/Logout.png",
                    press: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          )),
                    },
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

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xff6998CA);
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
