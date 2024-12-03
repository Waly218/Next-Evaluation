import 'package:flutter/material.dart';

class TaskFormPage extends StatefulWidget {
  @override
  _TaskFormPageState createState() => _TaskFormPageState();
}

class _TaskFormPageState extends State<TaskFormPage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> task = {
    'title': 'Rédaction du rapport de projet',
    'description': 'Finaliser le rapport du projet de développement Flutter',
    'startDate': (2024, 11, 25),
    'endDate': (2024, 12, 5),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajouter une Tâche')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Titre'),
                onSaved: (value) => task['title'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) => task['description'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Date de début'),
                keyboardType: TextInputType.datetime,
                onSaved: (value) => task['startDate'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Date de fin'),
                keyboardType: TextInputType.datetime,
                onSaved: (value) => task['endDate'] = value,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  Navigator.pop(context, task);
                },
                child: Text('Enregistrer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
