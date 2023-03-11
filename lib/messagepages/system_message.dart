import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/router/routes.dart';

class SystemMessage extends StatefulWidget {
  SystemMessage({Key? key}) : super(key: key);

  @override
  _SystemMessageState createState() => _SystemMessageState();
}

class _SystemMessageState extends State<SystemMessage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textList.length,
        itemExtent: 70,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                Get.toNamed(Routes.noticeDetails,
                    parameters: textList[index]['value']);
              },
              child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 1.0))),
                  child: Row(children: [
                    Container(
                      width: 250,
                      height: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(textList[index]['text'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(textList[index]['time'],
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey)),
                          )
                        ],
                      ),
                    ),
                    Expanded(child: Text('')),
                    Container(
                        child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ))
                  ])));
        });
  }

  final List<Map<String, dynamic>> textList = [
    {
      "text": "海关调查，通关延误",
      "time": "2021-10-31",
      "value": {
        "title": "温馨提醒",
        "context": "尊敬的各位用户，最近因海关查验规格，港车通关时效有些延时，对此深表歉意，若有疑问可联系神周集运客服。",
        "subTitle": "给你带来不便,敬请谅解，谢谢！"
      }
    },
    {
      "text": "广西私家930",
      "time": "2021-12-31",
      "value": {
        "title": "各位亲们，请留意:",
        "context":
            "神州集运仓免费存放180天，逾期按0.5元/票/天计算；所有件超过360天，一律作为弃件处理，请各位客户在免仓期间内集运以免逾期产生仓费。",
      }
    },
    {
      "text": "深空探索",
      "time": "2021-10-31",
      "value": {
        "title": "各位亲们:",
        "context": "因近期大陆WhatApp网络不稳定，导致客服经常性无法正常登录信息，如人回复信息请联系Wechat。"
            "售前WeChat:18938566781,"
            "售后WebChat：18938561595，公众号：神州集运mall",
      }
    }
  ];
}
