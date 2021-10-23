import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wello Chat"),),
      body: Center(child: Text("Welcome to WELLO CHAT"),),
    );
  }
}