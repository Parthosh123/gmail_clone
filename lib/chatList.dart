import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String pic;
  final IconData star;

  ChatModel(this.name, this.msg, this.time, this.pic, this.star);
}

List<ChatModel> chatsData = [
  ChatModel("Nikhil Deepak", "Hai hello", "11.20",
      "https://randomuser.me/api/portraits/men/0.jpg",Icons.star_border_purple500_outlined),
  new ChatModel("Barath Raj", 'Macha', '10:00 AM',
      'https://randomuser.me/api/portraits/men/1.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Samson", 'Ena bro panra ', '09:00 AM',
      'https://randomuser.me/api/portraits/men/12.jpg',Icons.star_border_purple500_outlined),
  new ChatModel(
      "Tom Cruse ",
      'When is our appointment is scheduled ',
      '10:30 AM',
      'https://randomuser.me/api/portraits/men/3.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Yogesh Sabari Raj", 'Valpara polama da😁?', '12:30 PM',
      'https://randomuser.me/api/portraits/men/4.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Achu", 'Call me na🤙📲', 'Yesterday',
      'https://randomuser.me/api/portraits/women/5.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Vishnu", 'Good Night Bro😴', 'Yesterday',
      'https://randomuser.me/api/portraits/men/6.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Mahal", '🤣', 'Yesterday',
      'https://randomuser.me/api/portraits/women/7.jpg',Icons.star_border_purple500_outlined),
  new ChatModel(
      "Kavin",
      'Anney..Zigbee is a wireless technology',
      '20/04/2020',
      'https://randomuser.me/api/portraits/men/8.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Arun Kumar", 'UI wireframe mail panuga na!', '22/04/2020',
      'https://randomuser.me/api/portraits/women/9.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Amma", 'Sapada va', '22/04/2020',
      'https://randomuser.me/api/portraits/men/9.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Amma", 'Sapada va', '22/04/2020',
      'https://randomuser.me/api/portraits/men/10.jpg',Icons.star_border_purple500_outlined),
  new ChatModel("Macha", 'padathuku pola ma?', '22/04/2020',
      'https://randomuser.me/api/portraits/men/25.jpg',Icons.star_border_purple500_outlined),
];