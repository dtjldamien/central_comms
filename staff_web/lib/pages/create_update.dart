import 'package:flutter/material.dart';

class CreateUpdatePage extends StatefulWidget {
  @override
  _CreateUpdatePageState createState() => _CreateUpdatePageState();
}

class _CreateUpdatePageState extends State<CreateUpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('uNiVUS'),
          elevation: 0,
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 0.2 * MediaQuery.of(context).size.width,
              child: TextField(),
            )
          ],
        ));
  }
}
