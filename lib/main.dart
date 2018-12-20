import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';
import 'package:picture/common/routers.dart';

import 'package:picture/pages/loading/page.dart';

void main() => runApp(
      new MaterialApp(
        title: appName,
        routes: routers,
        theme: MyThemeData,
        debugShowCheckedModeBanner: false,
        home: new LoadingPage(),
      ),
    );
