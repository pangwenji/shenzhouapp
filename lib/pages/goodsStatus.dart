import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/components/dialog.dart';

class GoodsStatus extends StatefulWidget {
  GoodsStatus({Key? key}) : super(key: key);

  @override
  _GoodsStatusState createState() => _GoodsStatusState();
}

class _GoodsStatusState extends State<GoodsStatus> {
  static String tab1 = '0';
  static String tab2 = '0';
  final tabs = <Tab>[
    // Tab(text: '已入库货品（$obj)'),
    Tab(text: "已入库货品${tab1}"),
    Tab(
      text: '未到达货品${tab2}',
    )
  ];

  final tarBarViews = <Widget>[
    Center(
      child: Text('1'),
    ),
    Center(
      child: Text('2'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('货品状态'),
            bottom: TabBar(
              tabs: tabs,
              // isScrollable: true,r
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(top: 23, right: 23),
                child: InkWell(
                  child: Text('合并货物'),
                  onTap: () {
                    Get.bottomSheet(
                      MyDiaLog(),
                      isScrollControlled:true,
                      useRootNavigator:true,
                      isDismissible:true
                      );
                  },
                ),
              )
            ],
          ),
          body: TabBarView(
            children: tarBarViews,
          ),
        ));
  }
}
