import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({Key? key}) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: '返回上一页',
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('注册一个新账户'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: '账户*（英文细项或数字）',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent))),
              onChanged: (value) {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: '邮箱地址*(请填写正确的邮箱以验证注册)',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent))),
              onChanged: (value) {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: '输入密码*',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent))),
              onChanged: (value) {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  labelText: '请再次输入密码',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.pinkAccent))),
              onChanged: (value) {},
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
              child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: isActive,
                          checkColor: Colors.white,
                          activeColor: Colors.red,
                          onChanged: (value) {
                            this.setState(() {
                              isActive = !isActive;
                            });
                          },
                        ),
                        Text('我已阅读并且同意神州集运'),
                        InkWell(
                          child:Text("《承运条款》",style: TextStyle(
                           color: Colors.red,
                           decoration: TextDecoration.underline,
                          ),
                        ),
                        onTap: (){},
                      ),
                    ],
          ),
         ),
         Container(
                padding: const EdgeInsets.all(16),
                child: Material(
                  color: Colors.redAccent,
                  elevation: 6,
                  child: MaterialButton(
                    height: 48,
                    minWidth: 375,
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 0),
                    child: Text('注册')
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
