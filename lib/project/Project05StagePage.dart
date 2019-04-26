import 'package:flutter/material.dart';
import 'Project05StagePageAlive.dart';

class Project05StagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KeepAliveDemo();
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

/**
 * with是dart的关键字，意思是混入的意思，
    就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类，避免多重继承导致的问题。
    SingleTickerProviderStateMixin 主要是我们初始化TabController时，
    需要用到vsync ，垂直属性，然后传递this
 */
class _KeepAliveDemoState extends State<KeepAliveDemo>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  // 释放资源
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('keep alive demo'),
        bottom: TabBar(
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.black54,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 1.0,
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist)),
            Tab(icon: Icon(Icons.directions_railway)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Project05StagePageAlive(),
          Project05StagePageAlive(),
          Project05StagePageAlive(),
        ],
      ),
    );
  }
}

class DefaultTabBarPageStage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('页面状态'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: Container(),
        ));
    ;
  }
}
