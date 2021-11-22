import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/db/data.dart';
import 'package:shenzhouapp/router/routes.dart';

class DistributionMode extends StatefulWidget {
  DistributionMode({Key? key}) : super(key: key);

  @override
  _DistributionModeState createState() => _DistributionModeState();
}

class _DistributionModeState extends State<DistributionMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('请选择运送方式'),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(top: 23, right: 23),
            child: InkWell(
              child: Text('首页'),
              onTap: () {
                // Get.toNamed(Routes.home);
              },
            ),
          )
        ],
      ),
      body: Coustome(),
    );
  }

  Widget Coustome() {
    return ListView(children: <Widget>[
      _contanier('神州专线（香港集运）', 'dedicatedLine'),
      _contanier('神州快线（香港集运）', 'expressLine'),
      _contanier('神州特快（香港集运）', 'express'),
      _contanier('台湾集运', ''),
      _contanier('澳门集运', '')
    ]);
  }

  Widget _contanier(title, type) {
    return Container(
        height: 60,
        padding: EdgeInsets.only(left: 12, right: 12),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.grey.shade200))),
        child: InkWell(
          onTap: () {
            Map<String, String> params = {};
            switch (type) {
              case 'dedicatedLine':
                params = {"data": '${Data.transportWay}'};
                Get.toNamed(Routes.transportMethods, parameters: params);
                break;
              case 'expressLine':
                params = {"data": '${Data.expressWay}'};
                Get.toNamed(Routes.transportMethods, parameters: params);
                break;
              case 'express':
                params = {"data": '${Data.expressWay}'};
                Get.toNamed(Routes.transportMethods, parameters: params);
                break;
            }
          },
          child: Row(
            children: [
              Text(title),
              Expanded(child: Text('')),
              Container(
                  child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ))
            ],
          ),
        ));
  }
}
