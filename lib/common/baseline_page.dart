import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseLinePage extends StatelessWidget {
  String title;

  BaseLinePage({Key key, this.title = '我是有底线的'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 字体样式
    final TextStyle textStyle = TextStyle(color: Colors.grey);

    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 5),
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text('————', style: textStyle),
            new Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: new Text(title, style: textStyle),
            ),
            new Text('————', style: textStyle),
          ],
        ),
      ),
    );
  }
}
