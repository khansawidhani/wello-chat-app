import 'package:flutter/material.dart';
import 'package:wello_chat_application/screens/chat_screend.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Wello Chat"),),
      body: ChatScreen()
    );
  }
}