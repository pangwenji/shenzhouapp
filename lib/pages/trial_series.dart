import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/router/routes.dart';

class TrailSeries extends StatelessWidget {
  const TrailSeries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('试算系列'),
      ),
      body: Column(
        children: [
          _container(context, '港澳台集运试算系列'),
          _boxContainer('运费试算', '计算运费', 'images/freight.png', context,
              Routes.distributionMode),
          _boxContainer('体积重试算', '体积重', 'images/calc.png', context, 'calc'),
          _container(context, '国际转运试算系列'),
          _boxContainer('运费试算', '计算运费', 'images/yunfei.png', context, 'yunfei'),
          _boxContainer('体积重试算', '体积重', 'images/calcs.png', context, 'calcs')
        ],
      ),
    );
  }

  Widget _container(context, String text) {
    return Container(
      height: 35.0,
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.grey.shade300),
      child: Text(text),
    );
  }

  Widget _boxContainer(letfTitle, rightTitle, imageu, context, route) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.grey.shade200))),
        child: InkWell(
          onTap: () {
            switch (route) {
              case '/distributionMode':
                Get.toNamed(route);
                break;
            }
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Image.asset(
                  imageu,
                  width: 30,
                  height: 20,
                ),
              ),
              Text(letfTitle),
              Expanded(child: Text('')),
              Text(rightTitle),
              Container(
                  child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ))
            ],
          ),
        )
      );
  }
}
