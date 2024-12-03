import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(title: Text(task['title'] ?? 'Détails de la Tâche')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Titre : ${task['title']}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description : ${task['description']}'),
            SizedBox(height: 10),
            Text('Date de début : ${task['startDate']}'),
            SizedBox(height: 10),
            Text('Date de fin : ${task['endDate']}'),
          ],
        ),
      ),
    );
  }
}
