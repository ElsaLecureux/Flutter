import 'package:flutter/material.dart';

class Task {
      final String title = "";
      final bool description = false;

     task(title, description) {
      title = this.title;
      description= this.description;
    }
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
                    Task newTask = Task.task(title: controller.text, description: true);
                    _tasks.add(newTask);
                  }
                  Task newTask = task(title: controller.text, description: false);
                  _tasks.add(newTask);
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
            style: TextStyle(decoration: _isDone || task.description ? TextDecoration.lineThrough : null)            
            ),
            onTap: () {
              setState(() {  
                _isDone = !_isDone;
                task changeTask = task(title: "-$task.title", description: true);
                _tasks[index] = changeTask;
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

  
