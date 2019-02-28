import 'package:flutter/material.dart';

/// Row,Column：Flex控件，可以创建水平(Row)或垂直(Column)方向的布局，是基于Web的flexbox的布局模式设计的。
/// Stack：非线性布局（水平或垂直），控件可以堆叠在其他控件上，
/// 可以使用Positioned控件控制Stack相对顶部、右部、底部和左部的位置，是基于Web的absolute定位的布局模式。

/// Container：创建矩形的可视元素，可以用BoxDecoration来设计样式，比如背景、边框和阴影，
/// Container也有边距、填充和大小限制，另外，还可以在三维空间利用矩阵进行变换。

/// StatelessWidget和StatefulWidget编写新控件,两者的差别在于你是否要管理控件的状态
class MyAppBar extends StatelessWidget {

  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: '导航菜单',
              onPressed: null),
          /// Expanded的作用是展开Row、Column和Flex的子控件，意味它可以使用剩余的所有空间。
          new Expanded(
              child: title
          ),
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: '搜索',
              onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text('实例标题', style: Theme
                .of(context)
                .primaryTextTheme
                .title),
          ),
          new Expanded(
            child: new Center(
              child: new Text('你好。世界！'),
            ),
          ),
        ],
      ),
    );
  }
}


void main() {
  runApp(new MaterialApp(
    title: '我的应用',
    home: new MyScaffold(),
  ));
}