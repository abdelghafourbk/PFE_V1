import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/Admin/Notifs.dart';
import 'package:setram/Admin/ProfileAd.dart';
import 'package:setram/Admin/SendNotif.dart';
import 'package:setram/Admin/Statistics.dart';
import 'package:setram/Admin/addSub.dart';
import 'HomeAd.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
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
    var Subs3 = {
      'name': 'Tawasol University',
      'desc':
          'For people who study in universities and Vocational training centers whose age does not exceed 29.',
      'price': '600DA',
      'Day': '30 days',
      'tag': 'Subs3'
    };

    List Subsc = [Subs1, Subs2, Subs3];
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
              selectedIndex: 0,
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
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            top: 32.0,
            bottom: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    "Subscriptions",
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
                        //       builder: (context) => const Subscription(),
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

              // SizedBox(
              //   width: width,
              //   child: ListView.builder(
              //       scrollDirection: Axis.vertical,
              //       shrinkWrap: true,
              //       itemCount: Subsc.length,
              //       itemBuilder: (BuildContext context, int index) {
              //         return Padding(
              //           padding: const EdgeInsets.only(
              //             left: 24.0,
              //             right: 24.0,
              //             bottom: 10.0,
              //           ),
              //           child: Container(
              //             width: 350,
              //             decoration: BoxDecoration(
              //               color: Colors.white,
              //               border: Border.all(color: const Color(0x80341AF6)),
              //               borderRadius: BorderRadius.circular(8.0),
              //               boxShadow: const [
              //                 BoxShadow(
              //                   color: Color(0x1a2D9CDB),
              //                   blurRadius: 7,
              //                   offset: Offset(2.0, 2.0),
              //                 ),
              //               ],
              //             ),
              //             child: Padding(
              //               padding: const EdgeInsets.all(15.0),
              //               child: Row(children: [
              //                 Expanded(
              //                   flex: 4,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.start,
              //                     children: [
              //                       //name
              //                       Expanded(
              //                         flex: 1,
              //                         child: Text(
              //                           Subsc[index]['name'],
              //                           style: const TextStyle(
              //                             fontSize: 14,
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.bold,
              //                           ),
              //                         ),
              //                       ),
              //                       //desc
              //                       Expanded(
              //                         flex: 2,
              //                         child: Text(
              //                           Subsc[index]['desc'],
              //                           style: const TextStyle(
              //                             color: Colors.grey,
              //                             fontSize: 11,
              //                             fontFamily: "Poppins",
              //                           ),
              //                         ),
              //                       ),
              //                       Row(
              //                         mainAxisAlignment:
              //                             MainAxisAlignment.start,
              //                         crossAxisAlignment:
              //                             CrossAxisAlignment.center,
              //                         children: [
              //                           Container(
              //                             width: 80,
              //                             height: 32,
              //                             decoration: BoxDecoration(
              //                               color: const Color(0xffFCE6E6),
              //                               borderRadius:
              //                                   BorderRadius.circular(8.0),
              //                             ),
              //                             child: Align(
              //                               alignment: Alignment.center,
              //                               child: TextButton(
              //                                 child: const Text(
              //                                   "Tramway",
              //                                   style: TextStyle(
              //                                     fontFamily: 'Poppins',
              //                                     fontSize: 12.0,
              //                                     fontWeight: FontWeight.w500,
              //                                     color: Color(0xffEB5757),
              //                                   ),
              //                                 ),
              //                                 onPressed: () {},
              //                               ),
              //                             ),
              //                           ),
              //                           SizedBox(
              //                             width: width * 0.09,
              //                           ),
              //                           Expanded(
              //                             flex: 1,
              //                             child: Container(
              //                               width: 95,
              //                               height: 30,
              //                               child: Row(
              //                                 // mainAxisAlignment:
              //                                 //      MainAxisAlignment.spaceBetween,
              //                                 children: [
              //                                   ElevatedButton(
              //                                     child: Row(
              //                                       mainAxisAlignment:
              //                                           MainAxisAlignment
              //                                               .spaceBetween,
              //                                       children: const [
              //                                         Text(
              //                                           "Delete",
              //                                           style: TextStyle(
              //                                             color: Colors.white,
              //                                           ),
              //                                         ),
              //                                         Icon(
              //                                           Icons.delete_outline,
              //                                           color: Colors.white,
              //                                         ),
              //                                       ],
              //                                     ),
              //                                     onPressed: () {
              //                                       debugPrint(
              //                                           "Delete pressed");
              //                                     },
              //                                     style: ButtonStyle(
              //                                       backgroundColor:
              //                                           MaterialStateProperty
              //                                               .all(const Color(
              //                                                   0xffF62921)),
              //                                       shape: MaterialStateProperty
              //                                           .all<RoundedRectangleBorder>(
              //                                               RoundedRectangleBorder(
              //                                         borderRadius:
              //                                             BorderRadius.circular(
              //                                                 10.0),
              //                                       )),
              //                                     ),
              //                                   ),
              //                                 ],
              //                               ),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //                 Expanded(
              //                   flex: 2,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       //price
              //                       Expanded(
              //                         flex: 1,
              //                         child: Text(
              //                           Subsc[index]['price'],
              //                           style: const TextStyle(
              //                             fontSize: 16,
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.w500,
              //                           ),
              //                         ),
              //                       ),
              //                       //Day
              //                       Expanded(
              //                         flex: 2,
              //                         child: Text(
              //                           Subsc[index]['Day'],
              //                           style: const TextStyle(
              //                             fontSize: 13,
              //                             color: Colors.red,
              //                             fontFamily: "Poppins",
              //                             fontWeight: FontWeight.w500,
              //                           ),
              //                         ),
              //                       ),
              //                       Expanded(
              //                         flex: 1,
              //                         child: Container(
              //                           width: 95,
              //                           height: 30,
              //                           decoration: BoxDecoration(
              //                             color: const Color(0xff341AF6),
              //                             borderRadius:
              //                                 BorderRadius.circular(8.0),
              //                           ),
              //                           child: Row(
              //                             children: [
              //                               TextButton(
              //                                 child: const Text(
              //                                   "Modify",
              //                                   style: TextStyle(
              //                                     fontFamily: 'Poppins',
              //                                     fontSize: 12.0,
              //                                     fontWeight: FontWeight.w500,
              //                                     color: Colors.white,
              //                                   ),
              //                                 ),
              //                                 onPressed: () {
              //                                   debugPrint("Purchase pressed");
              //                                   //Navigator.push(
              //                                   // context,
              //                                   //MaterialPageRoute(
              //                                   // builder: (context) => Page3(),
              //                                   // ));
              //                                 },
              //                               ),
              //                               const Icon(
              //                                 Icons.arrow_forward_outlined,
              //                                 color: Colors.white,
              //                                 size: 15.0,
              //                               ),
              //                             ],
              //                           ),
              //                         ),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ]),
              //             ),
              //           ),
              //         );
              //       }),
              // ),
              Padding(
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
                                Subsc[0]['name'],
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
                                Subsc[0]['desc'],
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFCE6E6),
                                    borderRadius: BorderRadius.circular(8.0),
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
                                Subsc[0]['price'],
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
                                Subsc[0]['Day'],
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
                                  borderRadius: BorderRadius.circular(8.0),
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
              ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 24.0,
              //     right: 24.0,
              //     bottom: 10.0,
              //   ),
              //   child: Container(
              //     width: 350,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       border: Border.all(color: const Color(0x80341AF6)),
              //       borderRadius: BorderRadius.circular(8.0),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Color(0x1a2D9CDB),
              //           blurRadius: 7,
              //           offset: Offset(2.0, 2.0),
              //         ),
              //       ],
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Row(children: [
              //         Expanded(
              //           flex: 4,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               //name
              //               Expanded(
              //                 flex: 1,
              //                 child: Text(
              //                   Subsc[1]['name'],
              //                   style: const TextStyle(
              //                     fontSize: 14,
              //                     fontFamily: "Poppins",
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //               ),
              //               //desc
              //               Expanded(
              //                 flex: 2,
              //                 child: Text(
              //                   Subsc[1]['desc'],
              //                   style: const TextStyle(
              //                     color: Colors.grey,
              //                     fontSize: 11,
              //                     fontFamily: "Poppins",
              //                   ),
              //                 ),
              //               ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.center,
              //                 children: [
              //                   Container(
              //                     width: 80,
              //                     height: 32,
              //                     decoration: BoxDecoration(
              //                       color: const Color(0xffFCE6E6),
              //                       borderRadius: BorderRadius.circular(8.0),
              //                     ),
              //                     child: Align(
              //                       alignment: Alignment.center,
              //                       child: TextButton(
              //                         child: const Text(
              //                           "Tramway",
              //                           style: TextStyle(
              //                             fontFamily: 'Poppins',
              //                             fontSize: 12.0,
              //                             fontWeight: FontWeight.w500,
              //                             color: Color(0xffEB5757),
              //                           ),
              //                         ),
              //                         onPressed: () {},
              //                       ),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     width: width * 0.09,
              //                   ),
              //                   Expanded(
              //                     flex: 1,
              //                     child: Container(
              //                       width: 95,
              //                       height: 30,
              //                       child: Row(
              //                         // mainAxisAlignment:
              //                         //      MainAxisAlignment.spaceBetween,
              //                         children: [
              //                           ElevatedButton(
              //                             child: Row(
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.spaceBetween,
              //                               children: const [
              //                                 Text(
              //                                   "Delete",
              //                                   style: TextStyle(
              //                                     color: Colors.white,
              //                                   ),
              //                                 ),
              //                                 Icon(
              //                                   Icons.delete_outline,
              //                                   color: Colors.white,
              //                                 ),
              //                               ],
              //                             ),
              //                             onPressed: () {
              //                               debugPrint("Delete pressed");
              //                             },
              //                             style: ButtonStyle(
              //                               backgroundColor:
              //                                   MaterialStateProperty.all(
              //                                       const Color(0xffF62921)),
              //                               shape: MaterialStateProperty.all<
              //                                       RoundedRectangleBorder>(
              //                                   RoundedRectangleBorder(
              //                                 borderRadius:
              //                                     BorderRadius.circular(10.0),
              //                               )),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.end,
              //             children: [
              //               //price
              //               Expanded(
              //                 flex: 1,
              //                 child: Text(
              //                   Subsc[1]['price'],
              //                   style: const TextStyle(
              //                     fontSize: 16,
              //                     fontFamily: "Poppins",
              //                     fontWeight: FontWeight.w500,
              //                   ),
              //                 ),
              //               ),
              //               //Day
              //               Expanded(
              //                 flex: 2,
              //                 child: Text(
              //                   Subsc[1]['Day'],
              //                   style: const TextStyle(
              //                     fontSize: 13,
              //                     color: Colors.red,
              //                     fontFamily: "Poppins",
              //                     fontWeight: FontWeight.w500,
              //                   ),
              //                 ),
              //               ),
              //               Expanded(
              //                 flex: 1,
              //                 child: Container(
              //                   width: 95,
              //                   height: 30,
              //                   decoration: BoxDecoration(
              //                     color: const Color(0xff341AF6),
              //                     borderRadius: BorderRadius.circular(8.0),
              //                   ),
              //                   child: Row(
              //                     children: [
              //                       TextButton(
              //                         child: const Text(
              //                           "Modify",
              //                           style: TextStyle(
              //                             fontFamily: 'Poppins',
              //                             fontSize: 12.0,
              //                             fontWeight: FontWeight.w500,
              //                             color: Colors.white,
              //                           ),
              //                         ),
              //                         onPressed: () {
              //                           debugPrint("Purchase pressed");
              //                           //Navigator.push(
              //                           // context,
              //                           //MaterialPageRoute(
              //                           // builder: (context) => Page3(),
              //                           // ));
              //                         },
              //                       ),
              //                       const Icon(
              //                         Icons.arrow_forward_outlined,
              //                         color: Colors.white,
              //                         size: 15.0,
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ]),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //     left: 24.0,
              //     right: 24.0,
              //     bottom: 10.0,
              //   ),
              //   child: Container(
              //     width: 350,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       border: Border.all(color: const Color(0x80341AF6)),
              //       borderRadius: BorderRadius.circular(8.0),
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Color(0x1a2D9CDB),
              //           blurRadius: 7,
              //           offset: Offset(2.0, 2.0),
              //         ),
              //       ],
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Row(children: [
              //         Expanded(
              //           flex: 4,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               //name
              //               Expanded(
              //                 flex: 1,
              //                 child: Text(
              //                   Subsc[2]['name'],
              //                   style: const TextStyle(
              //                     fontSize: 14,
              //                     fontFamily: "Poppins",
              //                     fontWeight: FontWeight.bold,
              //                   ),
              //                 ),
              //               ),
              //               //desc
              //               Expanded(
              //                 flex: 2,
              //                 child: Text(
              //                   Subsc[2]['desc'],
              //                   style: const TextStyle(
              //                     color: Colors.grey,
              //                     fontSize: 11,
              //                     fontFamily: "Poppins",
              //                   ),
              //                 ),
              //               ),
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 crossAxisAlignment: CrossAxisAlignment.center,
              //                 children: [
              //                   Container(
              //                     width: 80,
              //                     height: 32,
              //                     decoration: BoxDecoration(
              //                       color: const Color(0xffFCE6E6),
              //                       borderRadius: BorderRadius.circular(8.0),
              //                     ),
              //                     child: Align(
              //                       alignment: Alignment.center,
              //                       child: TextButton(
              //                         child: const Text(
              //                           "Tramway",
              //                           style: TextStyle(
              //                             fontFamily: 'Poppins',
              //                             fontSize: 12.0,
              //                             fontWeight: FontWeight.w500,
              //                             color: Color(0xffEB5757),
              //                           ),
              //                         ),
              //                         onPressed: () {},
              //                       ),
              //                     ),
              //                   ),
              //                   SizedBox(
              //                     width: width * 0.09,
              //                   ),
              //                   Expanded(
              //                     flex: 1,
              //                     child: Container(
              //                       width: 95,
              //                       height: 30,
              //                       child: Row(
              //                         // mainAxisAlignment:
              //                         //      MainAxisAlignment.spaceBetween,
              //                         children: [
              //                           ElevatedButton(
              //                             child: Row(
              //                               mainAxisAlignment:
              //                                   MainAxisAlignment.spaceBetween,
              //                               children: const [
              //                                 Text(
              //                                   "Delete",
              //                                   style: TextStyle(
              //                                     color: Colors.white,
              //                                   ),
              //                                 ),
              //                                 Icon(
              //                                   Icons.delete_outline,
              //                                   color: Colors.white,
              //                                 ),
              //                               ],
              //                             ),
              //                             onPressed: () {
              //                               debugPrint("Delete pressed");
              //                             },
              //                             style: ButtonStyle(
              //                               backgroundColor:
              //                                   MaterialStateProperty.all(
              //                                       const Color(0xffF62921)),
              //                               shape: MaterialStateProperty.all<
              //                                       RoundedRectangleBorder>(
              //                                   RoundedRectangleBorder(
              //                                 borderRadius:
              //                                     BorderRadius.circular(10.0),
              //                               )),
              //                             ),
              //                           ),
              //                         ],
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //         Expanded(
              //           flex: 2,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.end,
              //             children: [
              //               //price
              //               Expanded(
              //                 flex: 1,
              //                 child: Text(
              //                   Subsc[2]['price'],
              //                   style: const TextStyle(
              //                     fontSize: 16,
              //                     fontFamily: "Poppins",
              //                     fontWeight: FontWeight.w500,
              //                   ),
              //                 ),
              //               ),
              //               //Day
              //               Expanded(
              //                 flex: 2,
              //                 child: Text(
              //                   Subsc[2]['Day'],
              //                   style: const TextStyle(
              //                     fontSize: 13,
              //                     color: Colors.red,
              //                     fontFamily: "Poppins",
              //                     fontWeight: FontWeight.w500,
              //                   ),
              //                 ),
              //               ),
              //               Expanded(
              //                 flex: 1,
              //                 child: Container(
              //                   width: 95,
              //                   height: 30,
              //                   decoration: BoxDecoration(
              //                     color: const Color(0xff341AF6),
              //                     borderRadius: BorderRadius.circular(8.0),
              //                   ),
              //                   child: Row(
              //                     children: [
              //                       TextButton(
              //                         child: const Text(
              //                           "Modify",
              //                           style: TextStyle(
              //                             fontFamily: 'Poppins',
              //                             fontSize: 12.0,
              //                             fontWeight: FontWeight.w500,
              //                             color: Colors.white,
              //                           ),
              //                         ),
              //                         onPressed: () {
              //                           debugPrint("Purchase pressed");
              //                           //Navigator.push(
              //                           // context,
              //                           //MaterialPageRoute(
              //                           // builder: (context) => Page3(),
              //                           // ));
              //                         },
              //                       ),
              //                       const Icon(
              //                         Icons.arrow_forward_outlined,
              //                         color: Colors.white,
              //                         size: 15.0,
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ]),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                    width: 150.0,
                    height: 40,
                    child: ElevatedButton(
                      child: const Text("Add Subscription"),
                      onPressed: () {
                        debugPrint("Add Subscription pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const addSub(),
                            ));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff302F2F)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
