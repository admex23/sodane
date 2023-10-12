import 'package:flutter/material.dart';

class EditorsPage extends StatelessWidget {
  const EditorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editors'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John Doe'),
            subtitle: Text('Editor-in-Chief'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Jane Smith'),
            subtitle: Text('Senior Editor'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Mike Johnson'),
            subtitle: Text('Assistant Editor'),
          ),
        ],
      ),
    );
  }
}// TODO Implement this library.