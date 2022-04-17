// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Center(child: Icon(Icons.abc_outlined)),
    Center(child: Icon(Icons.done_all)),
    Center(child: Icon(Icons.abc_outlined)),
    Center(child: Icon(Icons.abc_outlined)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Home.png"),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Message.png"),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/adds.png"),
                color: Colors.black,
                size: 48,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Message.png"),
              ),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Bag.png"),
              ),
              label: 'Shop',
            ),
          ],
          selectedFontSize: 13,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Color.fromARGB(255, 104, 103, 103),
          selectedItemColor: Color(0xffF15223),
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
