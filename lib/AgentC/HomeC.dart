import 'package:flutter/material.dart';
import 'package:setram/AgentC/Penalty.dart';

class HomeC extends StatefulWidget {
  const HomeC({Key? key}) : super(key: key);

  @override
  State<HomeC> createState() => _HomeCState();
}

class _HomeCState extends State<HomeC> {
  @override
  Widget build(BuildContext context) {
    var Notif1 = {
      'icon': Icons.info,
      'type': 'Information',
      'description': 'The service was late today. Respect the schedule',
    };
    var Notif4 = {
      'icon': Icons.info,
      'type': 'Information',
      'description': 'Go to Rabia station, need more agents',
    };
    var Notif3 = {
      'icon': Icons.warning,
      'type': 'Thieft',
      'description': 'Thieft in the tramway N°129, a phone was stolen',
    };
    var Notif2 = {
      'icon': Icons.warning,
      'type': 'Thieft',
      'description': 'Thieft in the tramway N°129, a phone was stolen',
    };
    List notifs2 = [Notif2, Notif3];
    List notifs = [Notif1, Notif4];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 32.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Welcome back",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                    ),
                  ),

                  // SizedBox(
                  //   width: width * 0.12,
                  // ),
                  Container(
                    width: 57,
                    height: 57,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Penalty()));
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
              "Demand fines and penalties\nto passengers",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 30.0),
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
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
                          hintText: "Search for Passenger",
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
            const Text(
              "Notifications",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "New",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: notifs.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        width: width * 0.9,
                        height: height * 0.164,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                notifs[index]['icon'],
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
                                      notifs[index]['type'],
                                      style: const TextStyle(
                                        color: Color(0xff1A1A25),
                                        fontSize: 15.0,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    notifs[index]['description'],
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
                  ],
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Seen",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: notifs2.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        width: width * 0.9,
                        height: height * 0.164,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                notifs2[index]['icon'],
                                color: const Color(0xffEC473D),
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
                                      notifs2[index]['type'],
                                      style: const TextStyle(
                                        color: Color(0xff1A1A25),
                                        fontSize: 15.0,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    notifs2[index]['description'],
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
                          color: const Color(0xffFDEBE0),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
