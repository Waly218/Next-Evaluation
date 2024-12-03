import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {'title': 'Rédaction du rapport de projet', 'description': 'Finaliser le rapport du projet de développement Flutter'},
    {'title': 'Rédaction du rapport de projet 2', 'description': 'Finaliser le rapport du projet de développement Flutter 2'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Liste des Tâches')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task['title']!),
            subtitle: Text(task['description']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/taskDetails',
                arguments: task,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/taskForm');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
