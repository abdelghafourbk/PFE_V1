import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:setram/Admin/HomeAd.dart';
import 'package:setram/Admin/ProfileAd.dart';
import 'package:setram/Admin/SendNotif.dart';
import 'package:setram/Admin/Statistics.dart';
import 'package:setram/Admin/Workers.dart';

class addWorker extends StatefulWidget {
  const addWorker({Key? key}) : super(key: key);

  @override
  State<addWorker> createState() => _addWorkerState();
}

class _addWorkerState extends State<addWorker> {
  @override
  Widget build(BuildContext context) {
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

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  // SizedBox(
                  //   width: width * 0.185,
                  // ),
                  const Text(
                    "Add Worker",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // SizedBox(
                  //   width: width * 0.178,
                  // ),
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 17.0),
                width: width * 0.9,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(37.0),
                  child: Image.asset(
                    'images/tramway.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "someone",
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "someone@gmail.com",
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 20.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "07 12 33 44 55",
                    labelText: "Phone",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Select a type:",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0x26EB5757)),
                    ),
                    child: const Text(
                      "Admin",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: Color(0XFFEB5757)),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0x26302F2F)),
                    ),
                    child: const Text(
                      "Control Agent",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                          color: Color(0xFF302F2F)),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                    width: 150.0,
                    height: 40,
                    child: ElevatedButton(
                      child: const Text("Confirm"),
                      onPressed: () {
                        debugPrint("Confirm pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeAd(),
                            ));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF302F2F)),
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
