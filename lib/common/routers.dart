import 'package:flutter/material.dart';

import 'package:picture/common/config.dart';

import 'package:picture/pages/main/page.dart';
import 'package:picture/pages/auth/auth.dart';

final routers = <String, WidgetBuilder>{
  mainRoute: (BuildContext context) => new MainPage(),
  'auth': (BuildContext context) => new AuthPage(),
};
