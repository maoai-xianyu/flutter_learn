import 'package:flutter/material.dart';

class DemoColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // 交叉轴是水平方向   Row 正好相反
        crossAxisAlignment: CrossAxisAlignment.center,
        // 主轴是垂直方向
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('coding tk1'),
          Expanded(
            child: Text('coding tk2  codingtype.com'),
          ),
          Text('coding tk3'),
          Text('coding tk3'),
        ],
      ),
    );
  }
}
