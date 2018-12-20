import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';

// ignore: must_be_immutable
class MySnackBar extends StatelessWidget {
  String title;

  @override
  MySnackBar(this.title);

  @override
  Widget build(BuildContext context) {
    return new SnackBar(
      content: new Text(title),
      backgroundColor: defColor,
    );
  }
}
