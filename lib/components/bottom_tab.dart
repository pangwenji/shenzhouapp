import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/controller/current_index_controller.dart';
import 'package:shenzhouapp/model/courennt_index.dart';

class BottomTabs extends StatelessWidget {
  CurrentIndexController currentIndexController =
      Get.put(CurrentIndexController());
  BottomTabs({Key? key}) : super(key: key);
  final List<BottomNavigationBarItem> bottomTab = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.folder_open), title: Text('消息')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person), title: Text('我的'))
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndexController.count,
      items: bottomTab,
      onTap: (index) {
        currentIndexController.increment(index);
      },
    );
  }
}
