import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('coding type'),
        elevation: 0.0,
      ),
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
          children:<Widget>[
            Image.network(posts[index].imageUrl),
            SizedBox(height: 16.0),
            Text(posts[index].title,style: Theme.of(context).textTheme.title),
            Text(posts[index].author,style: Theme.of(context).textTheme.subhead),
            SizedBox(height: 16.0),
          ]
      ),
    );
  }
}
