import 'package:flutter/material.dart';
import 'Project11HomePage.dart';

class Project11ScreenAnimation extends StatefulWidget {
  @override
  _Project11ScreenAnimationState createState() =>
      _Project11ScreenAnimationState();
}

class _Project11ScreenAnimationState extends State<Project11ScreenAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(microseconds: 3000));

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //  pushAndRemoveUntil 跳转下一页，并销毁当前控件
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => Project11HomePage(),
          ),
          (route) => route == null,
        );
      }
    });

    //播放动画
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child:  Image.asset(
        'images/maoai_xianyu.png',
        fit: BoxFit.cover,
        scale: 2.0,
      ),
    );
  }
}
