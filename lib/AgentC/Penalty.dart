import 'package:flutter/material.dart';

import 'HomeC.dart';

class Penalty extends StatefulWidget {
  const Penalty({Key? key}) : super(key: key);

  @override
  State<Penalty> createState() => _PenaltyState();
}

class _PenaltyState extends State<Penalty> {
  @override
  Widget build(BuildContext context) {
    var Passenger1 = {
      'image': "images/passenger.png",
      'name': 'Amira Assam',
      'phone': '07 12 34 56 78',
      'Email': 'amira@gmail.com',
      'tag': 'passenger1'
    };

    List Passengers = [Passenger1];
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                    "Send Notifications",
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
              const SizedBox(
                height: 30.0,
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
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: width * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(
                            Passengers[0]['image'],
                            width: width * 0.18,
                            height: width * 0.18,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          Passengers[0]['name'],
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

                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          Passengers[0]['phone'],
                          style: const TextStyle(
                            color: Color(0xff88879C),
                            fontSize: 14.0,
                            fontFamily: "Poppins",
                          ),
                        ),

                        Text(
                          Passengers[0]['Email'],
                          style: const TextStyle(
                            color: Color(0xff88879C),
                            fontSize: 14.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            width: double.infinity,
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Give Penalty",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.money_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              onPressed: () {
                                debugPrint("penalty pressed");
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xffF62921)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
