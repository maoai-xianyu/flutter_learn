import 'package:flutter/material.dart';
import '../pages/EachScreen.dart';

class Project02BottomNavigationBarDefine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBarDefine();
  }
}

// 变化页面  StatefulWidget
class BottomAppBarDefine extends StatefulWidget {
  @override
  _BottomAppBarDefineState createState() => _BottomAppBarDefineState();
}

class _BottomAppBarDefineState extends State<BottomAppBarDefine> {
  int _currentIndex = 0;
  List<Widget> _listWidget;

  @override
  void initState() {
    super.initState();
    _listWidget = List();
    _listWidget..add(EachScreen('HOME'))..add(EachScreen('AIRPLAY'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('不规则动态NavigationBar'),
      ),

      body: _listWidget[_currentIndex],
      floatingActionButton: FloatingActionButton(
        tooltip: 'coding tk',
        //长按显示的提示文字，因为一般只放一个图标在上面，防止用户不知道，当我们点击长按时就会出现一段文字性解释
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => EachScreen('NEW PAGE')));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton的位置
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(), // 有缺口
        child: Row(
          mainAxisSize: MainAxisSize.max,
          // 相当于安卓的 match_parent  MainAxisSize.mip  wrap_parent
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.airplay,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
