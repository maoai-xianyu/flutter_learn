import 'package:flutter/material.dart';

class DemoNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
          child: Text('查看商品详情页面'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new SecondPageScreen(),
                ));
          }),
    );
  }
}

class SecondPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '商品详情',
      home: Scaffold(
        appBar: AppBar(
          title: Text('商品详情'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('返回上一个页面'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
