import 'package:flutter/material.dart';

class paysPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page pays')),
      body: Center(
          child: Text(
        'pays',
        style: TextStyle(fontSize: 22),
      )),
    );
  }
}
