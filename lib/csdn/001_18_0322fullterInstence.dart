import 'package:flutter/material.dart';

void main() =>

    //runApp函数接受指定的控件(Widget)，并使其作为控件树(widget tree)的根控件
runApp(
    new Center(child: new Text("你好，世界", textDirection: TextDirection.ltr))
);


/**
 * Text：文本控件，在应用中创建各种样式的文本。
 */