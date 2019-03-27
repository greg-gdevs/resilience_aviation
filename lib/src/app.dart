import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Resilience',
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.black,
          title: Text('Resilience'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}