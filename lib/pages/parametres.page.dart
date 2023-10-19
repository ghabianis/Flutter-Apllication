import 'package:flutter/material.dart';

class ParametresPage extends StatefulWidget {
  @override
  _ParametresPageState createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
  bool isNightModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isNightModeEnabled ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Paramètres'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.language),
                title: Text('Language'),
                // Add onTap if you want to handle tap events
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                // Add onTap if you want to handle tap events
              ),
              SwitchListTile(
                title: Text('Night Mode'),
                secondary: Icon(Icons.nightlight_round),
                value: isNightModeEnabled,
                onChanged: (value) {
                  setState(() {
                    isNightModeEnabled = value;
                  });
                },
              ),
              // Add more ListTile widgets for additional parameters
            ],
          ),
        ),
      ),
    );
  }
}
