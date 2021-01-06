import 'package:clone_chat/screens/contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyChat());
}

class MyChat extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messenger clone',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ContactScreen(),
    );
  }
}
