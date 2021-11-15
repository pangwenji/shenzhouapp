import 'package:flutter/material.dart';
import 'package:shenzhouapp/components/bottom_tab.dart';
import 'package:shenzhouapp/components/swiper_diy.dart';
import 'package:shenzhouapp/model/courennt_index.dart';
import 'package:shenzhouapp/pages/home.dart';
import 'package:shenzhouapp/pages/message.dart';
import 'package:shenzhouapp/pages/mine.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/controller/current_index_controller.dart';

class Index extends StatefulWidget {
  Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

final List<Widget> _tabBodies = [
  HomePage(),
  MessagePage(), 
  Mine()];

class _IndexState extends State<Index> {
  final List<BottomNavigationBarItem> bottomTab = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.folder_open), title: Text('消息')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.person), title: Text('我的'))
  ];
  CurrentIndexController currentIndexController =
      Get.put(CurrentIndexController());
  @override
  Widget build(BuildContext context) {
    return
        GetBuilder<CurrentIndexController>(
          builder: (controller) {
         return Scaffold(
            bottomNavigationBar: BottomTabs(),
            body: _tabBodies[currentIndexController.count]
          );
      },
    );
  }
}
