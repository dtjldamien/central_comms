import 'package:flutter/material.dart';
import 'package:central_comms/addButton.dart';


class MyClass {
  String folderName;
  IconData iconName;
  Color folderColor;
  MyClass(this.folderName, this.iconName, this.folderColor);
}

class DefaultFolders extends StatefulWidget {
  @override
  _DefaultFolders createState() => _DefaultFolders();
}

class _DefaultFolders extends State<DefaultFolders> {
  var duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  // var items = List<String>();

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  left: BorderSide(color: words[index].folderColor, width: 5),
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
                onPressed: () => addFoldersToList('test'),
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
    );
  }

  void addFoldersToList(String newFolderName) {
    setState(() {
      words.add(MyClass(
        newFolderName,
        Icons.announcement_rounded,
        Colors.orange,
      )); // temporary icon and color
    });
  }
}

// class addFolder extends StatefulWidget {
//   final newFolderName;
//   addFolder({Key key, this.newFolderName}) : super(key: key);

//   @override
//   _addFolder createState() => _addFolder();
// }

// class _addFolder extends State<addFolder> {
//   @override
//   Widget build(BuildContext context) {
//     print(widget.newFolderName);
//     defaultFolders.addFoldersToList();
//     return Container();
//   }
// }
