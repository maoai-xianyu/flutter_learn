import 'package:flutter/cupertino.dart'; // 可以右滑动返回

class Project12RightSlideBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          width: 100.0,
          height: 100.0,
          color: CupertinoColors.activeBlue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context) {
                  return Project12RightSlideBack();
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
