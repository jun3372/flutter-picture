import 'package:flutter/material.dart';

//import 'package:shared_preferences/shared_preferences.dart';

//const String appName = '美眉';
final String appName = 'App Name';

final String appLogo = 'images/logo.png';
//  启动图
final String loadingImg = 'images/loading.jpg';

// 默认用户头像
//final String defUserAvatarStr = 'images/avatar.jpg';
final String defUserAvatarStr = 'images/user_avatar.png';
final String authBottomBackground = 'images/auth_bottom_background.png';

// 默认主题色
final Color defColor = new Color(0xFF7D8EF2);

// 默认主路由
final String mainRoute = 'main';

// 默认主题
// ignore: non_constant_identifier_names
final ThemeData MyThemeData = new ThemeData(
  primaryColor: defColor,
);

// 实例化SnackBar
// ignore: non_constant_identifier_names
MySnackBar([String title = '']) {
  return new SnackBar(
    content: new Text(title),
    backgroundColor: defColor,
  );
}

// 缓存实例
// ignore: unused_element
//Future<SharedPreferences> prefs = SharedPreferences.getInstance();
