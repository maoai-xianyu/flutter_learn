import 'package:flutter/material.dart';

class DemoImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'images/maoai_xianyu.png',
          fit: BoxFit.contain,
          color: Colors.greenAccent,
          // 混合模式
          colorBlendMode: BlendMode.colorBurn,
          repeat: ImageRepeat.repeatX,
        ),
        width: 300.0,
        height: 200.0,
        color: Colors.lightBlue,
      ),
    );
  }
}
