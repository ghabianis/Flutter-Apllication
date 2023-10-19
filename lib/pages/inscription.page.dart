import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class inscriptionPage extends StatelessWidget {
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();

  late SharedPreferences prefs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page Inscription')),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: txt_login,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Utilisateur",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1))),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: txt_password,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 1))),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50)),
            onPressed: () {
              _onInscrire(context);
            },
            child: Text(
              'Inscription',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        TextButton(
          child: Text("j'ai deja un compte", style: TextStyle(fontSize: 22)),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/authentification');
          },
        )
      ]),
    );
  }

  Future<void> _onInscrire(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool('connecte', true);
    if (txt_login.text.isNotEmpty && txt_password.text.isNotEmpty) {
      prefs.setString("login", txt_login.text);
      prefs.setString("password", txt_password.text);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    } else {
      const snackBar = SnackBar(content: Text('verifier'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
