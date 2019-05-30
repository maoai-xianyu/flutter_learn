import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/Counter.dart';

class DemoProvide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 200),
        child: Column(
          children: <Widget>[NumberWidget(), AddButton()],
        ),
      ),
    );
  }
}

class NumberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Provide<Counter>(builder: (context, child, counter) {
        return Text('${counter.value}');
      }),
    );
  }
}

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentCounter = Provide.value<Counter>(context);

    return Container(
      margin: EdgeInsets.only(top: 10),
      child: RaisedButton(
        onPressed: () {
          currentCounter.increment();
        },
        child: Text("增加"),
      ),
    );
  }
}
