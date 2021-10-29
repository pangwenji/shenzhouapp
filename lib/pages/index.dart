import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shenzhouapp/components/bottom_tab.dart';
import 'package:shenzhouapp/components/swiper_diy.dart';
import 'package:shenzhouapp/pages/home.dart';
import 'package:shenzhouapp/pages/message.dart';
import 'package:shenzhouapp/pages/mine.dart';
import 'package:shenzhouapp/provide/currentIndex_priovide.dart';
import 'package:flutter/cupertino.dart';

class Index extends StatefulWidget {
  Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

final List<Widget> _tabBodies = [HomePage(), MessagePage(), Mine()];
int _currentIndex = 0;
class _IndexState extends State<Index> {
  final List<BottomNavigationBarItem> bottomTab = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.folder_open), title: Text('消息')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person), title: Text('我的'))
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
         title: Text('神州集运'),
         centerTitle: true,
       ),
       bottomNavigationBar:BottomTabs(),
       body:_tabBodies[_currentIndex]
    );
  }

  void setIndex(int index) {
    Consumer<CurrentIndexProvide>(builder: (context, countModel, child) {
      print(index);
      countModel.currentIndex = index;
      return Center(
        child: Text('树'),
      );
    });
  }
}
