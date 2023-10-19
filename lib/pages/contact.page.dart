import 'package:flutter/material.dart';

class contactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page contact')),
      body: Center(
          child: Text(
        'contact',
        style: TextStyle(fontSize: 22),
      )),
    );
  }
}
