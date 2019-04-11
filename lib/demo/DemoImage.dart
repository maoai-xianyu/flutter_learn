import 'package:flutter/material.dart';

class DemoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          'https://avatars3.githubusercontent.com/u/17868022?s=40&v=4',
          //fit: BoxFit.contain,
          color: Colors.greenAccent,
          // 混合模式
          colorBlendMode: BlendMode.modulate,
          repeat: ImageRepeat.repeatX,
        ),
        width: 300.0,
        height: 200.0,
        color: Colors.lightBlue,
      ),
    );
  }
}
