import 'package:flutter/material.dart';
import 'package:gym_fit/model.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Gym Fit',
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new MyHomePage(title: 'Gym Fit'),
      routes: {
        '/': (context) => new MyHomePage(),
        '/routine': (context) => new MyHomePage(), // TODO:
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Routine> _routines = routines;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        children: _routines.map((Routine routine) {
          return new Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            child: new RoutineItem(routine),
          );
        }).toList(),
      ),
      drawer: buildDrawer(),
    );
  }

  Drawer buildDrawer() {
    return new Drawer(
      child: new ListView(
        primary: false,
        children: [
          new DrawerHeader(child: new Text('Gym Fit')),
          new RadioListTile<bool>(
            secondary: const Icon(Icons.brightness_3),
            title: const Text('Light'),
            value: true,
            groupValue: true,
            onChanged: null,
          ),
          new RadioListTile<bool>(
            secondary: const Icon(Icons.brightness_5),
            title: const Text('Dark'),
            value: true,
            groupValue: false,
            onChanged: null,
          ),
          new Divider(),
//            new ListTile(title: new Text('Jhghj jhgj hgjhg')),
          new ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Send feedbackk'),
            onTap: () {
              launch('https://github.com/flutter/flutter/issues/new');
            },
          ),
        ],
      ),
    );
  }
}

class RoutineItem extends StatelessWidget {
  final Routine routine;

  RoutineItem(this.routine);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Card(
        child: padding(
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: new Text(
                  routine.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]..addAll(routine.exercises.map((e) => new Text('• $e'))),
          ),
        ),
      ),
    );
  }
}

Padding padding(Widget child) {
  return new Padding(padding: const EdgeInsets.all(8.0), child: child);
}
