import 'package:flutter/material.dart';

class DemoCard extends StatelessWidget {
  final card = Card(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    margin: EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text(
            '山西大同',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          subtitle: Text('coding tk'),
        ),
        Divider(
          height: 1.0,
          color: Colors.blueGrey,
        ),
        ListTile(
          title: Text(
            '山西太原',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          subtitle: Text('coding tk'),
        ),
        Divider(
          height: 1.0,
          color: Colors.blueGrey,
        ),
        ListTile(
          title: Text(
            '北京海淀',
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
          subtitle: Text('coding tk'),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return card;
  }
}
