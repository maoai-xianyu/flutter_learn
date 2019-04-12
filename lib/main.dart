import 'package:flutter/material.dart';
import 'demo/DemoText.dart';
import 'demo/DemoContainer.dart';
import 'demo/DemoListView.dart';
import 'demo/DemoGridView.dart';
import 'demo/DemoColumnWidget.dart';
import 'demo/DemoStack.dart';
import 'demo/DemoCard.dart';
import 'demo/DemoCard.dart';
import 'demo/DemoNavigatorReturnData.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row widegt demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由'),
      ),
      body: DemoNavigatorReturnData(),
    );
  }
}
