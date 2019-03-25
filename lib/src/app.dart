import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Resilience App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resilience App'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}