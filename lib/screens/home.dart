import 'package:flutter/material.dart';
import 'package:wello_chat_application/screens/chat.dart';
import 'package:wello_chat_application/screens/conversations.dart';
import 'package:wello_chat_application/screens/favourites.dart';
import 'package:wello_chat_application/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _pages = <Widget>[Conversations(), StarredMessages(), UserProfile()]; 
  void onItemTapped(int index){
    setState(() {
      _selectedIndex = index;

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.teal[900],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Starred"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Profile"),
        ],
      ),
    );
  }
}