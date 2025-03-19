import 'package:flutter/material.dart';

import 'home_screen.dart'; // Import the home screen

void main() {
  runApp(KoraLiveApp());
}

class KoraLiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kora Live App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
