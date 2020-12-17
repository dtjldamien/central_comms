import 'package:flutter/material.dart';

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(
                Icons.delete_rounded,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(
                Icons.add,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Feed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: ,
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width - 40,
                color: Colors.grey.shade100,
                child: TextField(
                  cursorColor: Colors.black,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.go,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      hintText: "Search..."),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  color: Colors.white,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade300),
                              ),
                              height: 70,
                              minWidth: 70,
                              onPressed: () => {
                                //do something
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(right: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.notification_important_rounded,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    "Actions needed",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade300),
                              ),
                              height: 70,
                              minWidth: 70,
                              onPressed: () => {
                                //do something
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(right: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.circle,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Circulars",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade300),
                              ),
                              height: 70,
                              minWidth: 70,
                              onPressed: () => {
                                //do something
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(right: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.announcement_rounded,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    "Announcements",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.grey.shade300),
                              ),
                              height: 70,
                              minWidth: 70,
                              onPressed: () => {
                                //do something
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(right: 10, left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.article_rounded,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "Notices",
                                    style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
              ),
              SingleChildScrollView(
                child: Scrollbar(
                  isAlwaysShown: true,
                  child: new ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                          ),
                          FlatButton(
                            onPressed: () {
                              //do something
                            },
                            child: Container(
                              height: 140,
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/OHS.png',
                                    width: (MediaQuery.of(context).size.width -
                                            40) /
                                        2,
                                    height: 140,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '21 December 2020',
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          color: Colors.grey,
                                        ),
                                        // textAlign: TextAlign.left,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'This is an important notice.',
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
