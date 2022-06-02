import 'package:flutter/material.dart';
import 'Profile.dart';

class addCard extends StatefulWidget {
  const addCard({Key? key}) : super(key: key);

  @override
  State<addCard> createState() => _addCardState();
}

class _addCardState extends State<addCard> {
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
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 20.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Credit card number",

                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: "Poppins",
                        ),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0,top: 10.0, right: 30.0, bottom: 20.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                          decoration:InputDecoration(
                            hintText: "xxxx",
                            border: OutlineInputBorder(),
                          ),
                        ),),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: TextField(
                          decoration:InputDecoration(
                          hintText: "xxxx",
                          border: OutlineInputBorder(),
                        ),),),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: TextField(
                          decoration:InputDecoration(
                          hintText: "xxxx",
                          border: OutlineInputBorder(),
                        ),),),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: TextField(
                          decoration:InputDecoration(
                            hintText: "1528",
                            border: OutlineInputBorder(),
                          ),
                        ),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Cardholder Name",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: "Poppins",
                        ),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0,top: 10.0, right: 30.0,bottom: 20.0),
                    child: TextField(
                      decoration:InputDecoration(
                        hintText: "B. Abdelghafour",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
                    child: Row(children: [
                      Text("Expire date",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: "Poppins",
                        ),),
                      SizedBox(
                        width: 185.0,),
                      Text("CVV Code",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontFamily: "Poppins",
                        ),),

                    ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Row(children: [
                      Expanded(
                        flex: 1,
                        child: TextField(
                          decoration:InputDecoration(
                            hintText: "10",
                            border: OutlineInputBorder(),
                          ),
                        ),),
                      SizedBox(width: 10.0,),
                      Text("/",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: "Poppins",
                        ),),
                      SizedBox(width: 10.0,),
                      Expanded(
                        flex: 1,
                        child: TextField(
                          decoration:InputDecoration(
                            hintText: "20",
                            border: OutlineInputBorder(),
                          ),),),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: 100.0,),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextField(
                          decoration:InputDecoration(
                            hintText: "123",
                            border: OutlineInputBorder(),
                          ),),),
                    ],),
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
