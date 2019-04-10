import 'package:flutter/material.dart';

class DemoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Hello codingTk',
          style: TextStyle(
            fontSize: 40.0,
          ),
        ),
        // alignment Container里面字内容的对齐方式
        alignment: Alignment.topLeft,
        width: 500.0,
        height: 400.0,
        //color: Colors.lightBlue,
        //padding: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0),
        margin: const EdgeInsets.all(10.0),
        //margin: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 20.0),
        // decoration是 container 的修饰器，主要的功能是设置背景和边框。和 color 会有冲突
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple],
          ),
          border: Border.all(width: 5.0,color: Colors.red),
        ),
      ),
    );
  }
}
