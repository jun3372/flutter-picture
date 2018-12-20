import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBottomNavigationBar extends StatefulWidget {
  var currentIndex;
  Function onTap;

  @override
  MyBottomNavigationBar({
    Key key,
    @required this.onTap,
    @required this.currentIndex,
  }) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState(
        onTap: this.onTap,
        currentIndex: this.currentIndex,
      );
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  var currentIndex;
  Function onTap;

  @override
  _MyBottomNavigationBarState({
    Key key,
    @required this.onTap,
    @required this.currentIndex,
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.assessment),
          title: new Text('推荐'),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.all_inclusive),
          title: new Text('最新'),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.hot_tub),
          title: new Text('热门'),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.category),
          title: new Text('分类'),
        ),
      ],
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
        onTap(index);
      },
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
    );
  }
}
