import 'package:central_comms/main.dart';
import 'package:flutter/material.dart';
import 'package:central_comms/searchFilter.dart';
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

class MyClass {
  String folderName;
  IconData iconName;
  Color folderColor;
  MyClass(this.folderName, this.iconName, this.folderColor);
}

class OpeningPage extends StatefulWidget {
  @override
  _OpeningPage createState() => _OpeningPage();
}

class _OpeningPage extends State<OpeningPage> {
  TextEditingController folderNameController = new TextEditingController();

  List<MyClass> words = [
    MyClass(
      'Actions needed',
      Icons.notification_important_rounded,
      Colors.red,
    ),
    MyClass(
      'Circulars',
      Icons.circle,
      Colors.green,
    ),
    MyClass(
      'Announcements',
      Icons.announcement_rounded,
      Colors.orange,
    ),
    MyClass(
      'Notices',
      Icons.article_rounded,
      Colors.grey,
    ),
  ];

  void addFoldersToList(String newFolderName) {
    setState(() {
      words.add(MyClass(
        newFolderName,
        Icons.announcement_rounded,
        Colors.orange,
      )); // temporary icon and color
    });
  }

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
          title: Center(
            child: Text(
              'Feed',
              style: GoogleFonts.lato(
                  color: Colors.grey.shade600,
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
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
                  builder: (_) => new Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 16,
                    child: Container(
                      height: MediaQuery.of(context).size.height - 100,
                      width: MediaQuery.of(context).size.width - 40,
                      child: Column(
                        children: <Widget>[
                          // Padding(padding: EdgeInsets.only(top: 20)),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: TextField(
                                controller: folderNameController,
                                // obscureText: true,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  hintText: 'Please enter a folder name',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),

                          Center(
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: FractionalOffset.center,
                                  child: FlatButton(
                                    onPressed: () {
                                      addFoldersToList(
                                          folderNameController.text);
                                      Navigator.pop(context);
                                    },
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
                  ),
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
              Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                height: 70,
                // child: DefaultFolders(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                      ),
                      ListView.builder(
                        // padding: EdgeInsets.only(right: 10,),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: words.length,
                        itemBuilder: (context, index) {
                          return FlatButton(
                            shape: Border(
                              left: BorderSide(
                                  color: words[index].folderColor, width: 5),
                              right: BorderSide(
                                width: .5,
                                color: Colors.grey.shade300,
                              ),
                              top: BorderSide(
                                width: .5,
                                color: Colors.grey.shade300,
                              ),
                              bottom: BorderSide(
                                width: .5,
                                color: Colors.grey.shade300,
                              ),
                            ),
                            // onPressed: () => addFoldersToList('test'),
                            onPressed: () {
                              //do something
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(200),
                                  topRight: Radius.circular(200),
                                  bottomLeft: Radius.zero,
                                  bottomRight: Radius.zero,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    words[index].iconName,
                                    color: words[index].folderColor,
                                  ),
                                  Text(
                                    '${words[index].folderName}',
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
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: searchFilter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
