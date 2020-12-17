import 'package:flutter/material.dart';
import 'package:staff_web/pages/create_update.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uNivUS Staff Portal',
      home: CreateUpdatePage(),
    );
  }
}
