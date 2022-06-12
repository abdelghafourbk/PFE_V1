import 'package:flutter/material.dart';
import 'package:setram/Admin/HomeAd.dart';
import 'package:setram/Admin/addWorker.dart';

class Workers extends StatefulWidget {
  const Workers({Key? key}) : super(key: key);

  @override
  State<Workers> createState() => _WorkersState();
}

class _WorkersState extends State<Workers> {
  bool _visible = false;
  void _visi() {
    setState(() {
      //if(workers[index]['desc'] = 'Agent de controle')
      _visible = !_visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var Worker1 = {
      'image': "images/worker1.png",
      'name': 'Flen ben flen',
      'desc': 'Agent de controle',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker1'
    };
    var Worker2 = {
      'image': "images/worker2.png",
      'name': 'Flen ben flen',
      'desc': 'Admin',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker2'
    };
    var Worker3 = {
      'image': "images/worker2.png",
      'name': 'Flen ben flen',
      'desc': 'Admin',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker2'
    };
    var Worker4 = {
      'image': "images/worker2.png",
      'name': 'Flen ben flen',
      'desc': 'Agent de controle',
      'phone': '07 12 34 56 78',
      'Email': 'flen@gmail.com',
      'tag': 'Worker2'
    };
    List workers = [Worker1, Worker2, Worker3, Worker4];
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_outlined,
                        color: Colors.black,
                        size: 20.0,
                      ),
                      onPressed: () {
                        debugPrint("go back pressed");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeAd(),
                            ));
                      },
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text(
                      "Workers",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 110.0,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/circleavatar.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: workers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            height: 260,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    workers[index]['image'],
                                  ),
                                  Text(
                                    workers[index]['name'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.grey[300]),
                                    ),
                                    child: Text(
                                      workers[index]['desc'],
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 12,
                                          color: Colors.blueGrey),
                                    ),
                                    onPressed: () {},
                                  ),
                                  Text(
                                    workers[index]['phone'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Text(
                                    workers[index]['Email'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Visibility(
                                    child: Container(
                                        width: 100,
                                        child: ElevatedButton(
                                          child: Row(
                                            children: [
                                              Text(
                                                "Delete",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Icon(
                                                Icons.delete_outline,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                          onPressed: () {
                                            debugPrint("Delete pressed");
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepOrange),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            )),
                                          ),
                                        )),
                                    visible: _visible,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                      width: 150.0,
                      height: 40,
                      child: ElevatedButton(
                        child: const Text("Add Worker"),
                        onPressed: () {
                          debugPrint("Add Worker pressed");
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => addWorker(),
                              ));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black87),
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
          );
        },
      ),
    );
  }
}
