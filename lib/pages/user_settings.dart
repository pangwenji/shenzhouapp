import 'package:flutter/material.dart';

class UserSettings extends StatefulWidget {
  UserSettings({
    Key? key,
  }) : super(key: key);

  @override
  _UserSettingsState createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNodeNick = FocusNode();
  FocusNode _focusNodeEmial = FocusNode();
  FocusNode _focusNodeTele = FocusNode();
  FocusNode _focusNodeNum = FocusNode();
  FocusNode _focusNodeRecmment = FocusNode();
  bool isShooseNick = false;
  bool isShooseEmia = false;
  bool isShooseTele = false;
  bool isShooseNum = false;
  bool isShooseRecmment = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('账号设置'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _container("pangwenji", "昵称", "", _focusNodeNick,isShooseNick),
          _container("799953277@qq.com", "电邮地址", "", _focusNodeEmial,isShooseEmia),
          _container("170 0000 0000", "手机号码", "", _focusNodeTele,isShooseTele),
          _container("", "淘宝付款账号（只能填写一次,填写后不能修改）", "如需要修改请联络客服", _focusNodeNum,isShooseNum),
          _container("", "推荐人（只能填写一次，填写后不能修改）", "", _focusNodeRecmment,isShooseRecmment)
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    this.setFocusNode(_focusNodeNick,isShooseNick);
    this.setFocusNode(_focusNodeEmial,isShooseEmia);
    this.setFocusNode(_focusNodeTele,isShooseTele);
    this.setFocusNode(_focusNodeNum,isShooseNum);
    this.setFocusNode(_focusNodeRecmment,isShooseRecmment);
  }

  void setFocusNode(focus, isSelect) {
    focus.addListener(() {
      this.setIsChoose(focus, isSelect);
    });
  }

  void setIsChoose(focus, isSelect) {
    if (!focus.hasFocus) {
      this.setState(() {
        isSelect = false;
      });
    } else {
      this.setState(() {
        isSelect = true;
      });
    }
  }

  Widget _container(
    textValue,
    nickname,
    helperValue,
    focus,
    isShoose
  ) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        focusNode: focus,
        controller:
            TextEditingController.fromValue(
              TextEditingValue(
                text: textValue,
                selection: TextSelection.fromPosition(
                  TextPosition(
                    affinity: TextAffinity.downstream,
                    offset: textValue.length)
                    )
                )
            ),
        decoration: InputDecoration(
            labelText: nickname,
            labelStyle:
                TextStyle(color: isShoose ? Colors.pinkAccent : Colors.grey),
            helperText: helperValue,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.pinkAccent))),
      ),
    );
  }
}
