import 'package:flutter/material.dart';
import 'package:setram/AfterContactUs.dart';
import 'package:setram/Home.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
        child: SingleChildScrollView(
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
                    width: width * 0.185,
                  ),
                  const Text(
                    "Contact us",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.178,
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
                height: 15.0,
              ),
              Image.asset(
                "images/ContactUs.png",
                width: 196.0,
                height: 160.0,
              ),
              const Text(
                "Contact Customer service ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "Send notifications to customer service about the situation in the tramway and any feedbacks",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: height * 0.34,
                width: width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextField(
                        minLines: 1,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: "There was a thief in the traway and... ",
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add_photo_alternate_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xff302F2F),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                const Text(
                                  "Type:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.info,
                                      color: Colors.deepPurple,
                                    ),
                                    TextButton(
                                      child: const Text(
                                        "Information",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.warning,
                                      color: Colors.red,
                                    ),
                                    TextButton(
                                      child: const Text(
                                        "Warning",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  width: 350.0,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text(
                      "Send",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {
                      debugPrint("Send pressed");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AfterContactUs(),
                          ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff341AF6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
