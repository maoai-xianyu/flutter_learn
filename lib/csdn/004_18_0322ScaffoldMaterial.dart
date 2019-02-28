import 'package:flutter/material.dart';


void main() {
  runApp(new MaterialApp(
    title: 'Flutter教程',
    home: new TutorialHome(),
  ));
}

///Scaffold是实现基本质感设计可视化的布局结构，Scaffold控件使用多种不同的控件作为命名参数，并将每一个布置在Scaffold适当的位置。
/// 同样的，AppBar控件让我们传递leading、actions和title控件。
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(

        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: '导航菜单',
            onPressed: null
        ),
        title: new Text('实例标题'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: '搜索',
              onPressed: null
          ),
        ],
      ),
      body: new Center(
        child: new Text('你好、世界'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: '增加',
          child: new Icon(Icons.add),
          onPressed: null
      ),
    );
  }
}