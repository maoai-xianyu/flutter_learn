import 'package:flutter/material.dart';
import 'demo/DemoText.dart';
import 'demo/DemoContainer.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weclome to Flutter',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weclome to Flutter'),
      ),
      body: DemoContainer(),
    );
  }
}
