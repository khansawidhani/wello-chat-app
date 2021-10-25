import 'package:flutter/material.dart';
import 'package:wello_chat_application/core/theme.dart';
import 'package:wello_chat_application/screens/chat.dart';
import 'package:wello_chat_application/screens/home.dart';

class App extends StatelessWidget {
  App({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wello Chat Application",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: AppTheme().theme(),
      routes: {
        "/chat": (context)=>ChatScreen()
      },
    );
  }
}