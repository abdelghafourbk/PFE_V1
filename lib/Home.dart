import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
    List Dest = [Destination1, Destination2];

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
          // physics: const NeverScrollableScrollPhysics(),
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
                        icon: const Icon(Icons.notifications_none_outlined),
                      ),
                      const SizedBox(
                        width: 55.0,
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
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 55.0,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("images/circleavatar.png"),
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
                    fontWeight: FontWeight.bold,
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
                            fontWeight: FontWeight.w900,
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
                  height: 180.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: Dest.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(2, 5),
                                ),
                              ],
                            ),
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Image.asset(
                                        Dest[index]['image'],
                                        width: 250.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(
                                        Dest[index]['name'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(
                                        Dest[index]['desc'],
                                        style: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
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
                            fontWeight: FontWeight.w900,
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
                              borderRadius: BorderRadius.circular(20),
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
                                              children: [
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
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Align(
                        alignment: Alignment(0.0, 1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: BottomNavigationBar(
                              selectedItemColor: Colors.white,
                              backgroundColor: Colors.blue[900],
                              items: const [
                                BottomNavigationBarItem(
                                  icon: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  ),
                                  label: "Home",
                                ),
                                BottomNavigationBarItem(
                                    icon: Icon(
                                      Icons.speaker_notes,
                                      color: Colors.white,
                                    ),
                                    label: "notes"),
                                BottomNavigationBarItem(
                                    icon: Icon(
                                      Icons.history,
                                      color: Colors.white,
                                    ),
                                    label: "history"),
                                BottomNavigationBarItem(
                                    icon: Icon(
                                      Icons.person_outline,
                                      color: Colors.white,
                                    ),
                                    label: "Profile"),
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
