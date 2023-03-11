import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shenzhouapp/util/toast.dart';

class TransportationAddress extends StatefulWidget {
  TransportationAddress({Key? key}) : super(key: key);

  @override
  _TransportationAddressState createState() => _TransportationAddressState();
}

class _TransportationAddressState extends State<TransportationAddress> {
  final data = <Map<String, String>>[
    {"title": "地址", "subtitle": "东涌镇骏马大道8号神州集运转pangwenji（2057349372）"},
    {"title": "收件人（如填写不下或被截断，可填写用户）", "subtitle": "神州2057349372"},
    {"title": "联系电话", "subtitle": "13632229908"},
    {"title": "邮政编号", "subtitle": "511400"},
    {"title": "微信号（业务咨询，订单查询）", "subtitle": "13660741128"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('集运专属地址'),
        centerTitle: true,
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: RaisedButton(
                color: Colors.pinkAccent,
                child: Text(
                  '一键智能复制收货地址',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            _container(
                '点击上面"一键智能复制地址"按钮，复制你的收货地址，打开淘宝App->我的收货地址->添加新地址，粘贴即可。（或者直接单独复制下方收货地址资料）',
                14.0,
                false),
            _container('以下是你国内仓库专属地址,请直接复制作为国内购物的而收货地址', 18.0, true),
            Container(
              padding: EdgeInsets.all(8),
              height: 70,
              child: Row(
                children: [
                  _SizeBox('省', '广东省'),
                  _SizeBox('市', '广州市'),
                  _SizeBox('区', '南沙区')
                ],
              ),
            ),
            _listContainer(data[0]['title'], data[0]['subtitle']),
            _listContainer(data[1]['title'], data[1]['subtitle']),
            _listContainer(data[2]['title'], data[2]['subtitle']),
            _listContainer(data[3]['title'], data[3]['subtitle']),
            _listContainer(data[4]['title'], data[4]['subtitle']),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 8, right: 8),
              height: 250,
              child: Wrap(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      '温馨提醒:神周集运不收取任何入仓费等费用！！！',
                      maxLines: 5,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.red,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  _textContainer(
                      '无论多大多重的以及多少件货物，我们都正常收货，也不会有任何入仓费之类的费用，如有入仓费或者排队费等费用，是物流公司乱收费，不是我们收取的，请微信提供证据给13719441662（微信同号）'),
                  _textContainer(
                      '家私、家电，机械，设备等大件货物，如需发物流送货或是提货，联系电话请留意：17809091234')
                ],
              ),
            )
          ],
        ),
      )),
    );
  }

  Widget _textContainer(title) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        title,
        textAlign: TextAlign.justify,
        style: TextStyle(
            fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w800),
      ),
    );
  }

  Widget _listContainer(title, subTile) {
    return InkWell(
        onTap: () {
          showSuccessMsg('${title}已复制');
          // this._showDliaog(title, '已复制');
        },
        child: Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                  top: BorderSide(width: 1.0, color: Colors.grey))),
          child: Column(
            children: [
              Text(title),
              Container(
                  height: 45,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: expandContainer(subTile, 17.0, false)),
                      Expanded(flex: 1, child: expandContainer('复制', 7.0, true))
                    ],
                  ))
            ],
          ),
        ));
  }

  _showDliaog(title, tip) {
    Fluttertoast.showToast(
        msg: title + tip,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black54,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  Widget expandContainer(title, size, flag) {
    return Container(
      padding: EdgeInsets.only(right: size),
      alignment: Alignment.centerRight,
      height: MediaQuery.of(context).size.height,
      child: Text(title,
          style: TextStyle(
              fontSize: 15, color: flag ? Colors.yellow : Colors.black)),
    );
  }

  Widget _SizeBox(title, subTilte) {
    return Expanded(
        flex: 1,
        child: InkWell(
          onTap: () {
             this._showDliaog(subTilte, '已复制');
          },
          child: Column(
            children: [
              Text(title, style: TextStyle(color: Colors.grey)),
              Text(subTilte, style: TextStyle(fontSize: 15.0))
            ],
          ),
        ));
  }

  Widget _container(title, double size, flag) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration:
          BoxDecoration(color: flag ? Colors.grey.shade200 : Colors.white),
      child: Text(title, style: TextStyle(fontSize: size, color: Colors.grey)),
    );
  }
}
