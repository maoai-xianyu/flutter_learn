import 'package:flutter/material.dart';

class Project10CustomClipper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('裁切'),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color: Colors.deepOrangeAccent,
              height: 200.0,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height - 50);
    // 画弧线
    // 控制点
    var firstPoint = Offset(size.width / 2, size.height);
    // 结束点
    var secondPoint = Offset(size.width, size.height - 50);
    // 二次贝塞尔曲线
    path.quadraticBezierTo(
      firstPoint.dx,
      firstPoint.dy,
      secondPoint.dx,
      secondPoint.dy,
    );
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
