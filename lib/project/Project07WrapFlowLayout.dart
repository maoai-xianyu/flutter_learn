import 'package:flutter/material.dart';

class Project07WrapFlowLayout extends StatefulWidget {
  @override
  _Project07WrapFlowLayoutState createState() =>
      _Project07WrapFlowLayoutState();
}

class _Project07WrapFlowLayoutState extends State<Project07WrapFlowLayout> {
  List<Widget> list;

  buildAddButton() {
    // 手势识别是对没有点击事件的组件
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        color: Colors.amber,
        child: Center(
          child: Text('照片'),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; // 获取屏幕的宽度
    final height = MediaQuery.of(context).size.height; // 获取屏幕的宽度

    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height / 2,
            color: Colors.grey,
            // 流式布局
            child: Wrap(
              children: list,
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }
}
