import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/list_helper.dart';
import '../pages/ajout_modif_contact.page.dart';
import '../model/contact.model.dart';
import '../services/contact.service.dart';

class contactPage extends StatefulWidget {
  // Changed to StatefulWidget
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<contactPage> {
  // Added state

  ContactService contactService = ContactService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page contact')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FormHelper.submitButton(
                "Ajout",
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AjoutModifContactPage(),
                    ),
                  ).then((value) {
                    setState(() {});
                  });
                },
                borderRadius: 10,
                btnColor: Colors.blue,
                borderColor: Colors.blue,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _fetchData(),
          ],
        ),
      ),
    );
  }

  Widget _fetchData() {
    // Added return type Widget
    return FutureBuilder<List<Contact>>(
      future: contactService.listeContacts(),
      builder: (BuildContext context, AsyncSnapshot<List<Contact>> contacts) {
        // Fixed Buildcontext to BuildContext
        if (contacts.hasData) return _buildDataTable(contacts.data!);
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Widget _buildDataTable(List<Contact> listContacts) {
    // Added return type Widget
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListUtils.buildDataTable(
        context,
        ["Nom", "Telephone", "Action"],
        ["nom", "tel", ""],
        false,
        0,
        listContacts,
        (Contact c) {
          //Modifier
        },
        (Contact c) {
          //supprimer
        },
        headingRowColor: Colors.orangeAccent,
        isScrollable: true,
        columnTextFontSize: 20,
        columnTextBold: false,
        columnSpacing: 50,
        onSort: (columnIndex, columnName, asc) {},
      ),
    );
  }
}
