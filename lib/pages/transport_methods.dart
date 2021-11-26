import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransportMethods extends StatefulWidget {
  TransportMethods({Key? key}) : super(key: key);

  @override
  _TransportMethodsState createState() => _TransportMethodsState();
}

class _TransportMethodsState extends State<TransportMethods> {
  List<Widget> _container = <Widget>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.handleData();
  }

  void handleData() {
    var res = Get.parameters['data'];
    var tem = res!.replaceAll('[', '');
    var temStr = tem.replaceAll(']', '');
    var tatal = temStr.split(",");
    var totalArray = <Widget>[];
    tatal.forEach((element) => {
          totalArray.add(
            Container(
              height: 60,
              child: InkWell(
            onTap: () {},
            child: Row(
              children: [
                Text(element),
                Expanded(child: Text('')),
                Container(
                    child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ))
              ],
            ),
          )))
        });
    _container = totalArray;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('请选择运送方式'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        reverse: false,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(0),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                _container)
                ),
          ),
        ],
      ),
    );
  }
}
