import 'package:flutter/material.dart';
import 'package:setram/ScanQrCode.dart';
import 'package:setram/SelectDestination.dart';
import 'dart:math';
import 'globals.dart' as stations;

class Road extends StatefulWidget {
  const Road({Key? key}) : super(key: key);

  @override
  State<Road> createState() => _RoadState();
}

class _RoadState extends State<Road> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var Payment1 = {
      'id': 'N° 12341',
      'Station1': 'Ruisseau',
      'Time1': '06.30',
      'Station2': 'Tripoli-Hamadache',
      'Time2': '06.40',
      'price': '40DA',
      'Day': '1.5 Hour',
      'Date': '16/05/2022',
      'Duration': '10 mins',
      'Dest': 'To Ruisseaux',
    };
    List Payment = [Payment1];
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 24.0,
            left: 24.0,
            top: 32.0,
            bottom: 20.0,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
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
                    width: width * 0.25,
                  ),
                  const Text(
                    "Road",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  Container(
                    width: 57,
                    height: 57,
                    child: IconButton(
                      onPressed: () {
                        //temp to check the noQrCodeDetected page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScanQrCode(),
                            ));
                      },
                      icon: ClipOval(
                        child: Image.asset(
                          'images/userPic.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //this thing is hardcoded fix it later
              const SizedBox(
                height: 45.0,
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          width: 13,
                          height: 13,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 2,
                                  left: 2,
                                  child: Container(
                                      width: 9,
                                      height: 9,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(51, 25, 246,
                                                  0.41999998688694015),
                                              Color.fromRGBO(51, 25, 246, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9, 9)),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.10000000149011612),
                                              offset: Offset(4, 4),
                                              blurRadius: 8)
                                        ],
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              48, 47, 47, 1),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.elliptical(13, 13)),
                                      ))),
                            ],
                          ),
                        ),
                        Image.asset(
                          "images/Line.png",
                        ),
                        Container(
                          width: 13,
                          height: 13,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 2,
                                  left: 2,
                                  child: Container(
                                      width: 9,
                                      height: 9,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(189, 195, 205, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9, 9)),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.10000000149011612),
                                              offset: Offset(4, 4),
                                              blurRadius: 8)
                                        ],
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              48, 47, 47, 1),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.elliptical(13, 13)),
                                      ))),
                            ],
                          ),
                        ),
                        Image.asset(
                          "images/Line.png",
                        ),
                        Container(
                          width: 13,
                          height: 13,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 2,
                                  left: 2,
                                  child: Container(
                                      width: 9,
                                      height: 9,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(189, 195, 205, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9, 9)),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.10000000149011612),
                                              offset: Offset(4, 4),
                                              blurRadius: 8)
                                        ],
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              48, 47, 47, 1),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.elliptical(13, 13)),
                                      ))),
                            ],
                          ),
                        ),
                        Image.asset(
                          "images/Line.png",
                        ),
                        Container(
                          width: 13,
                          height: 13,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 2,
                                  left: 2,
                                  child: Container(
                                      width: 9,
                                      height: 9,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(189, 195, 205, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9, 9)),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.10000000149011612),
                                              offset: Offset(4, 4),
                                              blurRadius: 8)
                                        ],
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              48, 47, 47, 1),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.elliptical(13, 13)),
                                      ))),
                            ],
                          ),
                        ),
                        Image.asset(
                          "images/Line.png",
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15.0,
                          ),
                          width: 13,
                          height: 13,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 2,
                                  left: 2,
                                  child: Container(
                                      width: 9,
                                      height: 9,
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(
                                                6.123234262925839e-17, 1),
                                            end: Alignment(
                                                -1, 6.123234262925839e-17),
                                            colors: [
                                              Color.fromRGBO(51, 25, 246,
                                                  0.41999998688694015),
                                              Color.fromRGBO(51, 25, 246, 1)
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9, 9)),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.10000000149011612),
                                              offset: Offset(4, 4),
                                              blurRadius: 8)
                                        ],
                                        border: Border.all(
                                          color: const Color.fromRGBO(
                                              48, 47, 47, 1),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.elliptical(13, 13)),
                                      ))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width * 0.5,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Container(
                              width: width * 0.5,
                              height: width * 0.13,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: const Color(0xff6998CA),
                              ),
                              child: Center(
                                child: Text(
                                  stations.StationsList[index],
                                  style: const TextStyle(
                                    color: Color(0xffffffff),
                                    fontFamily: "Poppins",
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 40.0),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  height: height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Payment[0]['id'],
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            color: Color(0xff302F2F),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              Payment[0]['Station1'],
                              style: const TextStyle(
                                fontSize: 15,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff302F2F),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Image.asset(
                              'images/Line between stations.png',
                              width: width * 0.1,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: Text(
                                Payment[0]['Station2'],
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff302F2F),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 50.0,
                            ),
                            Text(
                              Payment[0]['price'],
                              style: const TextStyle(
                                fontSize: 14,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff302F2F),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 30.0,
                            ),
                            Text(
                              Payment[0]['Time1'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                color: Color(0xff302F2F),
                              ),
                            ),
                            const SizedBox(
                              width: 110.0,
                            ),
                            Text(
                              Payment[0]['Time2'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                color: Color(0xff302F2F),
                              ),
                            ),
                            const SizedBox(
                              width: 60.0,
                            ),
                            Text(
                              Payment[0]['Day'],
                              style: const TextStyle(
                                fontSize: 12,
                                fontFamily: "Poppins",
                                color: Color(0xffEB5757),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Container(
                                width: 36.0,
                                height: 36.0,
                                child: const Icon(
                                  Icons.date_range,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xff302F2F),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                Payment[0]['Date'],
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  color: Color(0xE6302F2F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                width: 36.0,
                                height: 36.0,
                                child: const Icon(
                                  Icons.access_time,
                                  color: Colors.white,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xff302F2F),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                Payment[0]['Duration'],
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  color: Color(0xff302F2F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
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
                            const SizedBox(
                              width: 90.0,
                            ),
                            Container(
                              width: 36.0,
                              height: 36.0,
                              child: const Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff302F2F),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              Payment[0]['Dest'],
                              style: const TextStyle(
                                fontSize: 13,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff302F2F),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                child: const Text(
                                  "Cancel",
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
                                            const selectDestination(),
                                      ));
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0x80302F2F)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                child: const Text(
                                  "Purchase",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                onPressed: () {
                                  debugPrint("Save infos pressed");
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const ProfileScreen(),
                                  //     ));
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xff302F2F)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  )),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
