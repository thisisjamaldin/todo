import 'package:flutter/material.dart';
import 'package:todo/todo_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoModel> todos = [
    TodoModel(
      title: 'По завтракать',
      description: 'Сегодня хочу рано встать, меня ждут вуликие дела',
      done: false,
    ),
    TodoModel(
      title: 'Идти на работу',
      description: 'Сегодня хочу рано встать, меня ждут вуликие дела',
      done: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Row(children: [Text(todos[index].title)]),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
    );
  }
}
