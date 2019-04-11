import 'package:flutter/material.dart';

class DemoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListViewMoveA(
      items: List<String>.generate(200, (i) => "Item $i"),
    );
  }
}

// ignore: slash_for_doc_comments
/**
 * 动态数组
 */
class ListViewMoveA extends StatelessWidget {
  final List<String> items;

  ListViewMoveA({Key key, @required this.items}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      child: ListTile(
        title: Text('${items[index]}'),
        leading: Icon(Icons.accessible),
      ),
      height: 100.0,
      padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blueAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: _listItemBuilder,
    );
  }
}

// ignore: slash_for_doc_comments
/**
 * 动态数组
 */
class ListViewMove extends StatelessWidget {
  final List<String> items;

  ListViewMove({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${items[index]}'),
        );
      },
    );
  }
}

class ListViewHUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 180.0,
              color: Colors.lightBlue,
              child: ListTile(
                leading: Icon(Icons.access_alarms),
                title: Text('codingTk'),
              ),
            ),
            Container(
              width: 180.0,
              color: Colors.amberAccent,
              child: ListTile(
                leading: Icon(Icons.access_time),
                title: Text('codingTk'),
              ),
            ),
            Container(
              width: 180.0,
              color: Colors.greenAccent,
              child: ListTile(
                leading: Icon(Icons.accessible_forward),
                title: Text('codingTk'),
              ),
            ),
            Container(
              width: 180.0,
              color: Colors.limeAccent,
              child: ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('codingTk'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewVUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text('codingTk'),
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('codingTk'),
            ),
            ListTile(
              leading: Icon(Icons.accessible_forward),
              title: Text('codingTk'),
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text('codingTk'),
            ),
          ],
        ),
      ),
    );
  }
}
