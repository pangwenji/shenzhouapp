import 'package:flutter/material.dart';

class verification extends StatefulWidget {
  verification({Key? key}) : super(key: key);

  @override
  _verificationState createState() => _verificationState();
}

class _verificationState extends State<verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('验证用户邮箱'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 5.0),
            width: 180.0,
            height: 180.0,
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              enableInteractiveSelection: false,
              minLines: 1,
              decoration: InputDecoration(
                  hintText: '请输入用户账号或邮箱',
                  labelText: '用户名',
                  prefixText: '用户名',
                  hintStyle: TextStyle(height: 2.0),
                  contentPadding: EdgeInsets.all(0),
                  prefixStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent))),
              onChanged: (value) {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Stack(
              alignment: const Alignment(1.0, 0.1),
              children: <Widget>[
                new TextField(
                  enableInteractiveSelection: false,
                  minLines: 1,
                  decoration: InputDecoration(
                      hintText: '请输入邮箱验证码',
                      labelText: '验证码',
                      prefixText: '验证码',
                      hintStyle: TextStyle(height: 2.0),
                      contentPadding: EdgeInsets.all(0),
                      prefixStyle: TextStyle(color: Colors.black),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.pinkAccent))),
                  onChanged: (value) {},
                ),
                Container(
                  height: 35.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border:
                          Border.all(color: Colors.grey.shade900, width: 0.3)),
                  child: MaterialButton(
                      onPressed: () {},
                      height: 32.0,
                      minWidth: 120.0,
                      child: Text('点击获取验证码')),
                )
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            height: 40,
            color: Colors.red,
            minWidth: 360.0,
            child: Text('验证'),
          )
        ],
      ),
    );
  }
}
