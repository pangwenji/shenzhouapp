import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/components/_BoxItem.dart';
import 'package:shenzhouapp/model/itemIcon.dart';
import 'dart:convert';

import 'package:shenzhouapp/router/routes.dart';

import 'dialog.dart';

class InforMationModeule extends StatefulWidget {
  InforMationModeule({Key? key}) : super(key: key);

  @override
  _InforMationModeuleState createState() => _InforMationModeuleState();
}

final List _itemIcon = [
  {
    "imageUrl": "images/notebook.png",
    "title": "登记货品",
    "router": Routes.registeredGoods
  },
  {
    "imageUrl": "images/goods.png",
    "title": "货品状态",
    "router": Routes.goodsStatus
  },
  {
    "imageUrl": "images/merge.png",
    "title": "合并货物",
    "router": Routes.consolidatedGoods
  },
  {"imageUrl": "images/myOrder.png", "title": "我的订单", "router": Routes.myOrder},
  {
    "imageUrl": "images/calculator.png",
    "title": "试算系列",
    "router": Routes.tralSeries
  },
  {
    "imageUrl": "images/settings.png",
    "title": "设置地址",
    "router": Routes.setAddress
  },
  {"imageUrl": "images/coupon.png", "title": "优惠券", "router": Routes.coupon},
  {
    "imageUrl": "images/storeCard.png",
    "title": "储值卡",
    "router": Routes.savingsDepositCard
  },
  {
    "imageUrl": "images/Novicetutorial.png",
    "title": "新手教程",
    "router": Routes.noviceTutorial
  },
];

class _InforMationModeuleState extends State<InforMationModeule> {
  List<Widget> getWidgetList() {
    return getDataList().map((item) => getItemContainer(item)).toList();
  }

  List<String> getDataList() {
    List<String> list = [];
    for (int i = 0; i < 9; i++) {
      list.add(i.toString());
    }
    return list;
  }

  Widget getItemContainer(String item) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        width: 350,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.grey.shade100),
        child: GridView.builder(
          itemCount: _itemIcon.length,
          padding: EdgeInsets.symmetric(vertical: 2),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 2,
              childAspectRatio: 2),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: Container(
                width: 5.0,
                height: 5.0,
                child: Column(
                  children: [
                    Image.asset(
                      _itemIcon[index]['imageUrl'],
                      width: 40.0,
                      height: 40.0,
                    ),
                    Text(_itemIcon[index]['title'])
                  ],
                ),
              ),
              onTap: () {
                if (_itemIcon[index]['router'] == '/consolidatedGoods') {
                   Get.bottomSheet(
                      MyDiaLog(),
                      isScrollControlled:true,
                      useRootNavigator:true,
                      isDismissible:true
                      );
                  return;
                }
                Get.toNamed(_itemIcon[index]['router']);
              },
            );
          },
        ));
  }
}
