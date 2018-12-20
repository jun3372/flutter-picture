import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';

class MyDrawer extends StatefulWidget {
  @override
  MyDrawer() : super();

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      elevation: 18.0,
      child: new ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new DrawerHeader(
            child: new Center(
              child: new Column(
                children: <Widget>[
                  new SizedBox(
                    width: 80,
                    height: 80,
                    child: new GestureDetector(
                      child: new ClipOval(
                        child: _getUserAvatar(),
                      ),
                      onTap: () {
                        print('点击了头像');
                      },
                    ),
                  ),
                  new Expanded(
                    child: new Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: new GestureDetector(
                        child: new Text(
                          '登录/注册',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          maxLines: 1,
                        ),
                        onTap: () {
                          print('点击了登录');
                          _toLoginPage();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(color: defColor),
          ),
          new Container(
            margin: const EdgeInsets.only(top: 10),
            child: new Column(),
          )
        ],
      ),
    );
  }

  _getUserAvatar() {
//    prefs.then((_prefs) {
//      String username = _prefs.getString('username');
//      print(username);
//    });

    return new Image.asset(defUserAvatarStr);
  }

  _toLoginPage() async {
    // ignore: unused_element
    await Navigator.pushNamed(context, 'auth');

    print('返回事件');
//    _showSnackBar('登录成功');
  }
}
