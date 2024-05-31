import 'package:flutter/material.dart';

void main() {

  List<String> list = ['Courses', 'Menus de la semaine', ' Yoga', 'Minecraft'];

  void _showInputDialog () {
    print('done');
  }

  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Ma Liste')
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Vaisselle'),
          ),
          ListTile(
            title: Text('Musique'),
          ),
          ListTile(
            title: Text('Ménage'),
          ),
          ListTile(
            title: Text('Code'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // Add an "Edit" icon button that launches the input dialog box when pressed
      onPressed: _showInputDialog,
      child: Icon(Icons.add),
      ),
    ),
  ));

}

