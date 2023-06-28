import 'package:flutter/material.dart';
import 'evolucao.dart';
import 'home_pag.dart';
import 'search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = const [
    HomePage(),
    SearchPage(),
    EvolucaoPag(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> intesBarraNavigation = const [
      BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: 'home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 30), label: 'search'),
      BottomNavigationBarItem(
          icon: Icon(Icons.trending_up, size: 30), label: 'Evolução')
    ];

    return Scaffold(
      body: Container(child: _children[_currentIndex], color: Colors.grey),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: intesBarraNavigation,
        onTap: onTabTapped,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.greenAccent[700],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
    );
  }
}
