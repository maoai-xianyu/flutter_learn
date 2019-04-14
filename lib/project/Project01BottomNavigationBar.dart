import 'package:flutter/material.dart';
import '../pages/HomeScreen.dart';
import '../pages/EmailScreen.dart';
import '../pages/PagesScreen.dart';
import '../pages/AirPlayScreen.dart';

class Project01BottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationWidget();
  }
}

/**
 * 变化的页面需要使用动态widget
 */
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;

  List<Widget> list = List();

  @override
  void initState() {
    // list.add() 添加一个元素，   ..add() 添加元素后返回list
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirPlayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 当前选中项
        currentIndex: _currentIndex,
        // 点击
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'pages',
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavigationColor,
              ),
              title: Text(
                'Airplay',
                style: TextStyle(color: _BottomNavigationColor),
              )),
        ],
      ),
    );
  }
}
