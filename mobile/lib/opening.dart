import 'package:central_comms/main.dart';
import 'package:flutter/material.dart';
import 'package:central_comms/searchFilter.dart';
import 'package:central_comms/addButton.dart';
import 'package:central_comms/folderList.dart';
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
              Icons.arrow_back_ios, // add custom icons also
              color: color4,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
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
                    return AddFolder();
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
                child: Text(
                  'Feed',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 90,
                      fontWeight: FontWeight.bold),
                ),
              ),


            
              Container(
                height: 70,
                child: DefaultFolders(),
              ),

              Expanded(child: searchFilter(),),

            ],
          ),
        ),
      ),
    );
  }
}