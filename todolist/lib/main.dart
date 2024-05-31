import 'package:flutter/material.dart';

class Task {
      final String title;
      final bool description;

     Task(this.title, this.description);
  }

void main() => runApp(MaterialApp(home: ToDoList()));

  class ToDoList extends StatefulWidget {
    @override
    State<ToDoList> createState() => _ToDoListState();
  }

  class _ToDoListState extends State<ToDoList> {

    bool _isDone =  false;

    List<Task> _tasks = [];

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
                  if(controller.text.startsWith('-')) {
                    _tasks.add(Task(controller.text, true));
                  } else {
                    _tasks.add(Task(controller.text, false));
                  }                  
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
            title: Text(task.title,
            style: TextStyle(decoration: task.description ? TextDecoration.lineThrough : null)            
            ),
            onTap: () {
              setState(() { 
                if(task.title.startsWith('-')) {
                  _tasks[index] = Task(task.title.substring(1),!task.description);
                } else {
                _tasks[index] = Task('-' + task.title,!task.description);
                } 
                print(task);
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

  
