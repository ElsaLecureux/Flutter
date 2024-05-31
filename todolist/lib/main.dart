import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: ToDoList()));

  class ToDoList extends StatefulWidget {
    @override
    State<ToDoList> createState() => _ToDoListState();
  }

  class _ToDoListState extends State<ToDoList> {

    bool _isDone =  false;

    List<String> _tasks = [];

    void _showInputDialog () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController controller = TextEditingController();

          return AlertDialog(
            title: Text('Add a new task'),
            content: TextField(
              controller: controller,
              decoration: InputDecoration(hintText: 'new task'),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                Navigator.of(context).pop();
              },
                child: Text(
                  'Cancel'
                )),
                TextButton(
                onPressed: () {
                setState(() {
                  _tasks.add(controller.text); 
                });
                 Navigator.of(context).pop();
              },
                child: Text(
                  'Save'
                ))
            ],
          );
        }
      );
    }

    @override
  Widget build(BuildContext context) {

      return Scaffold(
      appBar: AppBar(
        title: Text('To do list')
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          final task = _tasks[index];
          return ListTile(
            title: Text(task,
            style: TextStyle(decoration: _isDone ? TextDecoration.lineThrough : null)
            ),
            onTap: () {
              setState(() {  
                _isDone = !_isDone;
                print(_isDone);
              });
            },
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

  
