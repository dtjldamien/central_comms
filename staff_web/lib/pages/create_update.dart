import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:quill_delta/quill_delta.dart';
import 'package:zefyr/zefyr.dart';

class CreateUpdatePage extends StatefulWidget {
  @override
  _CreateUpdatePageState createState() => _CreateUpdatePageState();
}

class _CreateUpdatePageState extends State<CreateUpdatePage> {
  String dropdownUpdateType = 'Important';
  String dropdownFollowUpType = 'Acknowledgement';
  final format = DateFormat("dd MMMM yyyy HH:mm");

  /// Allows to control the editor and the document.
  ZefyrController _controller;

  /// Zefyr editor like any other input field requires a focus node.
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    // Here we must load the document and pass it to Zefyr controller.
    final document = _loadDocument();
    _controller = ZefyrController(document);
    _focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('uNiVUS'),
        elevation: 0,
        backgroundColor: Colors.deepOrange,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('View All Notifications')),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/viewAllUpdates');
                  },
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('Notifications Archive')),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/viewUpdateDetails');
                  },
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('View All Posts')),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    child: const Center(child: Text('Posts Archive')),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Update placeholder',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.0),
                ),
                Row(children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Title'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Department'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Update Title',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  enabled: false,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Department',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Recipients'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Type of Update'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Update Recipients',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: DropdownButton<String>(
                                  value: dropdownUpdateType,
                                  icon: Icon(Icons.arrow_downward),
                                  iconSize: 24,
                                  elevation: 16,
                                  underline: Container(
                                    height: 2,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      dropdownUpdateType = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Important',
                                    'Announcements',
                                    'Notices',
                                    'Circulars'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Message'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Schedule Message'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // child: ZefyrScaffold(
                                //   child: ZefyrEditor(
                                //     padding: EdgeInsets.all(16),
                                //     controller: _controller,
                                //     focusNode: _focusNode,
                                //   ),
                                // ),
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Message',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Column(
                                  children: <Widget>[
                                    DateTimeField(
                                      format: format,
                                      onShowPicker:
                                          (context, currentValue) async {
                                        final date = await showDatePicker(
                                            context: context,
                                            firstDate: DateTime(2020),
                                            initialDate:
                                                currentValue ?? DateTime.now(),
                                            lastDate: DateTime(2030));
                                        if (date != null) {
                                          final time = await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                currentValue ?? DateTime.now()),
                                          );
                                          return DateTimeField.combine(
                                              date, time);
                                        } else {
                                          return currentValue;
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Cover Image'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Follow up action type'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Upload Cover Image here',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: DropdownButton<String>(
                                  value: dropdownFollowUpType,
                                  icon: Icon(Icons.arrow_downward),
                                  iconSize: 24,
                                  elevation: 16,
                                  underline: Container(
                                    height: 2,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      dropdownFollowUpType = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Acknowledgement',
                                    'Files',
                                    'Links',
                                    'Reminders'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Summary'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Follow up content'),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Summary',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Set Follow Up Content',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Text('Tags'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Tags',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () async {},
                                      child: Text('Preview Update'),
                                    ),
                                    TextButton(
                                      onPressed: () async {},
                                      child: Text('Create Update'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  NotusDocument _loadDocument() {
    // For simplicity we hardcode a simple document with one line of text
    // saying "Zefyr Quick Start".
    // (Note that delta must always end with newline.)
    final Delta delta = Delta()..insert("Zefyr Quick Start\n");
    return NotusDocument.fromDelta(delta);
  }
}
