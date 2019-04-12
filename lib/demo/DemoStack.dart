import 'package:flutter/material.dart';

class DemoStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DemoStackPosition();
  }
}

class DemoStackAlignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: FractionalOffset(0.5, 0.8),
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'http://img5.mtime.cn/mt/2019/04/11/102352.34297981_100X140X4.jpg'),
            radius: 100.0,
          ),
          Container(
            child: Text('电影-钢铁侠'),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}

class DemoStackPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'http://img5.mtime.cn/mt/2019/04/11/102352.34297981_100X140X4.jpg'),
            radius: 100.0,
          ),
          Positioned(
            top: 10.0,
            left: 50.0,
            child: Container(
              child: Text(
                'coding tk.com',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 255, 125, 125),
                  decoration: TextDecoration.underline, // 下划线
                  decorationStyle: TextDecorationStyle.dotted, // 下划线样式
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 20.0,
            child: Text(
              'coding tk',
            ),
          ),
        ],
      ),
    );
    ;
  }
}
