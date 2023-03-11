import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoticeDetails extends StatelessWidget {
  const NoticeDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通知详情'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _container('${Get.parameters['title']}'),
          Container(
            child: _handleText('${Get.parameters['context']}'),
          ),
          _container('给你带来不便,敬请谅解，谢谢！')
        ],
      ),
    );
  }

  _handleText(textStr) {
    print(textStr);
    RegExp reg = new RegExp(r"[^0-9]");
    var result = textStr.replaceAll(reg,'');
    print(double.tryParse(result));
    return RichText(
      text: TextSpan(children: [
       TextSpan(
         text: textStr,
         style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade700
         )
       )
    ]));
  }

  Widget _text(title) {
    return Text(title,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade700
            )
            );
  }

  Widget _container(title) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, bottom: 30, right: 10),
      child: _text(title),
    );
  }
}
