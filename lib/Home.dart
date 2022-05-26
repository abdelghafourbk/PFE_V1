import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:setram/Login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.7);
  }

  Widget build(BuildContext context) {
    var activePage;
    //Popular Destinations
    var Destination1 = {
      'image': 'images/Dest1.png',
      'name': 'National Library',
      'desc': 'Description of the place should be written here ...',
      'tag': 'Destination1'
    };
    var Destination2 = {
      'image': 'images/Dest2.png',
      'name': 'USTHB',
      'desc': 'Description of the place should be written here ...',
      'tag': 'Destination2'
    };
    var Destination3 = {
      'image': 'images/Dest2.png',
      'name': 'USTHB',
      'desc': 'Description of the place should be written here ...',
      'tag': 'Destination3'
    };
    List Dest = [Destination1, Destination2, Destination3];

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
    List Subsc = [Subs1, Subs2];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 20.0, bottom: 30.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        // onPressed: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => const Notificatio(),
                        //       ));
                        // },
                        icon: const Icon(Icons.notifications_none_outlined),
                      ),
                      const SizedBox(
                        width: 35.0,
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
                      const SizedBox(
                        width: 35.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'images/userPic.png',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Choose a destination\nenjoy your trip.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 30.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    padding: const EdgeInsets.only(left: 10.0),
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
                              hintText: "Search for destination",
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
                          "Popular Destinations",
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
                                builder: (context) => const Home(),
                              ));
                        },
                        child: const Text(
                          "See All",
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
                  height: 215.0,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Dest.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        return Padding(
                          //fix cards padding later
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x1a6998CA),
                                  blurRadius: 7,
                                  offset: Offset(2.0, 2.0),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.asset(
                                      Dest[pagePosition]['image'],
                                      width: double.infinity,
                                      height: 95.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      Dest[pagePosition]['name'],
                                      style: const TextStyle(
                                        color: Color(0xff302F2F),
                                        fontSize: 16.0,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5.0),
                                  Text(
                                    Dest[pagePosition]['desc'],
                                    style: const TextStyle(
                                      color: Color(0xff88879C),
                                      fontSize: 12.0,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
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
                                builder: (context) => const Home(),
                              ));
                        },
                        child: const Text(
                          "See All",
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
                  height: 200.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: Subsc.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(2, 5),
                                ),
                              ],
                            ),
                            width: 400,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //name
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              Subsc[index]['name'],
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Poppins",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        //desc
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Text(
                                              Subsc[index]['desc'],
                                              style: const TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Align(
                                              alignment: Alignment.bottomLeft,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.pink[100]),
                                                ),
                                                child: const Text(
                                                  "Tramway",
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: 12,
                                                      color: Colors.pinkAccent),
                                                ),
                                                onPressed: () {},
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      children: [
                                        //price
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            child: Text(
                                              Subsc[index]['price'],
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ),
                                        ),
                                        //Day
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Text(
                                              Subsc[index]['Day'],
                                              style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.red,
                                                fontFamily: "Poppins",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              child: ElevatedButton(
                                            child: Row(
                                              children: const [
                                                Text(
                                                  "Purchase",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.0,
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_outlined,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            onPressed: () {
                                              debugPrint("Purchase pressed");

                                              //Navigator.push(
                                              // context,
                                              //MaterialPageRoute(
                                              // builder: (context) => Page3(),
                                              // ));
                                            },
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.blueAccent),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13.0),
                                              )),
                                            ),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ),
                        );
                      }),
                ),
                // Stack(
                //   children: [
                //     Padding(
                //       padding: EdgeInsets.all(30.0),
                //       child: Align(
                //         alignment: Alignment(0.0, 1.0),
                //         child: ClipRRect(
                //           borderRadius: BorderRadius.all(Radius.circular(30)),
                //           child: BottomNavigationBar(
                //               selectedItemColor: Colors.white,
                //               backgroundColor: Colors.blue[900],
                //               items: const [
                //                 BottomNavigationBarItem(
                //                   icon: Icon(
                //                     Icons.home,
                //                     color: Colors.white,
                //                   ),
                //                   label: "Home",
                //                 ),
                //                 BottomNavigationBarItem(
                //                     icon: Icon(
                //                       Icons.speaker_notes,
                //                       color: Colors.white,
                //                     ),
                //                     label: "notes"),
                //                 BottomNavigationBarItem(
                //                     icon: Icon(
                //                       Icons.history,
                //                       color: Colors.white,
                //                     ),
                //                     label: "history"),
                //                 BottomNavigationBarItem(
                //                     icon: Icon(
                //                       Icons.person_outline,
                //                       color: Colors.white,
                //                     ),
                //                     label: "Profile"),
                //               ]),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            );
          }),
    );
  }
}
