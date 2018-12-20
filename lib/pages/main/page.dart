import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';
import 'package:picture/common/baseline_page.dart';

import 'package:picture/pages/good/page.dart';
import 'package:picture/common/my_bottom_navigation_bar.dart';
import 'package:picture/pages/drawer/page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  String appTitle = '推荐';

  GoodPage _goodPage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: new MyBottomNavigationBar(
        onTap: (index) => _setAppTitle(index),
        currentIndex: _currentIndex,
      ),
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        title: new Text(appTitle),
        actions: <Widget>[
          new Padding(
            padding: EdgeInsets.only(right: 15),
            child: new Icon(Icons.search),
          )
        ],
      ),
      body: _currentPage(),
      drawer: new MyDrawer(),
    );
  }

  _setAppTitle([currentIndex = 0]) {
    String tempTitle = '推荐';
    switch (currentIndex) {
      case 0:
        tempTitle = '推荐';
        break;
      case 1:
        tempTitle = '最新';
        break;
      case 2:
        tempTitle = '热门';
        break;
      case 3:
        tempTitle = '分类';
        break;
    }

    setState(() {
      appTitle = tempTitle;
      _currentIndex = currentIndex;
    });
  }

  _currentPage() {
    switch (_currentIndex) {
      case 0:
        if (_goodPage == null) {
          _goodPage = new GoodPage();
        }

        return _goodPage;
    }

    return new Container(
      color: Colors.grey[100],
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Expanded(
            child: new Container(
              child: new Center(
                child: new Text(_currentIndex.toString()),
              ),
            ),
          ),
          new BaseLinePage(title: '哈哈哈哈哈哈哈哈哈哈'),
        ],
      ),
    );
  }

  _showSnackBar(String title) {
    Scaffold.of(context).showSnackBar(
      new SnackBar(
        content: new Text(title),
        backgroundColor: defColor,
      ),
    );
  }
}
