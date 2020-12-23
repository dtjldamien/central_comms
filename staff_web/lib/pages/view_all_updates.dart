import 'package:flutter/material.dart';

class ViewAllUpdatesPage extends StatefulWidget {
  @override
  _ViewUpdateDetailsPageState createState() => _ViewUpdateDetailsPageState();
}

class _ViewUpdateDetailsPageState extends State<ViewAllUpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('uNiVUS'),
        elevation: 0,
        backgroundColor: Colors.deepOrange,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('View All Notifications')),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('Notifications Archive')),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('View All Posts')),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('Posts Archive')),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'View All Updates',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32.0),
                      ),
                      TextButton(
                        onPressed: () async {
                          Navigator.pushNamed(context, '/');
                        },
                        child: Text('Create New Update'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Cover Image',
                      ),
                      Text(
                        'Event Description',
                      ),
                      Text(
                        'Status',
                      ),
                      Text(
                        'Actions',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
