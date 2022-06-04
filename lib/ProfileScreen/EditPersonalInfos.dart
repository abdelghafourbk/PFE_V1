import 'package:flutter/material.dart';

import 'Profile.dart';

class PersonalInfos extends StatefulWidget {
  const PersonalInfos({Key? key}) : super(key: key);

  @override
  State<PersonalInfos> createState() => _PersonalInfosState();
}

class _PersonalInfosState extends State<PersonalInfos> {
  bool visible = false;
  void hide() {
    setState(() {
      visible = !visible;
    });
  }

  bool visible1 = false;
  void hide1() {
    setState(() {
      visible1 = !visible1;
    });
  }

  bool visible2 = false;
  void hide2() {
    setState(() {
      visible2 = !visible2;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String name = "B.Abdelghafour";
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                margin: const EdgeInsets.only(
                  top: 140.0,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70.0,
                    ),
                    Text(
                      name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 60.0),
                    const Text(
                      "Personal informations",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff302F2F),
                        fontSize: 18.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "First Name",
                            style: TextStyle(
                              color: Color(0xff272C2F),
                              fontSize: 15.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          const Text(
                            "Abdelghafour",
                            style: TextStyle(
                              color: Color(0xb3272C2F),
                              fontSize: 12.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          const SizedBox(
                            width: 0.5,
                          ),
                          IconButton(
                            icon: Icon(
                              visible
                                  ? Icons.keyboard_arrow_down_rounded
                                  : Icons.arrow_forward_ios_rounded,
                            ),
                            onPressed: () => {
                              hide(),
                            },
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 40.0),
                        child: Container(
                          width: width * 0.8,
                          height: 43,
                          child: const TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              hintText: "Flen",
                              hintStyle: TextStyle(
                                  fontSize: 14.0, color: Color(0x66000000)),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      visible: visible,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Last Name",
                            style: TextStyle(
                              color: Color(0xff272C2F),
                              fontSize: 15.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.2,
                          ),
                          const Text(
                            "Benkhelifa",
                            style: TextStyle(
                              color: Color(0xb3272C2F),
                              fontSize: 12.0,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(
                            width: 0.5,
                          ),
                          IconButton(
                            icon: Icon(visible1
                                ? Icons.keyboard_arrow_down
                                : Icons.arrow_forward_ios),
                            onPressed: () => {
                              hide1(),
                            },
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 40.0),
                        child: Container(
                          width: width * 0.8,
                          height: 43,
                          child: const TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              hintText: "BenFlen",
                              hintStyle: TextStyle(
                                  fontSize: 14.0, color: Color(0x66000000)),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                      visible: visible1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Color(0xff272C2F),
                              fontSize: 15.0,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.1,
                          ),
                          const Text(
                            "manipulatorkira@gmail.com",
                            style: TextStyle(
                              color: Color(0xb3272C2F),
                              fontSize: 12.0,
                              fontFamily: "Poppins",
                            ),
                          ),
                          const SizedBox(
                            width: 0.5,
                          ),
                          IconButton(
                            icon: Icon(visible2
                                ? Icons.keyboard_arrow_down
                                : Icons.arrow_forward_ios),
                            onPressed: () => {
                              hide2(),
                            },
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 40.0, bottom: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            hintText: "abdelghafoubk@gmail.com",
                            hintStyle: TextStyle(
                                fontSize: 14.0, color: Color(0x66000000)),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      visible: visible2,
                    ),
                    Visibility(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                        child: Container(
                            width: 155.0,
                            height: 40,
                            child: ElevatedButton(
                              child: const Text(
                                "Save infos",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              onPressed: () {
                                debugPrint("Save infos pressed");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ProfileScreen(),
                                    ));
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff302F2F)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                              ),
                            )),
                      ),
                      visible: visible1 || visible2 || visible,
                    ),
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
                    "Profile",
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
              margin:
                  const EdgeInsets.only(top: 90.0, bottom: 20.0, left: 140.0),
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
      ),
    );
  }
}
