import 'package:flutter/material.dart';

class DemoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello JSPang  ,非常喜欢前端，并且愿意为此奋斗一生。我希望可以出1000集免费教程。',
        textAlign: TextAlign.left,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 25.0,
          color: Color.fromARGB(255, 255, 125, 125),
          decoration: TextDecoration.underline, // 下划线
          decorationStyle: TextDecorationStyle.dotted, // 下划线样式
        ),
      ),
    );
  }
}
