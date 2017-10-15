import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Gym Fit'),
      //debugShowMaterialGrid: true,
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
  int _counter = 0;

//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button:'),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          primary: false,
          children: [
            new DrawerHeader(child: new Text('Gym Fit')),
            new Divider(),
            new ListTile(title: new Text('jhghj jhgj hgjhg jhgjh')),
            new ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Send feedback'),
              onTap: () {
                launch('https://github.com/flutter/flutter/issues/new');
              },
            ),
          ],
        ),
      ),
    );
  }
}
