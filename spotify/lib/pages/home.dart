import 'package:flutter/material.dart';
import 'package:spotify/pages/homepag.dart';
import 'package:spotify/pages/library_pag.dart';
import 'package:spotify/pages/search_pag.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  final List<Widget> _children = const [
    HomePag(),
    SearchPag(),
    LibraryPag(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> itensDoBot = const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 30,
        ),
        label: 'home',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          size: 30.0,
        ),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.list_rounded,
          size: 30.0,
        ),
        label: 'Your Library',
      ),
    ];

    return Scaffold(
      body: Container(
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: itensDoBot,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
    );
  }
}
