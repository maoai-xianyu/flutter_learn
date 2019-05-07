import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../config/httpHeaders.dart';

class DemoDioFakeHeaders extends StatefulWidget {
  @override
  _DemoDioFakeHeadersState createState() => _DemoDioFakeHeadersState();
}

class _DemoDioFakeHeadersState extends State<DemoDioFakeHeaders> {
  String showText = '还没有数据..';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('请求数据'),
            onPressed: () {
              _showJiKeContent();
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            showText,
          )
        ],
      ),
    );
  }

  void _showJiKeContent() {
    debugPrint('开始向极客请求数据.....');
    postHttp().then((value) {
      setState(() {
        showText = value['data']['nav'].toString();
      });

      debugPrint('请求数据.....${value['data']['nav'].toString()}');
    });
  }

  Future postHttp() async {
    try {
      Response response;
      Dio dio = new Dio();
      dio.options.headers = httpHeaders;
      response = await dio.post(
        'https://time.geekbang.org/serv/v1/column/newAll',
      );
      debugPrint(response.toString());
      return response.data;
    } catch (e) {
      return print(e);
    }
  }
}
