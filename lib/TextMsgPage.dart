import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TextMsgPage extends StatefulWidget {
  const TextMsgPage({Key? key}) : super(key: key);

  @override
  _TextMsgPageState createState() => _TextMsgPageState();
}

class _TextMsgPageState extends State<TextMsgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.archive_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
          IconButton(onPressed: (){}, icon: Icon(Icons.mail_outline_outlined)),
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
                    child: Text('Snooze'),
                  ),
                  PopupMenuItem<String>(
                    value: '2',
                    child: Text('Change Labels'),
                  ),
                  PopupMenuItem<String>(
                    value: '3',
                    child: Text('Mark as important'),
                  ),
                  PopupMenuItem<String>(
                    value: '4',
                    child: Text('Unsubscribe'),
                  ),
                  PopupMenuItem<String>(
                    value: '5',
                    child: Text('Mute'),
                  ),
                  PopupMenuItem<String>(
                    value: '6',
                    child: Text('View in light theme'),
                  ),
                  PopupMenuItem<String>(
                    value: '7',
                    child: Text('print'),
                  ),
                  PopupMenuItem<String>(
                    value: '8',
                    child: Text('Report spam'),
                  ),
                  PopupMenuItem<String>(
                    value: '9',
                    child: Text('Add to Tasks'),
                  ),
                  PopupMenuItem<String>(
                    value: '10',
                    child: Text('Help and feedback'),
                  ),

                ];
              },
              onSelected: (value) {}),

        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SizedBox(height: 20.0,),
                     Text('BitSathy - Daily News',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                     SizedBox(height: 10.0,),
                     Row(
                       children: [
                         Text('19.7.2021',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                         Container(
                           decoration: BoxDecoration(
                             border: Border.all(color: Colors.grey),
                             borderRadius: BorderRadius.circular(2.0)
                           ),
                           child: Text('Inbox',style: TextStyle(fontSize: 9.5),),
                         )
                       ],
                     )
                   ],
                 ),
               ),
               IconButton(onPressed: (){}, icon: Icon(Icons.star_border_purple500_outlined),
               ),
             ],
           ),
          ),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: ExactAssetImage('images/2.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Daily News BIT  ',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                        Text('Yesterday',style: TextStyle(fontSize: 12.0,)),
                      ],
                    ),
                    Text('to me'),
                  ],
                ),
                Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(math.pi),
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.subdirectory_arrow_left_outlined),
                    ),
                ),
                PopupMenuButton<String>(
                    offset: Offset(50, 0),
                    icon: Icon(
                      (Icons.more_vert),
                      color: Colors.grey.shade700,
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem<String>(
                          value: '1',
                          child: Text('Reply all'),
                        ),
                        PopupMenuItem<String>(
                          value: '2',
                          child: Text('Forward'),
                        ),
                        PopupMenuItem<String>(
                          value: '3',
                          child: Text('Add star'),
                        ),
                        PopupMenuItem<String>(
                          value: '4',
                          child: Text('Print'),
                        ),
                        PopupMenuItem<String>(
                          value: '5',
                          child: Text('Make unread from here'),
                        ),
                        PopupMenuItem<String>(
                          value: '6',
                          child: Text('Block "Daily News BIT'),
                        ),
                      ];
                    },
                    onSelected: (value) {}),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70.0,),
                 Text('Dear Students'),
                SizedBox(height: 20.0,),
                  Text('You can control everything about the Text Field with the TextEditingController. '
                      'So if you were to pair this information with an onChanged event from the TextField '
                      'you could perform any logic you like in there. For example:'),
                SizedBox(height: 20.0,),
                Text('Thank you')
              ],
            )
          ),
          Padding(
            padding:EdgeInsets.only(top: 320.0,right: 20.0,left: 20.0,bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: Text(' Reply '),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: Text(' Reply all'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: Text('Forward'),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
