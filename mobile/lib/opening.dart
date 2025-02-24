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
final Color color7 = Colors.pink[200];
final Color color8 = Colors.purple;
final Color grey4 = Colors.grey.shade400;
final Color grey7 = Colors.grey.shade700;
final Color grey1 = Colors.grey.shade100;

class Folder {
  String folderName;
  IconData iconName;
  Color folderColor;
  bool selected;
  bool canBeDeleted;
  Folder(this.folderName, this.iconName, this.folderColor, this.selected,
      this.canBeDeleted);
}

class FolderIcon {
  IconData iconName;
  FolderIcon(this.iconName);
}

class OpeningPage extends StatefulWidget {
  @override
  _OpeningPage createState() => _OpeningPage();
}

class _OpeningPage extends State<OpeningPage> {
  bool colour1Pressed = false;
  bool colour2Pressed = false;
  bool colour3Pressed = false;
  bool colour4Pressed = false;
  bool colour5Pressed = false;
  bool colour6Pressed = false;
  bool colour7Pressed = false;
  bool colour8Pressed = false;
  Color folderColor;
  Color deleteFolderColor;
  bool deleteFolder = false;
  int globalIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  TextEditingController folderNameController = new TextEditingController();

  List<Folder> folder = [
    Folder(
      'Actions needed',
      Icons.notification_important_rounded,
      Colors.red,
      false,
      false,
    ),
    Folder(
      'Circulars',
      Icons.circle,
      Colors.green,
      false,
      false,
    ),
    Folder(
      'Announcements',
      Icons.announcement_rounded,
      Colors.orange,
      false,
      false,
    ),
    Folder(
      'Notices',
      Icons.article_rounded,
      Colors.grey,
      false,
      false,
    ),
  ];

  List<FolderIcon> icons = [
    FolderIcon(Icons.important_devices_rounded),
    FolderIcon(Icons.access_alarm_rounded),
    FolderIcon(Icons.accessibility_rounded),
    FolderIcon(Icons.rounded_corner_rounded),
    FolderIcon(Icons.add_circle_outline_rounded),
    FolderIcon(Icons.deck_rounded),
    FolderIcon(Icons.tab_rounded),
    FolderIcon(Icons.arrow_back_ios_rounded),
  ];

  void addFoldersToList(String newFolderName, Color folderColor) {
    setState(() {
      folder.add(Folder(
        newFolderName,
        Icons.file_download,
        folderColor,
        false,
        true,
      )); // temporary icon
    });
  }

  void removeFolderFromList() {
    setState(() {
      folder.removeAt(globalIndex);
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
              padding: EdgeInsets.only(right: 0),
              icon: Icon(
                Icons.delete,
                size: 30,
                color: color4,
              ),
              onPressed: () {
                //do something
                print(folder.length);
                showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AlertDialog(
                          title: Text(
                            'Select folder to delete',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          titlePadding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                          content: Container(
                            width: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: folder.length,
                              itemBuilder: (context, index) {
                                if (folder[index].canBeDeleted) {
                                  return FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        if (!deleteFolder) {
                                          folder[index].selected = true;
                                          globalIndex = index;
                                        } else {
                                          globalIndex = -1;
                                          folder[index].selected = false;
                                        }
                                        deleteFolder = !deleteFolder;
                                      });
                                    },
                                    shape: Border.all(
                                      width: 2,
                                      color: folder[index].selected
                                          ? Colors.blue.shade400
                                          : Colors.transparent,
                                    ),
                                    child: Text(
                                      '${folder[index].folderName}',
                                    ),
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                if (globalIndex != -1) {
                                  Navigator.pop(
                                      context); //pop first dialog and open confirmation page
                                  setState(() {
                                    return showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            contentPadding: EdgeInsets.fromLTRB(
                                                20, 20, 20, 20),
                                            content: Container(
                                                height: 40.0,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "Deleting folder will delete all news from that folder.",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "OpenSans",
                                                              color: Color(
                                                                  0xFF5B6978)))
                                                    ])),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Cancel',
                                                ),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    print(folder[globalIndex]
                                                        .folderName);

                                                    removeFolderFromList();

                                                    globalIndex = -1;
                                                    print(folder.length);
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('Confirm')),
                                            ],
                                          );
                                        });
                                  });
                                } else {
                                  Navigator.pop(context);
                                                                   setState(() {
                                    return showDialog(
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(

                                            content: Container(
                                                height: 40.0,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "No folder has been selected.",
                                                                                    textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),)
                                                    ])),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'Ok',
                                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                                ),
                                              ),

                                            ],
                                          );
                                        });
                                  });
                                }
                              },
                              child: Text(
                                'Delete',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
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
                showDialog(
                  context: context,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setState) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: ListBody(
                              children: <Widget>[
                                Center(
                                  child: TextField(
                                    controller: folderNameController,
                                    // obscureText: true,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.teal),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      hintText: 'Please enter a folder name',
                                      hintStyle: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 30,
                                      bottom: 20,
                                    ),
                                    child: Text(
                                      'Color theme (swipe for more)',
                                      style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: <Widget>[
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour1Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color1,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour2Pressed ||
                                                colour3Pressed ||
                                                colour4Pressed ||
                                                colour5Pressed ||
                                                colour6Pressed ||
                                                colour7Pressed ||
                                                colour8Pressed)) {
                                              colour1Pressed = !colour1Pressed;
                                              folderColor = color1;
                                              // print(folderColor);
                                            } else {
                                              folderColor = null;
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour2Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color2,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour1Pressed ||
                                                colour3Pressed ||
                                                colour4Pressed ||
                                                colour5Pressed ||
                                                colour6Pressed ||
                                                colour7Pressed ||
                                                colour8Pressed)) {
                                              colour2Pressed = !colour2Pressed;
                                              folderColor = color2;
                                              // print(folderColor);
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour3Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color3,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour1Pressed ||
                                                colour2Pressed ||
                                                colour4Pressed ||
                                                colour5Pressed ||
                                                colour6Pressed ||
                                                colour7Pressed ||
                                                colour8Pressed)) {
                                              colour3Pressed = !colour3Pressed;
                                              folderColor = color3;
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour4Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color4,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour1Pressed ||
                                                colour3Pressed ||
                                                colour2Pressed ||
                                                colour5Pressed ||
                                                colour6Pressed ||
                                                colour7Pressed ||
                                                colour8Pressed)) {
                                              colour4Pressed = !colour4Pressed;
                                              folderColor = color4;
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour5Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color5,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour2Pressed ||
                                                colour3Pressed ||
                                                colour4Pressed ||
                                                colour1Pressed ||
                                                colour6Pressed ||
                                                colour7Pressed ||
                                                colour8Pressed)) {
                                              colour5Pressed = !colour5Pressed;
                                              folderColor = color5;
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour6Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color6,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour2Pressed ||
                                                colour3Pressed ||
                                                colour4Pressed ||
                                                colour5Pressed ||
                                                colour1Pressed ||
                                                colour7Pressed ||
                                                colour8Pressed)) {
                                              colour6Pressed = !colour6Pressed;
                                              folderColor = color6;
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour7Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color7,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour2Pressed ||
                                                colour3Pressed ||
                                                colour4Pressed ||
                                                colour5Pressed ||
                                                colour6Pressed ||
                                                colour1Pressed ||
                                                colour8Pressed)) {
                                              colour7Pressed = !colour7Pressed;
                                              folderColor = color7;
                                            }
                                          });
                                        },
                                      ),
                                      MaterialButton(
                                        child: Icon(
                                          Icons.done_rounded,
                                          size: 30,
                                          color: colour8Pressed
                                              ? Colors.white
                                              : Colors.transparent,
                                        ),
                                        shape: CircleBorder(),
                                        color: color8,
                                        height: 50,
                                        onPressed: () {
                                          setState(() {
                                            if (!(colour2Pressed ||
                                                colour3Pressed ||
                                                colour4Pressed ||
                                                colour5Pressed ||
                                                colour6Pressed ||
                                                colour7Pressed ||
                                                colour1Pressed)) {
                                              colour8Pressed = !colour8Pressed;
                                              folderColor = color8;
                                            }
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                // Center(
                                //   child: Padding(
                                //     padding: EdgeInsets.only(
                                //       top: 40,
                                //       bottom: 20,
                                //     ),
                                //     child: Text(
                                //       'Icon (swipe for more)',
                                //       style: TextStyle(
                                //         color: Colors.grey.shade700,
                                //         fontWeight: FontWeight.bold,
                                //       ),
                                //     ),
                                //   ),
                                // ),

                                // SingleChildScrollView(
                                //   scrollDirection: Axis.horizontal,
                                //   child: Row(
                                //     children: <Widget>[
                                //       MaterialButton(

                                // SingleChildScrollView(
                                //   scrollDirection: Axis.horizontal,
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //     children: [
                                //       ListView.builder(
                                //         scrollDirection: Axis.horizontal,
                                //         shrinkWrap: true,
                                //         itemCount: icons.length,
                                //         itemBuilder: (context, index) {

                                //           return FlatButton(
                                //             shape: Border(
                                //               left: BorderSide(
                                //                   color: words[index]
                                //                       .folderColor,
                                //                   width: 5),
                                //               right: BorderSide(
                                //                 width: .5,
                                //                 color: Colors.grey.shade300,
                                //               ),
                                //               top: BorderSide(
                                //                 width: .5,
                                //                 color: Colors.grey.shade300,
                                //               ),
                                //               bottom: BorderSide(
                                //                 width: .5,
                                //                 color: Colors.grey.shade300,
                                //               ),
                                //             ),
                                //             onPressed: () {
                                //               //do something
                                //             },
                                //             // width: 50,
                                //             // height: 50,
                                //             //   child: Icon(
                                //             //     icons[index].iconName,
                                //             //     size: 40,
                                //             //     color: grey7,
                                //             //   ),
                                //             child: Container(
                                //               child: Text(
                                //                 "Index : $index icons",
                                //                 style:
                                //                     TextStyle(fontSize: 20),
                                //               ),
                                //             ),
                                //           );
                                //         },
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                if (folderNameController.text.isNotEmpty &&
                                    folderColor != null) {
                                  addFoldersToList(
                                      folderNameController.text, folderColor);
                                }
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                );
              },
            ),
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
                        itemCount: folder.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: FlatButton(
                              shape: Border(
                                left: BorderSide(
                                    color: folder[index].folderColor, width: 5),
                                right: BorderSide(
                                  width: 1,
                                  color: Colors.grey.shade300,
                                ),
                                top: BorderSide(
                                  width: 1,
                                  color: Colors.grey.shade300,
                                ),
                                bottom: BorderSide(
                                  width: 1,
                                  color: Colors.grey.shade300,
                                ),
                              ),
                              onPressed: () {
                                //do something

                                SearchFilter()
                                    .createState()
                                    .folderColor(folder[index].folderColor);
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
                                      folder[index].iconName,
                                      color: folder[index].folderColor,
                                    ),
                                    Text(
                                      '${folder[index].folderName}',
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
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SearchFilter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//see if want to keep
class WarningAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Only one color allowed"),
      // content: Text("Please upload the image"),
      actions: <Widget>[
        FlatButton(
          child: Text("Ok"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
