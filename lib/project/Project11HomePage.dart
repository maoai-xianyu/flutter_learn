import 'package:flutter/material.dart';

class Project11HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557124332246&di=e95de4b575a3a2c89c75891b92e65842&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FexHtyKm1Za9k3nmSSvlM2zlFik0g8OawV3zB9O6KmKpPN1540874537509compressflag.jpg'),
      ),
    );
  }
}
