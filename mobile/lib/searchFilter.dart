import 'package:flutter/material.dart';

class MyClass {
  String word1;
  String word2;
  String image;
  MyClass(this.word1, this.word2);
}

class searchFilter extends StatefulWidget {
  searchFilter({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _searchFilterState createState() => new _searchFilterState();
}

class _searchFilterState extends State<searchFilter> {
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = List<String>();

  List<MyClass> words = [
    MyClass(
        '22 Dec', "And there are miles of lorries parked on the M20 to Dover."),
    MyClass('21 Nov',
        "Here’s the view from the roof of one of the thousands of lorries parked in Manston airport in Kent."),
    MyClass('20 Oct',
        "People who fail to get vaccine could be banned from using public transport in France, according to a draft law sparking angry protests from opposition politicians, AFP reports."),
    MyClass('19 Sep',
        "Hospitals in the Netherlands have said they will postpone all non-critical care in the coming weeks in order to deal with the rapid rise in Covid patients, Reuters reports."),
    MyClass('18 Aug',
        "We are giving it the final push”, the EU’s chief Brexit negotiator, Michael Barnier has told reporters in Brussels."),
    MyClass('17 Jul', "Sturgeon warns of possible lockdown."),
  ];

  @override
  void initState() {
    super.initState();
  }

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
                itemCount: words.length,
                itemBuilder: (context, index) {
                  if (editingController.text.isEmpty) {
                    // search bar is empty
                    return widget1(words, index);
                  } else if (words[
                              index] // something in being typed in search bar
                          .word1
                          .toLowerCase()
                          .contains(editingController.text) ||
                      words[index]
                          .word2
                          .toLowerCase()
                          .contains(editingController.text)) {
                    return widget1(words, index);
                  } else {
                    return Container(); // return nothing
                  }
                }),
          ),
        ],
      ),
    );
  }
}

Widget widget1(List<MyClass> words, int index) {
  return FlatButton(
    onPressed: () {
      //do something
    },
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300],
        ),
      ),
      child: ListTile(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('...'),
            ),
          ],
        ),
        title: Text(
          '${words[index].word1}',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.grey.shade700,
          ),
        ),
        subtitle: Text(
          '${words[index].word2}',
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
