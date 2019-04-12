import 'package:flutter/material.dart';
import '../model/Product.dart';

/**
 * 页面跳转返回数据
 */
class DemoNavigatorReturnData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RouteButton(),
    );
  }
}

class RouteButton extends StatelessWidget {
  // 定义方法，异步请求
  _navigatorPage(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondPage()));

    // 显示数据
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('$result'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigatorPage(context);
      },
      child: Text('跳转'),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('大长腿'),
              onPressed: () {
                Navigator.pop(context, '大长腿:19999890809');
              },
            ),
            RaisedButton(
              child: Text('大眼睛'),
              onPressed: () {
                Navigator.pop(context, '大眼睛:19999890809');
              },
            ),
          ],
        ),
      ),
    );
  }
}
