import 'dart:async';
import 'package:flutter/material.dart';

import 'package:flutter_refresh/flutter_refresh.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:picture/common/config.dart';
import 'package:picture/common/home_item.dart';

class GoodPage extends StatefulWidget {
  @override
  _GoodPageState createState() => _GoodPageState();
}

class _GoodPageState extends State<GoodPage> {
  // 滚动控制器
  ScrollController _controller = new ScrollController();

  // 是否显示
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Refresh(
          onHeaderRefresh: onHeaderRefresh,
          onFooterRefresh: onFooterRefresh,
          childBuilder: (
            BuildContext context, {
            ScrollController controller,
            ScrollPhysics physics,
          }) {
            _controller = controller;
            _controller.addListener(() {
              showToTopBtn = false;

              if (_controller.offset > 200) {
                showToTopBtn = true;
              }

              setState(() {
                showToTopBtn = showToTopBtn;
              });
            });

            return Container(
              margin: const EdgeInsets.all(2.0),
              child: new StaggeredGridView.countBuilder(
                controller: _controller,
                crossAxisCount: 4,
                mainAxisSpacing: 0.0,
                crossAxisSpacing: 0.0,
                physics: physics,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) =>
                    new HomeItemPage(
                      data: {},
                    ),
                staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
              ),
            );
          },
        ),
        new Positioned(
          child: _getShowToBtn(),
          right: 20,
          bottom: 120,
        ),
      ],
    );
  }

  Future<Null> onHeaderRefresh() async {
//    var result = await _getDataList((data) {
//      setState(() {
//        homeData = data.data;
//      });
//
//      print('下拉刷新数据');
//    });

    return new Future.delayed(new Duration(seconds: 3));
  }

  Future<Null> onFooterRefresh() async {
//    var result = await _getDataList((data) {
//      setState(() {
//        homeData = data.data;
//      });
//
//      print('下拉刷新数据');
//    });

    return new Future.delayed(new Duration(seconds: 3));
  }

  _getShowToBtn() {
    if (!showToTopBtn) {
      return new Text('');
    }

    return new IconButton(
      icon: new Icon(
        Icons.backup,
        color: defColor,
        size: 34,
      ),
      onPressed: () {
        _controller.animateTo(
          0,
          duration: Duration(seconds: 1),
          curve: Curves.ease,
        );
      },
    );
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
