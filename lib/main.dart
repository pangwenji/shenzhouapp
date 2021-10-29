import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:shenzhouapp/provide/currentIndex_priovide.dart';
import 'package:shenzhouapp/router/pages.dart';
import 'package:shenzhouapp/router/routes.dart';
import 'pages/index.dart';
import 'pages/login.dart';
import 'pages/signIn.dart';
import 'pages/verification.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '神周集运',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages:Pages.routes,
      theme: ThemeData(primaryColor: Colors.pinkAccent),
      home: Index(),
    );
  }
}
