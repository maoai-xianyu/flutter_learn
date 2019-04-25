import 'package:flutter/material.dart';

/**
 * 自定义的路由方法，自定义首先要继承于通用的路由的构造器类PageRouterBuilder。
 * 继承之后重写父类的CustomRoute构造方法。
 */
class CustomRouter extends PageRouteBuilder {
  final Widget _widget;

  CustomRouter(this._widget)
      : super(
            transitionDuration: Duration(seconds: 1), // 过度时间
            // 页面构造器
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return _widget;
            },
            // 过度效果
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
              Widget child,
            ) {
              // 渐隐渐现的路由动画效果
              /* return FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(
                  // 动画曲线
                  CurvedAnimation(
                    parent: animation1,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                child: child,
              );*/

              // 缩放的动画效果
              /* return ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(
                  // 动画曲线
                  CurvedAnimation(
                    parent: animation1,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                child: child,
              );*/

              // 旋转+缩放动画效果
              /* return RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(
                  // 动画曲线
                  CurvedAnimation(
                    parent: animation1,
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
                child: ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(
                      parent: animation1,
                      curve: Curves.fastOutSlowIn,
                    ),
                  ),
                  child: child,
                ),
              );*/

              // 左右滑动动画
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, 0.0),
                  end: Offset(0.0, 0.0),
                ).animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )),
                child: child,
              );
            });
}
