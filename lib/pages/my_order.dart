import 'package:flutter/material.dart';

class MyoOrder extends StatelessWidget {
  MyoOrder({Key? key}) : super(key: key);

  final tabs = <Tab>[
    Tab(text: "全部"),
    Tab(text: "待付款"),
    Tab(text: "待发货"),
    Tab(text: "待收货"),
    Tab(text: "已完成")
  ];

  final tabList = <Widget>[
    Center(
      child: Text('全部'),
    ),
    Center(
      child: Text('待付款'),
    ),
    Center(
      child: Text('待发货'),
    ),
    Center(
      child: Text('待收货'),
    ),
    Center(
      child: Text('已完成'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      
      child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: tabs,
        ),
        title: Text('我的订单'),
        centerTitle: true,
        ),
        
        body: TabBarView(
          children: tabList,
        ),
      )
    );
  
  }
}
