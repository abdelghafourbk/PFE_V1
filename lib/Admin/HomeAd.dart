import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/Admin/ProfileAd.dart';
import 'package:setram/Admin/SendNotif.dart';
import 'package:setram/Admin/Statistics.dart';
import 'package:setram/Admin/Workers.dart';
import 'package:setram/Admin/addWorker.dart';
import 'Notifs.dart';
import 'Subsciption.dart';
import 'addSub.dart';

class HomeAd extends StatefulWidget {
  const HomeAd({Key? key}) : super(key: key);

  @override
  State<HomeAd> createState() => _HomeAdState();
}

class _HomeAdState extends State<HomeAd> {
  bool _visible = false;
  void _visi() {
    setState(() {
      //if(workers[index]['desc'] = 'Agent de controle')
      _visible = !_visible;
    });
  }

  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.7);
  }

  Widget build(BuildContext context) {
    var Subs1 = {
      'name': 'Tawasol School',
      'desc': 'For pupils in schools.',
      'price': '300DA',
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
    var Worker1 = {
      'image': "images/user1.png",
      'name': 'Flen ben flen',
      'desc': 'Agent de controle',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker1'
    };
    var Worker2 = {
      'image': "images/user2.png",
      'name': 'someone',
      'desc': 'Agent de controle',
      'phone': '05 55 12 45 87',
      'Email': 'some@gmail.com',
      'tag': 'Worker2'
    };
    var Worker3 = {
      'image': "images/user1.png",
      'name': 'Flen ben flen',
      'desc': 'Admin',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker3'
    };
    var Worker4 = {
      'image': "images/user2.png",
      'name': 'Flen ben flen',
      'desc': 'Agent de controle',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker4'
    };
    List workers = [Worker1, Worker2, Worker3, Worker4];
    var activePage;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 32.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotifsAd(),
                          ));
                    },
                    icon: const Icon(Icons.notifications_none_outlined),
                  ),
                  SizedBox(
                    width: width * 0.12,
                  ),
                  Column(
                    children: const [
                      Text(
                        "Welcome back,",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                      Text(
                        "FirstName",
                        style: TextStyle(
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
                              builder: (context) => const ProfileAd(),
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
              "Manage subscriptions\n and workers",
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
                          hintText: "Search for Worker",
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
                            builder: (context) => const addSub(),
                          ));
                    },
                    child: const Text(
                      "Add Subscription",
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
                        left: 24.0,
                        right: 24.0,
                        bottom: 10.0,
                      ),
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
                                      SizedBox(
                                        width: width * 0.09,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          width: 95,
                                          height: 30,
                                          child: Row(
                                            // mainAxisAlignment:
                                            //      MainAxisAlignment.spaceBetween,
                                            children: [
                                              ElevatedButton(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: const [
                                                    Text(
                                                      "Delete",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.delete_outline,
                                                      color: Colors.white,
                                                    ),
                                                  ],
                                                ),
                                                onPressed: () {
                                                  debugPrint("Delete pressed");
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          const Color(
                                                              0xffF62921)),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  )),
                                                ),
                                              ),
                                            ],
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
                                              "Modify",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 24.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Workers",
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
                            builder: (context) => const addWorker(),
                          ));
                    },
                    child: const Text(
                      "Add Worker",
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
              height: 270,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: workers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  workers[index]['image'],
                                  width: width * 0.18,
                                  height: width * 0.18,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                workers[index]['name'],
                                style: const TextStyle(
                                  color: Color(0xff302F2F),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      // width: 80,
                                      height: 32,
                                      decoration: BoxDecoration(
                                        color: const Color(0x26302F2F),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: TextButton(
                                          child: Text(
                                            workers[index]['desc'],
                                            style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff302F2F),
                                            ),
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                workers[index]['phone'],
                                style: const TextStyle(
                                  color: Color(0xff88879C),
                                  fontSize: 14.0,
                                  fontFamily: "Poppins",
                                ),
                              ),

                              Text(
                                workers[index]['Email'],
                                style: const TextStyle(
                                  color: Color(0xff88879C),
                                  fontSize: 14.0,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Delete",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.delete_outline,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      debugPrint("Delete pressed");
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xffF62921)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      )),
                                    ),
                                  )),
                              // Visibility(
                              //   child: Container(
                              //       width: 100,
                              //       child: ElevatedButton(
                              //         child: Row(
                              //           children: const [
                              //             Text(
                              //               "Delete",
                              //               style: TextStyle(
                              //                 color: Colors.white,
                              //               ),
                              //             ),
                              //             Icon(
                              //               Icons.delete_outline,
                              //               color: Colors.white,
                              //             ),
                              //           ],
                              //         ),
                              //         onPressed: () {
                              //           debugPrint("Delete pressed");
                              //         },
                              //         style: ButtonStyle(
                              //           backgroundColor:
                              //               MaterialStateProperty.all(
                              //                   Colors.deepOrange),
                              //           shape: MaterialStateProperty.all<
                              //                   RoundedRectangleBorder>(
                              //               RoundedRectangleBorder(
                              //             borderRadius:
                              //                 BorderRadius.circular(10.0),
                              //           )),
                              //         ),
                              //       )),
                              //   visible: _visible,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
