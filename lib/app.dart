// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:wello_chat_application/core/theme.dart';
import 'package:wello_chat_application/screens/chat.dart';
import 'package:wello_chat_application/screens/home.dart';
import 'package:wello_chat_application/screens/new_chat.dart';
import 'package:wello_chat_application/screens/profile.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wello Chat Application",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: AppTheme().theme(),
      routes: {
        "/chat": (context)=> ChatScreen(),
        "/new_chat": (context)=>const NewChat(),
        "/profile": (context)=>const UserProfile(),
      },
    );
  }
}