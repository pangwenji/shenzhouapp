import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/router/routes.dart';

class SetAddress extends StatelessWidget {
  const SetAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的收货地址'),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.only(top: 18, right: 12),
            child: InkWell(
              child: Text(
                '新增',
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Get.toNamed(Routes.newAddress);
              },
            ),
          )
        ],
      ),
      body: _container(),
    );
  }

  Widget _container() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/notebook_address.png',
            width: 90,
            height: 90,
          ),
          _text('你还没设置收货地址'),
          _text('请点击右上角新增按钮添加你的收货地址')
        ],
      ),
    );
  }

  Widget _text(title) {
    return Text(
      title,
      style: TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
