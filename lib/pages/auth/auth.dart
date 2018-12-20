import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';

import 'package:picture/pages/auth/login.dart';
import 'package:picture/pages/auth/register.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  int authType = 1;

  LoginPage _loginPage;
  RegisterPage _registerPage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            child: new Row(
              children: <Widget>[
                new IconButton(
                  icon: new Icon(
                    Icons.arrow_back_ios,
                    color: defColor,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            padding: EdgeInsets.only(top: 30),
          ),
          new Expanded(
            child: new Column(
              children: <Widget>[
                new Container(
                  width: 260,
                  padding: EdgeInsets.only(top: 5),
                  decoration: new BoxDecoration(
                    border: new Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
                    ),
                  ),
                  child: new Row(
                    children: <Widget>[
                      _getAuthButton('登录', 1),
                      _getAuthButton('注册', 2),
                    ],
                  ),
                ),
                new Expanded(
                  child: new Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: _getAuthBodyPage(),
                  ),
                )
              ],
            ),
          ),
          new Container(
            child: new Image.asset(
              authBottomBackground,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  // 获取表单内容
  _getAuthBodyPage() {
    switch (authType) {
      case 1:
        if (_loginPage == null) {
          _loginPage = new LoginPage();
        }

        return _loginPage;
      case 2:
        if (_registerPage == null) {
          _registerPage = new RegisterPage();
        }

        return _registerPage;
    }

    return Container();
  }

  // 获取登录/注册按钮样式
  _getAuthButton([title = '登录', type = 1]) {
    // 默认值
    BoxDecoration decoration = new BoxDecoration();
    TextStyle textStyle = TextStyle(color: Color(0xFFC9C9C9), fontSize: 20);

    // 获取选中样式
    if (authType == type) {
      decoration = new BoxDecoration(
        border: new Border(
          bottom: BorderSide(width: 1, color: defColor),
        ),
      );

      textStyle = TextStyle(color: defColor, fontSize: 20);
    }

    // 没有样式
    return GestureDetector(
      onTap: () {
        setState(() {
          authType = type;
        });
      },
      child: new Container(
        width: 130,
        height: 70,
        decoration: decoration,
        child: new Center(
          child: new Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
