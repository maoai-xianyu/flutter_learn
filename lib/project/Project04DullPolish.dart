import 'package:flutter/material.dart';
import 'dart:ui'; // Fliter Widget 需要的 dart:ui

/**
 * 磨砂效果 毛玻璃 消耗性能
 */
class Project04DullPolish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('毛玻璃效果'),
      ),
      body: Stack(
        children: <Widget>[
          // 约束，添加额外的约束条件在child上
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Image.network(
                'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
          ),
          Center(
            // 可以裁剪的矩形
            child: ClipRect(
              // 背景过滤器
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        'coding tk',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
