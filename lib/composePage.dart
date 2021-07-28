import 'package:flutter/material.dart';

bool pressed = false;

class ComposePage extends StatefulWidget {
  const ComposePage({Key? key}) : super(key: key);

  @override
  _ComposePageState createState() => _ComposePageState();
}

class _ComposePageState extends State<ComposePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Compose'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.attachment)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send)),
          PopupMenuButton<String>(
              offset: Offset(50, 0),
              icon: Icon(
                (Icons.more_vert),
                color: Colors.white,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: '1',
                    child: Text('Schedule Send'),
                  ),
                  PopupMenuItem<String>(
                    value: '2',
                    child: Text('Add from contacts'),
                  ),
                  PopupMenuItem<String>(
                    value: '3',
                    child: Text('Discard'),
                  ),
                  PopupMenuItem<String>(
                    value: '4',
                    child: Text('Save Draft'),
                  ),
                  PopupMenuItem<String>(
                    value: '5',
                    child: Text('Settings'),
                  ),
                  PopupMenuItem<String>(
                    value: '6',
                    child: Text('Help & Feedback'),
                  ),
                ];
              },
              onSelected: (value) {}),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'From',
                    style: TextStyle(fontSize: 18.0, color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      )),
                ),
              ],
            ),
            Divider(
              height: 1.0,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'To',
                    style: TextStyle(fontSize: 18.0, color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pressed = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 13.0),
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 35.0,
                    ),
                  ),
                )
              ],
            ),
            Divider(
              height: 1.0,
            ),
            pressed
                ? Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Cc',
                              style:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                                autocorrect: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Text(
                              'Bcc',
                              style:
                                  TextStyle(fontSize: 18.0, color: Colors.grey),
                            ),
                          ),
                          Expanded(
                            child: TextField(
                                autocorrect: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                      ),
                    ],
                  )
                : Container(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Expanded(
                child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    autocorrect: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Subject',
                        hintStyle: TextStyle(color: Colors.grey))),
              ),
            ),
            Divider(
              height: 1.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                autocorrect: true,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Compose Email',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
