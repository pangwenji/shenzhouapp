import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shenzhouapp/provide/currentIndex_priovide.dart';

class BottomTabs extends StatelessWidget {
  BottomTabs({Key? key}) : super(key: key);
  final List<BottomNavigationBarItem> bottomTab = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.folder_open), title: Text('消息')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person), title: Text('我的'))
  ];
  final int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      items: bottomTab,
      onTap: (index) {
        // Provide.value<CurrentIndexProvide>(context).changeIndex(index);
      },
    );
  }
}
