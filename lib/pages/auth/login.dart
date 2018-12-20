import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey _globalKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(left: 35, top: 80, right: 35, bottom: 160),
      child: new Form(
        key: _globalKey,
        autovalidate: true,
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: new TextFormField(
                  decoration: InputDecoration(
                    hintText: '请输入用户名',
//                    hintStyle: new TextStyle(color: Color(0xFFE6E6E6)),
                  ),
                  style: TextStyle(color: defColor, fontSize: 20),
                  keyboardType: TextInputType.text,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: new TextFormField(
                  decoration: InputDecoration(hintText: '请输入密码'),
                  style: TextStyle(color: defColor, fontSize: 20),
                  obscureText: true,
                  keyboardType: TextInputType.text,
                ),
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 0),
                child: new Container(
                  height: 55,
                  decoration: new BoxDecoration(
                    color: defColor,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(50.0)),
                  ),
                  child: new GestureDetector(
                    onTap: () {
                      print('点击了登录按钮');
                    },
                    child: new Center(
                      child: new Text(
                        '登录',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              new Center(
                child: new Text('忘记密码'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
