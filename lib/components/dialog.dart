import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDiaLog extends StatefulWidget {
  MyDiaLog({Key? key}) : super(key: key);

  @override
  _MyDiaLogState createState() => _MyDiaLogState();
}

class _MyDiaLogState extends State<MyDiaLog> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Wrap(
      children: [
        Container(
          // margin: EdgeInsets.only(top: 25),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: 360.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.grey.shade300))),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        children: [Text('神州专线'), Text('(香港集运)')],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 360.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.grey.shade300))),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text('神州快线'),
                          Text('(香港集运)'),
                          Text('(到港48小时内送达)'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: 360.0,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 1.0, color: Colors.grey.shade300))),
                child: Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Column(
                        children: [
                          Text('神州特快'),
                          Text('(香港集运)'),
                          Text('(到港24小时内送达)'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: 360.0,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: Colors.grey.shade300))),
                  child: MaterialButton(
                    child: Text('台湾集运'),
                    onPressed: () {},
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  width: 360.0,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: Colors.grey.shade300))),
                  child: MaterialButton(
                    child: Text('澳门集运'),
                    onPressed: () {},
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  width: 360.0,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 1.0, color: Colors.grey.shade300))),
                  child: MaterialButton(
                    child: Text('国际转运'),
                    onPressed: () {},
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  width: 360.0,
                  decoration: BoxDecoration(),
                  child: MaterialButton(
                    child: Text('国内转运'),
                    onPressed: () {},
                  )),
            ],
          ),
          width: 360,
          height: 520,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          width: 360,
          height: 60,
          child: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('取消'),
          ),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        )
      ],
    ));
  }
}
