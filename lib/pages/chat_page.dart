import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material App Bar"),
      ),
      body: Center(
        child: Container(
          child: Text("chat page"),
        ),
      ),
    );
  }
}
