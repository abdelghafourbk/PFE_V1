import 'package:flutter/material.dart';
import 'Home.dart';

class Notifs extends StatefulWidget {
  const Notifs({Key? key}) : super(key: key);

  @override
  State<Notifs> createState() => _NotifsState();
}

class _NotifsState extends State<Notifs> {
  @override
  Widget build(BuildContext context) {
    var Notif1 = {
      'icon': Icons.receipt,
      'type': 'Penalty',
      'description':
          'You recieved a penalty of 200 Da because you didn’t purchase a ticket before taking the tramway'
    };
    var Notif2 = {
      'icon': Icons.warning,
      'type': 'Delay Alert',
      'description':
          'The tramaway you are waiting for will make a delay of 10 minutes',
    };
    var Notif3 = {
      'icon': Icons.warning,
      'type': 'Delay Alert',
      'description':
          'The tramaway you are waiting for will make a delay of 10 minutes',
    };
    var Notif4 = {
      'icon': Icons.receipt,
      'type': 'Penalty',
      'description':
          'You recieved a penalty of 200 Da because you didn’t purchase a ticket before taking the tramway'
    };
    List seenNotifs = [Notif2, Notif3];
    List newNotifs = [Notif1, Notif4];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
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
                      "Notifications",
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
                  itemCount: newNotifs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.164,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    newNotifs[index]['icon'],
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
                                          newNotifs[index]['type'],
                                          style: const TextStyle(
                                            color: Color(0xff1A1A25),
                                            fontSize: 15.0,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        newNotifs[index]['description'],
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
                  itemCount: seenNotifs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.164,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Icon(
                                    seenNotifs[index]['icon'],
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
                                          seenNotifs[index]['type'],
                                          style: const TextStyle(
                                            color: Color(0xff1A1A25),
                                            fontSize: 15.0,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        seenNotifs[index]['description'],
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
          );
        },
      ),
    );
  }
}
