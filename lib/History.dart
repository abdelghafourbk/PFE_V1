import 'package:flutter/material.dart';

import 'Home.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    var Payment1 = {
      'id': 'N° 12341',
      'Station1': 'Bordj Elkifan',
      'Time1': '06.30',
      'Station2': 'USTHB',
      'Time2': '06.40',
      'price': '40DA',
      'Day': '1.5 Hour',
      'Date': '16/05/2022',
      'Duration': '10 mins',
      'Dest': 'To Ruisseaux',
    };
    var Payment2 = {
      'id': 'N° 12345',
      'Station1': 'Bordj Elkifan',
      'Time1': '08.17',
      'Station2': 'USTHB',
      'Time2': '09.25',
      'price': '70DA',
      'Day': '1.5 Hour',
      'Date': '17/05/2022',
      'Duration': '10 mins',
      'Dest': 'To Ruisseaux',
    };
    var Payment3 = {
      'id': 'N° 12346',
      'Station1': 'Dergana',
      'Time1': '15.23',
      'Station2': 'Ruisseaux',
      'Time2': '16.40',
      'price': '40DA',
      'Day': '1.5 Hour',
      'Date': '18/05/2022',
      'Duration': '10 mins',
      'Dest': 'To Ruisseaux',
    };
    List Payments = [Payment1, Payment2, Payment3];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xffF7F7F7),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 24.0, top: 32.0, bottom: 20.0, right: 24.0),
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
                      width: width * 0.2,
                    ),
                    const Text(
                      "Payments",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.195,
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
                SizedBox(
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Payments.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(11),
                            ),
                            height: height * 0.28,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 15.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Payments[index]['id'],
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
                                        Payments[index]['Station1'],
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
                                      const Icon(
                                        Icons.linear_scale_outlined,
                                        size: 25.0,
                                      ),
                                      const SizedBox(
                                        width: 20.0,
                                      ),
                                      Text(
                                        Payments[index]['Station2'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff302F2F),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 50.0,
                                      ),
                                      Text(
                                        Payments[index]['price'],
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
                                        Payments[index]['Time1'],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          color: Color(0xff302F2F),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 100.0,
                                      ),
                                      Text(
                                        Payments[index]['Time2'],
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
                                        Payments[index]['Day'],
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Poppins",
                                          color: Color(0xffEB5757),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        Payments[index]['Date'],
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        Payments[index]['Duration'],
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Poppins",
                                          color: Color(0xff302F2F),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        Payments[index]['Dest'],
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff302F2F),
                                        ),
                                      ),
                                    ],
                                  ),
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
        ));
  }
}
