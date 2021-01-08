import 'package:central_comms/opening.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Article {
  String date;
  String description;
  Color color;
  Article(this.date, this.description, this.color);
}

class SearchFilter extends StatefulWidget {
  SearchFilter({Key key, Article article}) : super(key: key);

  @override
  _SearchFilterState createState() => new _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  Color filterC = Colors.transparent;
  TextEditingController editingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print(filterC);
  }

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");

  void folderColor(Color color) {
    filterC = color;
    print(filterC);
  }

  bool compareColors(int index) {
    if (filterC.blue == article[index].color.blue &&
        filterC.green == article[index].color.green &&
        filterC.red == article[index].color.red) {
      print('same color, $index');
      return true;
    } else {
      print('different color, $index');
      return false;
    }
  }

  List<Folder> folder = [];

  List<Article> article = [
    Article(
        '22 Dec',
        "And there are miles of lorries parked on the M20 to Dover.",
        Colors.amber),
    Article(
        '21 Nov',
        "Here’s the view from the roof of one of the thousands of lorries parked in Manston airport in Kent.",
        Colors.red),
    Article(
        '20 Oct',
        "People who fail to get vaccine could be banned from using public transport in France, according to a draft law sparking angry protests from opposition politicians, AFP reports.",
        Colors.black),
    Article(
        '19 Sep',
        "Hospitals in the Netherlands have said they will postpone all non-critical care in the coming weeks in order to deal with the rapid rise in Covid patients, Reuters reports.",
        Colors.black),
    Article(
        '18 Aug',
        "We are giving it the final push”, the EU’s chief Brexit negotiator, Michael Barnier has told reporters in Brussels.",
        Colors.green),
    Article('17 Jul', "Sturgeon warns of possible lockdown.", Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: editingController,
              decoration: InputDecoration(
                  hintText: "Search...",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                shrinkWrap: true,
                itemCount: article.length,
                // ignore: missing_return
                itemBuilder: (context, index) {
                  if (editingController.text.isEmpty) {
                    // search bar is empty

                    // if (filterC.equals()) {
                    //   print(index);
                    // }
                    compareColors(index);

                    return Dismissible(
                      key: UniqueKey(), //changed from original

                      onDismissed: (direction) {
                        setState(() {
                          article.removeAt(index);
                        });

                        Scaffold.of(context).showSnackBar(SnackBar(
                            // content: Text('deleted "${words[index].description}" that was posted on ${words[index].date}')));
                            content: Text("deleted $index")));
                      },

                      background: Container(color: Colors.red),

                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: widget1(article, index),
                      ),
                    );
                  } else if (article[index]
                          .date
                          .toLowerCase()
                          .contains(editingController.text) ||
                      article[index]
                          .description
                          .toLowerCase()
                          .contains(editingController.text)) {
                    // something in being typed in search bar

                    return Dismissible(
                      key: UniqueKey(), //changed from original

                      onDismissed: (direction) {
                        setState(() {
                          article.removeAt(index);
                        });

                        // Then show a snackbar.
                        Scaffold.of(context).showSnackBar(SnackBar(
                            // content: Text('deleted "${words[index].description}" that was posted on ${words[index].date}')));
                            content: Text("delete $index")));
                      },

                      background: Container(color: Colors.red),

                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: widget1(article, index),
                      ),
                    );
                  } else {
                    return Container(); // return nothing
                  }
                }),
          ),
          Padding(padding: EdgeInsets.only(top: 15))
        ],
      ),
    );
  }
}

Widget widget1(List<Article> words, int index) {
  return FlatButton(
    shape: Border(
      left: BorderSide(color: words[index].color, width: 5),
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
    },
    child: Container(
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 25,
              // backgroundImage: AssetImage('...'),
              backgroundColor: Colors.amber,
            ),
          ],
        ),
        title: Text(
          '${words[index].date}',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey.shade700,
          ),
        ),
        subtitle: Text(
          '${words[index].description}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.grey.shade700,
          ),
        ),
      ),
      padding: EdgeInsets.only(
        bottom: 15,
        top: 15,
      ),
    ),
  );
}
