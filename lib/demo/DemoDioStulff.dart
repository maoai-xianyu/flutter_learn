import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DemoDioStulff extends StatefulWidget {
  @override
  _DemoDioStulffState createState() => _DemoDioStulffState();
}

class _DemoDioStulffState extends State<DemoDioStulff> {
  TextEditingController typeController = TextEditingController();

  String showText = '欢迎您来的美好日间高级场所';

  @override
  void dispose() {
    typeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            TextField(
              controller: typeController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: '美女类型',
                  helperText: '请输入你喜欢的类型'),
              autofocus: false,
            ),
            RaisedButton(
              onPressed: () {
                _choiceAction();
              },
              child: Text('选择完毕'),
            ),
            Text(
              showText,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }

  void _choiceAction() {
    debugPrint('开始选择你喜欢的类型');
    if (typeController.text.toString() == '') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('美女类型不能为空')),
      );
    } else {
      getHttp(typeController.text.toString()).then((value) {
        setState(() {
          showText = value['data']['name'].toString();
        });

        debugPrint('你选择的类型是${value['data']['name'].toString()}');
      });
    }
  }

  // 异步调用
  Future getHttp(String typeText) async {
    try {
      Response response;
      var data = {'name': typeText};
      response = await Dio().get(
          'https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian',
          queryParameters: data);
      return response.data;
    } catch (e) {
      return print(e);
    }
  }
}
