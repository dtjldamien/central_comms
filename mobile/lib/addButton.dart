import 'package:flutter/material.dart';
import 'package:central_comms/folderList.dart';
import "folderList.dart";

class AddFolder extends StatefulWidget {
  @override
  _AddFolder createState() => _AddFolder();
}

class _AddFolder extends State<AddFolder> {
  // final test = DefaultFolders();
  TextEditingController folderNameController = new TextEditingController();
  // Color color;
  // int isTapped;

  // @override
  // void initState() {
  //   super.initState();
  //   // isTapped = 0;
  //   // color = Colors.transparent;
  // }

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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    hintText: 'Please enter a folder name',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            // Center(
            //   child: SingleChildScrollView(
            //     child: Container(
            //       width: MediaQuery.of(context).size.width - 90,
            //       height: MediaQuery.of(context).size.width,
            //       child: Scrollbar(
            //         child: ListView(
            //           scrollDirection: Axis.vertical,
            //           shrinkWrap: true,
            //           children: [
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: <Widget>[
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   decoration: BoxDecoration(
            //                       color: color,
            //                       border: Border.all(color: Colors.grey.shade400)),
            //                   child: ListTile(
            //                     title: Text(
            //                       'Office of Finance',
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: 18,
            //                       ),
            //                     ),
            //                     onTap: () {
            //                       setState(() {
            //                         color = (isTapped % 2) == 0
            //                             ? Colors.lightBlue
            //                             : Colors.transparent;
            //                         isTapped++;
            //                         print(isTapped);
            //                       });
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     subtitle: Text('Circulars'),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     subtitle: Text('Notices'),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     subtitle: Text('Announcements'),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     title: Text(
            //                       'Office of Student Affair',
            //                       style: TextStyle(
            //                         fontWeight: FontWeight.bold,
            //                         fontSize: 18,
            //                       ),
            //                     ),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                       // print('clicked');
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     subtitle: Text('Circulars'),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     subtitle: Text('Notices'),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                     },
            //                   ),
            //                 ),
            //                 Container(
            //                   width: MediaQuery.of(context).size.width - 180,
            //                   color: color,
            //                   child: ListTile(
            //                     subtitle: Text('Announcements'),
            //                     onTap: () {
            //                       setState(() {
            //                         color = Colors.lightBlueAccent;
            //                       });
            //                     },
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            Center(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: FractionalOffset.center,
                    child: FlatButton(
                      // onPressed: () {
                      //   //do something
                      //   //  Navigator.push(
                      //   //   context,
                      //   //   MaterialPageRoute(builder: (context) => addFolder(newFolderName: folderNameController.text)),
                      //   // );

                      //   // _DefaultFolders.createState().addFoldersToList(folderNameController.text);
                      //   //                   test.createState().words.add(MyClass(
                      //   //   folderNameController.text,
                      //   //   Icons.announcement_rounded,
                      //   //   Colors.orange,
                      //   // ) );
                      //   // print(folderNameController.text);
                      //   DefaultFolders().addNewFolder(folderNameController.text);
                      // },
                      onPressed: () => DefaultFolders().addNewFolder(folderNameController.text),
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
