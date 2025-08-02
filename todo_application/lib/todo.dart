import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> todos = [];
  TextEditingController controller = TextEditingController();

  void addTodo(){
    if(controller.text.isNotEmpty){
      setState(() {
        todos.add(controller.text);
        controller.clear();
      });
    }
  }

  void deleteTodo(int index){
    setState(() {
      todos.removeAt(index);
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Simple ToFO Application')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(hintText: 'Add a new task'),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    addTodo();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        todos.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
