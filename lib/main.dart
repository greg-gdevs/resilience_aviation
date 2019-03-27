import 'package:flutter/material.dart';
import 'package:responsive_test_app/src/app.dart';
import 'package:flutter/services.dart';


//void main() => runApp(MyApp());

void main() async {
  ///
  /// Force the layout to Portrait mode
  ///
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(new MyApp());
}