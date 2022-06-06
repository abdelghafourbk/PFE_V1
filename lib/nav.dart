import 'package:flutter/material.dart';
// import 'package:untitled1/History.dart';
// import 'package:untitled1/ProfileScreen/Profile.dart';
// import 'ContactUs.dart';
import 'Home.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int _selectedIndex = 0;
  final List<Widget> _list = [
    Home(),
    // ContactUs(),
    // History(),
    // ProfileScreen(),
  ];
  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _list.elementAt(_selectedIndex),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
            child: Align(
              alignment: Alignment(0.0, 1.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    backgroundColor: Colors.blue[900],
                    showSelectedLabels: true,
                    showUnselectedLabels: false,
                    currentIndex: _selectedIndex,
                    onTap: _onTap,
                    items: [
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
    );
  }
}
