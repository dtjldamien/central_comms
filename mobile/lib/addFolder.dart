import 'package:flutter/material.dart';


class AddFolder extends StatefulWidget {
  @override
  _AddFolder createState() => _AddFolder();
}

class _AddFolder extends State<AddFolder> {
  Color color;
  int isTapped;

  @override
  void initState() {
    super.initState();
    isTapped = 0;
    color = Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 16,
      child: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: MediaQuery.of(context).size.width - 40,
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20)),
            Center(
              child: Text(
                "Change to text field",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Center(
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width - 90,
                  height: MediaQuery.of(context).size.width,
                  child: Scrollbar(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              decoration: BoxDecoration(
                                  color: color,
                                  border: Border.all(color: Colors.grey.shade400)),
                              child: ListTile(
                                title: Text(
                                  'Office of Finance',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    color = (isTapped % 2) == 0
                                        ? Colors.lightBlue
                                        : Colors.transparent;
                                    isTapped++;
                                    print(isTapped);
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                subtitle: Text('Circulars'),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                subtitle: Text('Notices'),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                subtitle: Text('Announcements'),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                title: Text(
                                  'Office of Student Affair',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                  // print('clicked');
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                subtitle: Text('Circulars'),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                subtitle: Text('Notices'),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                },
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 180,
                              color: color,
                              child: ListTile(
                                subtitle: Text('Announcements'),
                                onTap: () {
                                  setState(() {
                                    color = Colors.lightBlueAccent;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: FractionalOffset.center,
                    child: FlatButton(
                      onPressed: () =>
                          Navigator.of(context, rootNavigator: true).pop(),
                      color: Colors.amber,
                      minWidth: MediaQuery.of(context).size.width / 3,
                      child: Text(
                        'Done',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}