import 'package:flutter/material.dart';
import 'HoraFecha.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HoraFecha(),
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, brightness: Brightness.dark),
    );
  }
}
