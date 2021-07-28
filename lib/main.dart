import 'package:flutter/material.dart';
import 'package:gmail/TextMsgPage.dart';
import 'package:gmail/composePage.dart';
import 'package:gmail/drawer.dart';
import 'chatList.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xffB23121),
      accentColor: Color(0xffD44638),
    ),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEEEEEE),
        appBar: AppBar(
          title: Text("Primary"),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        ),
        drawer: DrawerPage(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ComposePage()));
          },
        ),
        body: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, i) {
            // final item = chatsData[i];
            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: UniqueKey(),
              // Provide a function that tells the app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                  chatsData.removeAt(i);
                });
                // Then show a snackbar.
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('dismissed')));
              },
              // Show a red background as the item is swiped away.
              background: Container(color: Colors.red),
              child: Column(
                children: [
                  // topTail(
                  //     title: 'Social',
                  //     subTitle: 'Google+',
                  //     iData: Icons.people,
                  //     iColor: Colors.blue,
                  //     msg: '1 New'),
                  // Divider(
                  //   height: 0.1,
                  // ),
                  // topTail(
                  //     title: 'Promotion',
                  //     subTitle: 'Swiggy, Google Offers',
                  //     iData: Icons.more,
                  //     iColor: Colors.green,
                  //     msg: '2 New'),
                  // Divider(
                  //   height: 0.1,
                  // ),
                  // topTail(
                  //     title: 'Updates',
                  //     subTitle: 'Google Pay',
                  //     iData: Icons.info,
                  //     iColor: Colors.orange,
                  //     msg: '1 New'),
                  Divider(
                    height: 0.1,
                  ),
                  ListTile(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>TextMsgPage()));
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(chatsData[i].pic),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          chatsData[i].name,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          chatsData[i].time,
                          style:
                          TextStyle(fontSize: 11.0, color: Colors.grey),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(chatsData[i].msg),
                        Icon(chatsData[i].star),
                      ],
                    ),
                  ),
                  Divider(
                    height: 0.1,
                  ),
                ],
              ),
            );
          },
        ));
  }

  ListTile personTile(
      {required String url,
      required String name,
      required String msg,
      required String time,
      required bool isUnread}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20.0,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(
                fontWeight: isUnread ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            time,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(msg), Icon(Icons.star_border_purple500_outlined)],
      ),
    );
  }

  ListTile topTail(
      {required String title,
      required String subTitle,
      required IconData iData,
      required Color iColor,
      required String msg}) {
    return ListTile(
      leading: Icon(
        iData,
        color: iColor,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subTitle),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
        color: iColor,
        child: Text(
          msg,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
