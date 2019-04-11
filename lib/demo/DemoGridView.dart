import 'package:flutter/material.dart';

class DemoGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewCommon();
  }
}

class GridViewCommon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 3.0,
        childAspectRatio: 0.7,
      ),
      children: <Widget>[
        Image.network(
          'http://img5.mtime.cn/mt/2019/04/11/102352.34297981_100X140X4.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'http://img5.mtime.cn/mt/2019/04/01/170855.21159487_100X140X4.jpg',
          fit: BoxFit.cover,
        ),

        Image.network(
          'http://img5.mtime.cn/mt/2019/02/21/095918.47882172_100X140X4.jpg',
          fit: BoxFit.cover,
        ),

        Image.network(
          'http://img5.mtime.cn/mt/2019/02/26/103752.98077593_100X140X4.jpg',
          fit: BoxFit.cover,
        ),

        Image.network(
          'http://img5.mtime.cn/mt/2019/04/11/102352.34297981_100X140X4.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'http://img5.mtime.cn/mt/2019/03/19/145149.38901626_100X140X4.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'http://img5.mtime.cn/mt/2019/02/26/103752.98077593_100X140X4.jpg',
          fit: BoxFit.cover,
        ),

        Image.network(
          'http://img5.mtime.cn/mt/2019/04/11/102352.34297981_100X140X4.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'http://img5.mtime.cn/mt/2019/02/26/103752.98077593_100X140X4.jpg',
          fit: BoxFit.cover,
        ),
        Image.network(
          'http://img5.mtime.cn/mt/2019/04/11/102352.34297981_100X140X4.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

/**
 * GridView.count
 */
class GridViewCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: <Widget>[
        Text('I am codingTK'),
        Text('I am zk'),
        Text('I am ss'),
        Text('I am ss'),
        Text('爱好'),
        Text('爱好cc'),
      ],
    );
  }
}
