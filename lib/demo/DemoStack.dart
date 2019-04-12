import 'package:flutter/material.dart';

class DemoStack extends StatelessWidget {
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
