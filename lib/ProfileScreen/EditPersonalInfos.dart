import 'package:flutter/material.dart';

import 'Profile.dart';
class PersonalInfos extends StatefulWidget {
  const PersonalInfos({Key? key}) : super(key: key);

  @override
  State<PersonalInfos> createState() => _PersonalInfosState();
}

class _PersonalInfosState extends State<PersonalInfos> {
  bool visible= false;
  void hide(){
  setState(() {
   visible = !visible;
  });
  }
  bool visible1= false;
  void hide1(){
    setState(() {
      visible1 = !visible1;
    });
  }
  bool visible2= false;
  void hide2(){
    setState(() {
      visible2 = !visible2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/circleavatar.png"),
                    ),
                  ),
                  Text(
                    "Name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height: 20),
                  Text(
                    "Personal informations",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 20.0 ,right: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "First Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          width: 180,),
                        Text(
                          "First Name",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(width: 10,),
                        IconButton(
                          icon: Icon(
                            visible
                              ? Icons.keyboard_arrow_down
                          : Icons.arrow_forward_ios ),
                        onPressed: () => {
                            hide(),
                        },
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 40.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "ASSAM ",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    visible: visible,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 20.0 ,right: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Last Name",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(width: 180,),
                        Text(
                          "Last Name",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(width: 10,),
                        IconButton(
                          icon: Icon(
                              visible1
                                  ? Icons.keyboard_arrow_down
                                  : Icons.arrow_forward_ios ),
                          onPressed: () => {
                            hide1(),
                          },
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 40.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Amira ",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    visible: visible1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0,top: 20.0 ,right: 20.0),
                    child: Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(width: 150,),
                        Text(
                          "user1111@gmail.com",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(width: 10,),
                        IconButton(
                          icon: Icon(
                              visible2
                                  ? Icons.keyboard_arrow_down
                                  : Icons.arrow_forward_ios ),
                          onPressed: () => {
                            hide2(),
                          },
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 40.0, bottom: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "amiraassam860@gmail.com ",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    visible: visible2,
                  ),
                  Visibility(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          width: 150.0,
                          height: 40,
                          child: ElevatedButton(
                            child: const Text("Save infos"),
                            onPressed: () {
                              debugPrint("Save infos pressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.black87),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                            ),
                          )
                      ),
                    ),
                    visible: visible,
                  ),
                  Visibility(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          width: 150.0,
                          height: 40,
                          child: ElevatedButton(
                            child: const Text("Save infos"),
                            onPressed: () {
                              debugPrint("Save infos pressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.black87),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                            ),
                          )
                      ),
                    ),
                    visible: visible2,
                  ),
                  Visibility(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                          width: 150.0,
                          height: 40,
                          child: ElevatedButton(
                            child: const Text("Save infos"),
                            onPressed: () {
                              debugPrint("Save infos pressed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProfileScreen(),
                                  ));
                            },
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.black87),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                            ),
                          )
                      ),
                    ),
                    visible: visible1,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
