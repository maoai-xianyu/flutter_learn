import 'package:flutter/material.dart';

class Project08ExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile demo'),
      ),
      body: Center(
        child: ExpansionTile(
          // 默认是否展开
          initiallyExpanded: true,
          title: Text('ExpansionTile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),
            )
          ],
        ),
      ),
    );
  }
}
