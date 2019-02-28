import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // 显示用户的信息
          UserAccountsDrawerHeader(
            accountName: Text(
              'coding type',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('codingtype@coding.com'),
            // 头像
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars3.githubusercontent.com/u/17868022?s=40&v=4'),
            ),
            // 背景
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1551353482&di=3591b081459a0af17291d0c798f6cc09&src=http://pic.58pic.com/58pic/13/09/58/77h58PICQKD_1024.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6), BlendMode.hardLight),
                )),
          ),
          // 会自动添加左上的menu
          ListTile(
            title: Text('Message',textAlign: TextAlign.end,),
            trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite',textAlign: TextAlign.end,),
            trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Setting',textAlign: TextAlign.end,),
            trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
