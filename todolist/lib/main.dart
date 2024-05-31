import 'package:flutter/material.dart';

    void _showInputDialog () {
      print('done');
    }


void main() => runApp(MaterialApp(home: ToDoList()));

  class ToDoList extends StatefulWidget {
    @override
    State<ToDoList> createState() => _ToDoListState();
  }

  class _ToDoListState extends State<ToDoList> {

    List<String> _tasks = ['Courses', 'Menus de la semaine', ' Yoga', 'Minecraft'];

    void _showInputDialog () {
      setState(() {
        _tasks.add('test');
      });
    }

    @override
  Widget build(BuildContext context) {

      return Scaffold(
      appBar: AppBar(
        title: Text('Ma Liste')
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          final task = _tasks[index];
          return ListTile(
            title: Text(task)
          );
        }
       
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: _showInputDialog,
      child: Icon(Icons.add),
      ),
    );
  }
  }

  
