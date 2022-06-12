import 'package:flutter/material.dart';
import '../Login.dart';
import '../ProfileScreen/Password.dart';
import '../ProfileScreen/EditPersonalInfos.dart';

class ProfileAd extends StatefulWidget {
  const ProfileAd({Key? key}) : super(key: key);
  static String routeName = "/profile";
  @override
  State<ProfileAd> createState() => _ProfileAdState();
}

class _ProfileAdState extends State<ProfileAd> {
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
              child: Column(
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/circleavatar.png"),
                    ),
                  ),
                  Text(
                    "Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Admin",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue[200],
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                    ),
                  ),
                  SizedBox(height: 20),
                  ProfileMenu(
                    text: "Personal infos",
                    icon: "images/Infos.png",
                    press: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersonalInfos(),
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
                            builder: (context) => Password(),
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
                            builder: (context) => Login(),
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
    Paint paint = Paint()..color = Colors.blueAccent;
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

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);
  final String text, icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            primary: Colors.black,
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: Colors.white,
            fixedSize: Size.fromHeight(55)),
        onPressed: press,
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 53,
            ),
            SizedBox(width: 20),
            Expanded(child: Text(text)),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
