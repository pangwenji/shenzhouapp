import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey _fromKey = new GlobalKey<FormState>();
  late String userName;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            flexibleSpace:
                Image.asset('images/shunfen.jpeg', height: 200, width: 400.0),
          ),
          preferredSize: Size.fromHeight(200),
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: '用户名',
                        labelText: '用户名',
                        prefixIcon: Icon(
                          Icons.person,
                          size: 20,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pinkAccent))),
                    onChanged: (value) {},
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: '密码',
                        labelText: '密码',
                        prefixIcon: Icon(Icons.lock, size: 20),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.pinkAccent))),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
            Positioned(
              top: 140.0,
              child: Padding(
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
                    child: Text('登录')
                  ),
                ),
              ),
            ),
            Positioned(
                top: 200.0,
                child: Container(
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Positioned(
                               left: 0,
                               child: Container(
                                  padding: EdgeInsets.only(top:16.0),
                                  child: Text('注册新用户',style: TextStyle(color: Colors.redAccent),),
                               )
                              ),
                              Positioned(
                               right: 0,
                               child: Container(
                                 padding: EdgeInsets.only(top:16.0),
                                 child: Text('密码',style: TextStyle(color: Colors.redAccent)),
                               )
                              )
                          ]
                      )
                    )
            ),
            Positioned(
                bottom: 0,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        '版本:2.5.0',
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    )
                  )
            )
          ],
        ));
  }
}
