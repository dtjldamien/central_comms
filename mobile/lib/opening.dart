import 'package:central_comms/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color color1 = Colors.red;
final Color color2 = Colors.green;
final Color color3 = Colors.orange;
final Color color4 = Colors.grey;
final Color color5 = Colors.black;
final Color color6 = Colors.blue;
final Color color7 = Colors.pink;
final Color color8 = Colors.purple;
final Color grey4 = Colors.grey.shade400;
final Color grey7 = Colors.grey.shade700;
final Color grey1 = Colors.grey.shade100;

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(

  leading: GestureDetector(
    onTap: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyWidget()),
                );
    },
    child: Icon(
      
      Icons.arrow_back_ios,  // add custom icons also
      color: color4,
    ),
  ),

          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(
                Icons.delete_rounded,
                size: 30,
                color: color4,
              ),
              onPressed: () {
//do something
              },
            ),
            IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(
                Icons.add,
                size: 30,
                color: color4,
              ),
              onPressed: () {
                // do something
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
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

                            Padding(padding: EdgeInsets.only(top: 30),),

                            Center(
                              child: SingleChildScrollView(

                                child: Container(
                                  width: MediaQuery.of(context).size.width - 90,
                                  height: MediaQuery.of(context).size.width,
                                  color: color1,  
                                  child: Scrollbar(
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      children: [
                                        Column (
                                          children: <Widget>[
                                            Container(height: 200,color: color2,width: 50,),
                                            Padding(padding: EdgeInsets.only(top: 20)),
                                            Container(height: 200,color: color2,width: 50,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(top: 30),),

                            Center(
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    alignment: FractionalOffset.center,
                                    child: FlatButton(
                                      onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                                      color: Colors.amber,
                                      minWidth:
                                          MediaQuery.of(context).size.width / 3,
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
                  },
                );
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
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 100,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: MediaQuery.of(context).size.width - 40,
                color: grey1,
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
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100.0),
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.zero,
                                  bottomRight: Radius.zero,
                                ),
                              ),
                              child: FlatButton(
                                shape: Border(
                                  left: BorderSide(color: color1, width: 5),
                                  right: BorderSide(
                                    width: .5,
                                    color: grey4,
                                  ),
                                  top: BorderSide(
                                    width: .5,
                                    color: grey4,
                                  ),
                                  bottom: BorderSide(
                                    width: .5,
                                    color: grey4,
                                  ),
                                ),
// shape: RoundedRectangleBorder(
//   borderRadius: BorderRadius.circular(20.0),
//   side: BorderSide(color: color1),
// ),

                                height: 70,
                                minWidth: 80,
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
                                      color: color1,
                                    ),
                                    Text(
                                      "Actions needed",
                                      style: TextStyle(
                                        color: grey7,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                            ),
                            FlatButton(
                              shape: Border(
                                left: BorderSide(color: color2, width: 5),
                                right: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                                top: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                                bottom: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                              ),
                              height: 70,
                              minWidth: 80,
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
                                    color: color2,
                                  ),
                                  Text(
                                    "Circulars",
                                    style: TextStyle(
                                      color: grey7,
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
                              shape: Border(
                                left: BorderSide(color: color3, width: 5),
                                right: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                                top: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                                bottom: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                              ),
                              height: 70,
                              minWidth: 80,
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
                                    color: color3,
                                  ),
                                  Text(
                                    "Announcements",
                                    style: TextStyle(
                                      color: grey7,
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
                              shape: Border(
                                left: BorderSide(color: color4, width: 5),
                                right: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                                top: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                                bottom: BorderSide(
                                  width: .5,
                                  color: grey4,
                                ),
                              ),
                              height: 70,
                              minWidth: 80,
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
                                    color: color4,
                                  ),
                                  Text(
                                    "Notices",
                                    style: TextStyle(
                                      color: grey7,
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
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2 ) - 50,
                    // margin: EdgeInsets.only(bottom: 20),

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
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    70) /
                                                2,
                                        height: 140,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 10)),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '21 December 2020',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: color4,
                                            ),
                                            // textAlign: TextAlign.left,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: (MediaQuery.of(context).size.width/2)-52,
                                              color: Colors.white,
                                              child: Text(
                                                'This is an important notice, please take note of it.',
                                                softWrap: true,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
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
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    70)/2,
                                        height: 140,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 10)),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '21 December 2020',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: color4,
                                            ),
                                            // textAlign: TextAlign.left,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: (MediaQuery.of(context).size.width/2)-52,
                                              color: Colors.white,
                                              child: Text(
                                                'This is an important notice, please take note of it.',
                                                softWrap: true,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 10)),
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
                                        width:
                                            (MediaQuery.of(context).size.width -
                                                    70) /
                                                2,
                                        height: 140,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 10)),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '21 December 2020',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: color4,
                                            ),
                                            // textAlign: TextAlign.left,
                                          ),
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2) -
                                                  52,
                                              color: Colors.white,
                                              child: Text(
                                                'This is an important notice, please take note of it.',
                                                softWrap: true,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                ),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}