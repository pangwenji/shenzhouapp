import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VolumeTrial extends StatefulWidget {
  VolumeTrial({Key? key}) : super(key: key);
  @override
  _VolumeTrialState createState() => _VolumeTrialState();
}

class _VolumeTrialState extends State<VolumeTrial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('港澳台集运体积重试算'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width,
            // child: Text('港澳台体积重量试算（L*W*H/6000）',
            child: Text('${Get.parameters['title']}',
                style: TextStyle(color: Colors.grey, fontSize: 16.0)),
          ),
          _container('长:', '请输入物品长度(cm)'),
          _container('宽:', '请输入物品宽度(cm)'),
          _container('高:', '请输入物品高度(cm)'),
          _bottomContainer(),
          _contanierText()
        ],
      ),
    );
  }

  Widget _container(labelText, hintText) {
    return Container(
        padding: EdgeInsets.only(left: 12, bottom: 10),
        child: Row(
          children: [
            Text(labelText, style: TextStyle(color: Colors.grey, fontSize: 16)),
            Container(
              width: 320,
              height: 45,
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: hintText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Colors.grey, width: 1.0))),
              ),
            ),
            Text('CM', style: TextStyle(color: Colors.grey, fontSize: 16))
          ],
        ));
  }

  Widget _bottomContainer() {
    return Container(
      padding: EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Text('体积重:', style: TextStyle(color: Colors.grey, fontSize: 16.0)),
          Container(
            width: 200,
            height: 45,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: Colors.grey, width: 1.0))),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Text(
              'KG',
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
          MaterialButton(
            color: Colors.redAccent,
            onPressed: () {},
            child: Text(
              '试算',
              style: TextStyle(color: Colors.white),
            ),
            minWidth: 80,
          )
        ],
      ),
    );
  }

  Widget _contanierText() {
    return Container(
        child: Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '温馨提示',
            style: TextStyle(color: Colors.pink, fontSize: 16.0),
          ),
          Text(
            '因会员卡权益的不同享有不同的优惠，上述试算结果仅供参考，请下单时候最终优惠为准！',
            maxLines: 4,
          )
        ],
      ),
    ));
  }
}

class $ {
}
