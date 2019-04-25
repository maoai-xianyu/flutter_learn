import 'package:flutter/material.dart';
import '../animation/CustomRouter.dart';

class Project03NavigatorAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(
            fontSize: 36.0,
          ),
        ),
        elevation: 2.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            // 路由跳转页面的写哈
            Navigator.of(context).push(CustomRouter(SecondPage()));

            /* Navigator.push(
                context, MaterialPageRoute(builder: (context) => SecondPage()));

            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return SecondPage();
            }));*/
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        //centerTitle: true, // 居中
        title: Text(
          'SecondPage',
          style: TextStyle(fontSize: 36.0),
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 2.0,
        leading: Container(), //居中
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
          onPressed: () {
            // 路由跳转页面的写哈
            Navigator.of(context).pop(context);
          },
        ),
      ),
    );
  }
}
