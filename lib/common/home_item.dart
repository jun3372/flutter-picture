import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeItemPage extends StatelessWidget {
  Map data;

  @override
  HomeItemPage({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Card(
      margin: const EdgeInsets.all(2.0),
      child: new GestureDetector(
        onTap: () {},
        child: new Stack(
          children: <Widget>[
            new Image.network(
              'http://e.hiphotos.baidu.com/image/pic/item/4b90f603738da9774d57356cbd51f8198618e379.jpg',
              fit: BoxFit.fill,
            ),
            new Positioned(
              bottom: 0,
              left: 0,
              child: new Opacity(
                opacity: 0.15,
                child: new Container(
                  color: Colors.black,
                  height: 35,
                  width: 1000,
                ),
              ),
            ),
            new Positioned(
              bottom: 5,
              left: 5,
              child: new Text(
                '标题',
                style: TextStyle(color: Colors.white, fontSize: 16),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
