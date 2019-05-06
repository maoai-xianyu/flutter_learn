import 'package:flutter/material.dart';


/**
 * 动态页面
 */
class EachScreen extends StatefulWidget {
  String _title;

  EachScreen(this._title);

  @override
  _EachScreenState createState() => _EachScreenState();
}

class _EachScreenState extends State<EachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
