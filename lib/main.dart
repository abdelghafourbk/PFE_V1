import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:setram/Page2.dart';
import 'package:setram/Signup.dart';
import 'package:setram/provider/google_sign_in.dart';
import 'firebase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SETRAM',
          home: MyHomePage(title: 'Home'),
        ),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 6.0,
      width: isActive ? 17.0 : 6.0,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xff341AF6) : const Color(0x8C341AF6),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              "images/Logo_SETRAM_Algérie1.png",
              width: 130.0,
              height: 50.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 450,
            child: PageView(
              physics: const ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage(
                            'images/QRCode-rafiki1.png',
                          ),
                          width: 300.0,
                          height: 250.0,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Scan station Qr code",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Find the station Qr code, make sure that your camera is clean and scan it",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage(
                            'images/Getstarted2.png',
                          ),
                          width: 300.0,
                          height: 250.0,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Confirm payment",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Choose the ticket duration and purchase your E-ticket",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const <Widget>[
                      Center(
                        child: Image(
                          image: AssetImage(
                            'images/Getstarted3.png',
                          ),
                          width: 300.0,
                          height: 250.0,
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Enjoy your trip",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Enjoy your trip with setram and show controller your ticket when he asks for it",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
          const SizedBox(
            height: 30.0,
          ),
          _currentPage != _numPages - 1
              ? Container(
                  width: 350.0,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      "Next",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff341AF6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                    ),
                  ),
                )
              : Container(
                  width: 350.0,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      debugPrint("Get Started pressed");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff341AF6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      )),
                    ),
                  ))
        ],
      )),
    );
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Container(
    //           child: Image.asset(
    //             "images/Logo_SETRAM_Algérie1.png",
    //             width: 130.0,
    //             height: 50.0,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 38.0,
    //         ),
    //         Container(
    //           child: Image.asset(
    //             "images/QRCode-rafiki1.png",
    //             width: 300.0,
    //             height: 250.0,
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 10.0,
    //         ),
    //         const Text("Scan station Qr code",
    //             style: TextStyle(
    //               color: Colors.black,
    //               fontSize: 20.0,
    //               fontFamily: "Poppins",
    //               fontWeight: FontWeight.w700,
    //             )),
    //         Container(
    //           padding:
    //               const EdgeInsets.only(left: 50.0, top: 20.0, right: 50.0),
    //           child: const Text(
    //               "Find the station Qr code, make sure that your camera is clean and scan it",
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                 color: Colors.black,
    //                 fontSize: 14.0,
    //                 fontFamily: "Poppins",
    //               )),
    //         ),
    //         const SizedBox(
    //           height: 30.0,
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Container(
    //               width: 17,
    //               height: 6,
    //               decoration: BoxDecoration(
    //                 shape: BoxShape.rectangle,
    //                 color: const Color(0xff341AF6),
    //                 borderRadius: BorderRadius.circular(10.0),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 10,
    //             ),
    //             Container(
    //               width: 6,
    //               height: 6,
    //               decoration: const BoxDecoration(
    //                 shape: BoxShape.circle,
    //                 color: Color(0x8C341AF6),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 10,
    //             ),
    //             Container(
    //               width: 6,
    //               height: 6,
    //               decoration: const BoxDecoration(
    //                 shape: BoxShape.circle,
    //                 color: Color(0x8C341AF6),
    //               ),
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 120.0,
    //         ),
    //         Container(
    //             width: 350.0,
    //             height: 50,
    //             child: ElevatedButton(
    //               child: const Text(
    //                 "Next",
    //                 style: TextStyle(
    //                   fontFamily: "Poppins",
    //                   fontSize: 16.0,
    //                   fontWeight: FontWeight.w500,
    //                 ),
    //               ),
    //               onPressed: () {
    //                 debugPrint("Next pressed");
    //                 Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => const Page2(),
    //                   ),
    //                 );
    //               },
    //               style: ButtonStyle(
    //                 backgroundColor:
    //                     MaterialStateProperty.all(const Color(0xff341AF6)),
    //                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                     RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(25.0),
    //                 )),
    //               ),
    //             )),
    //       ],
    //     ),
    //   ),
    // );
  }
}
