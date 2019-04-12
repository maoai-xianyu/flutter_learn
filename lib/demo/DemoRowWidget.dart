import 'package:flutter/material.dart';

/**
 * 横向列表
 */
class DemoRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RowWidgetFlexibleAll();
  }
}

class RowWidgetFlexibleAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: () => {},
          color: Colors.blueAccent,
          child: Text('blueAccent color'),
        ),
        Expanded(
          child: RaisedButton(
            onPressed: () => {},
            color: Colors.limeAccent,
            child: Text('limeAccent color'),
          ),
        ),
        RaisedButton(
          onPressed: () => {},
          color: Colors.orangeAccent,
          child: Text('orangeAccent color'),
        ),
      ],
    );
  }
}

class RowWidgetFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RaisedButton(
            onPressed: () => {},
            color: Colors.blueAccent,
            child: Text('blueAccent color'),
          ),
        ),
        Expanded(
          child: RaisedButton(
            onPressed: () => {},
            color: Colors.limeAccent,
            child: Text('limeAccent color'),
          ),
        ),
        Expanded(
          child: RaisedButton(
            onPressed: () => {},
            color: Colors.orangeAccent,
            child: Text('orangeAccent color'),
          ),
        ),
      ],
    );
  }
}

class RowWidgetNotFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: () => {},
          color: Colors.blueAccent,
          child: Text('blueAccent color'),
        ),
        RaisedButton(
          onPressed: () => {},
          color: Colors.limeAccent,
          child: Text('limeAccent color'),
        ),
        RaisedButton(
          onPressed: () => {},
          color: Colors.orangeAccent,
          child: Text('orangeAccent color'),
        ),
      ],
    );
  }
}
