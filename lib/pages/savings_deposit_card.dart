import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shenzhouapp/pages/records_consumption.dart';

class SavingDepositCard extends StatefulWidget {
  SavingDepositCard({Key? key}) : super(key: key);

  @override
  _SavingDepositCardState createState() => _SavingDepositCardState();
}

class _SavingDepositCardState extends State<SavingDepositCard> {
  late TextEditingController _controller = TextEditingController();
  bool isShoose = false;
  late double _height;
  final tabs = <Widget>[
    Tab(
        child: Row(
      children: [Icon(Icons.card_giftcard_outlined), Text('全店通用储蓄卡')],
    )),
    Tab(
        child: Row(
      children: [Icon(Icons.card_giftcard), Text('体重抵扣储蓄卡')],
    ))
  ];
  final _tabBarView = TabBarView(
      children: <Widget>[recordsConsumption(), recordsConsumption()]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('储蓄卡'),
          centerTitle: true,
          bottom: TabBar(
            tabs: tabs,
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(top: 20, right: 10),
              child: PopupMenuButton(
                itemBuilder: (BuildContext _context) => <PopupMenuEntry>[
                  _poppMenuButton(
                      'images/organization.png', '第三方充值', 'firt', context),
                  _poppMenuButton(
                      'images/constance.png', '卡密充值', 'second', context),
                  _poppMenuButton('images/record.png', '充值记录', 'thrid', context)
                ],
                child: Text('充值'),
              ),
            )
          ],
        ),
        body: _tabBarView,
      ),
    );
  }

  PopupMenuEntry _poppMenuButton(imageUrl, title, type, context) {
    return PopupMenuItem(
        child: InkWell(
      onTap: () {
        switch (type) {
          case 'firt':
            this._showDialog(context, 'firt', '全店通用储值卡充值金额',180);
            break;
          case 'second':
            this._showDialog(context, 'second', '充值全店通用储值卡',300);
            break;
          case 'thrid':
            this._showDialog(context, 'thrid', '全店通用储值卡充值记录',500);
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imageUrl,
            width: 25,
            height: 25,
          ),
          Text(title)
        ],
      ),
    ));
  }

  Widget _inKWell(title, context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(title),
        ));
  }

  _contentContainer(type) {
    double height;
    switch (type) {
      case 'firt':
        height = 130;
        return Container(
          alignment: Alignment.centerLeft,
          width: 320,
          height: height,
          child: TextField(
            controller: _controller,
            onChanged: (val) {},
            decoration: InputDecoration(helperText: "*请填写充值金额(人民币)"),
          ),
        );
      case 'second':
        return Container(
          alignment: Alignment.bottomLeft,
            width: 320,
            height: 250,
            child: Column(
              children: [
                TextField(
                  controller: _controller,
                  onChanged: (val) {},
                  decoration: InputDecoration(labelText: "储值卡卡号"),
                ),
                TextField(
                  controller: _controller,
                  onChanged: (val) {},
                  decoration: InputDecoration(labelText: "储值卡密码"),
                ),
                Container(
                  child: Row(
                    children: [
                      Checkbox(value: isShoose, onChanged: (value) {}),
                      Text('我已阅读并同意神州集运'),
                      InkWell(
                        onTap: () {},
                        child: Text('《活动条款》'),
                      )
                    ],
                  ),
                )
              ],
            ));
      // case 'thrid':
    }
  }

  _showDialog(context, type, title, double _height) {
    return showDialog(
        context: context,
        builder: (context) {
          return Container(
            height: 650,
            width: 320,
            child: Dialog(
                insetPadding: EdgeInsets.zero,
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: 320,
                  height: _height,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          )),
                      _contentContainer(type),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            width: ScreenUtil().setWidth(150),
                            height: ScreenUtil().setHeight(80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [_buttonWidget()],
                            ),
                          ))
                    ],
                  ),
                )),
          );
        });
  }

  Widget _buttonWidget() {
    return Container(
      child: Row(
        children: [
          MaterialButton(
            color: Colors.blue.shade500,
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('关闭'),
          ),
          Padding(padding: EdgeInsets.all(8)),
          MaterialButton(
            onPressed: () {},
            color: Colors.blue.shade500,
            child: Text('确认'),
          )
        ],
      ),
    );
  }
}
