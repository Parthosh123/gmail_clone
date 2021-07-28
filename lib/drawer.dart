import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 180.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('images/back.jpg'),
                  fit: BoxFit.cover,
                )
            ),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: ExactAssetImage('images/8.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Diana',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 20.0),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('julie@gmail.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
              ),
            ),
          ),
          drawerTile(iData: Icons.inbox,title: 'All Inboxes',count: '',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.people,title: 'Social',count: '99+',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.more,title: 'Promotions',count: '2 New',iColor: Colors.blue),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.star,title: 'Starred',count: '2',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.alarm,title: 'Snoozed',count: '',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.send,title: 'Sent',count: '',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.mail_outline,title: 'Outbox',count: '',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.insert_drive_file,title: 'Docs',count: '',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.bookmark,title: 'Saved',count: '10',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.mail_outline_outlined,title: 'All mail',count: '10',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.delete,title: 'Bin',count: ' ',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
          drawerTile(iData: Icons.dnd_forwardslash,title: 'Spam',count: ' ',iColor: Color(0xfffafafa)),
          Divider(height: 0.1,),
        ],
      ),
    );
  }
}

ListTile drawerTile({required IconData iData,required String title,required String count,required Color iColor
}) {
  return ListTile(
    leading: Icon(iData),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          color: iColor,
          child: Text(count,style: TextStyle(fontWeight: FontWeight.bold,
              color: iColor == Color(0xfffafafa)?Colors.black:Colors.white
          ),
          ),
        )
      ],
    ),
  );
}