import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //Color.fromARGB(255, 5, 25, 92)
        scaffoldBackgroundColor: Color.fromARGB(255, 3, 17, 66),
      ),
      home: Home(),
    );
  }
}
