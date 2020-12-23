import 'package:flutter/material.dart';
import 'package:staff_web/pages/create_update.dart';
import 'package:staff_web/pages/view_all_updates.dart';
import 'package:staff_web/pages/view_update_details.dart';

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
      initialRoute: '/',
      // routing is like a stack
      routes: {
        // key value pairs
        '/viewAllUpdates': (context) => ViewAllUpdatesPage(),
        '/viewUpdateDetails': (context) => ViewUpdateDetailsPage(),
      },
    );
  }
}
