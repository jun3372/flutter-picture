import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:common_utils/common_utils.dart';

import 'package:picture/common/config.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  int _seconds = 6;
  String skipTitle = '跳过';

  // 计时器
  TimerUtil mCountDownTimerUtil;

  @override
  void initState() {
    super.initState();

    // 跳转至首页
//    _loadNextPage(6);
    _setSkipTitle();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new Expanded(
            child: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                new GestureDetector(
                  onTap: () {
                    print('点击了广告');
                  },
                  child: new Image.asset(
                    loadingImg,
                    fit: BoxFit.fill,
                  ),
                ),
                new Positioned(
                  top: 50,
                  right: 15,
                  child: new OutlineButton(
                    onPressed: () {
                      _loadNextPage();
                    },
                    borderSide: new BorderSide(
                      color: defColor,
                      width: 1,
                    ),
                    child: new Text(
                      skipTitle,
                      style: new TextStyle(
                        color: defColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          new Container(
            height: 120,
            alignment: Alignment.center,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: new Image.asset(appLogo, width: 100, height: 100),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 15, right: 50),
                  child: new Text(
                    appName,
                    style: TextStyle(
                      color: defColor,
                      fontSize: 35.0,
                      fontFamily: 'jianyuanti',
                      inherit: false,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 设置跳过按钮内容
  // ignore: unused_element
  _setSkipTitle() {
    mCountDownTimerUtil =
        new TimerUtil(mInterval: 1000, mTotalTime: _seconds * 1000);
    mCountDownTimerUtil.setOnTimerTickCallback((int tick) {
      double _tick = tick / 1000;
      if (_tick.toInt() == 0) {
        mCountDownTimerUtil.setTotalTime(_seconds * 1000);
      }

//      print(_seconds);

      setState(() {
        _seconds -= 1;
        if (_seconds > 0) {
          // ignore: unnecessary_brace_in_string_interps
          skipTitle = '${_seconds} 跳过';
        } else {
          skipTitle = '跳过';
        }

        if (_seconds == 0) {
          new Future.delayed(new Duration(seconds: 1), () {
            _loadNextPage();
          });
        }
      });
    });

    mCountDownTimerUtil.startCountDown();
  }

  _loadNextPage([timer = 0]) {
    print('正在前往下一页: ' + timer.toString());

    new Future.delayed(new Duration(seconds: timer), () {
      Navigator.pushReplacementNamed(context, mainRoute);
    });
  }
}
