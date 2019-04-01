import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  Widget build(context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
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