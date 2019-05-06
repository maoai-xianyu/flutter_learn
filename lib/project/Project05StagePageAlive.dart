import 'package:flutter/material.dart';

class Project05StagePageAlive extends StatefulWidget {
  @override
  _Project05StagePageAliveState createState() =>
      _Project05StagePageAliveState();
}

/**
 * AutomaticKeepAliveClientMixin 保持页面状态
 *
 * 混入AutomaticKeepAliveClientMixin，这是保持状态的关键
 * 然后重写wantKeppAlive 的值为true。
 */
class _Project05StagePageAliveState extends State<Project05StagePageAlive>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  // wantKeepAlive 默认是false,需要重写
  @override
  bool get wantKeepAlive {
    return true;
  }

  // 内部方法，添加数据
  void _increaseCount() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('保持页面状态，点一次增加一个数字'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increaseCount,
        tooltip: '增加数字',
        child: Icon(Icons.add),
      ),
    );
  }
}
