import 'package:flutter/material.dart';

class RegisteredGoods extends StatefulWidget {
  RegisteredGoods({Key? key}) : super(key: key);

  @override
  _RegisteredGoodsState createState() => _RegisteredGoodsState();
}

class _RegisteredGoodsState extends State<RegisteredGoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登记货物'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 70,
              maxHeight: 140
            ),
            margin: EdgeInsets.all(10),
            height: 70.0,
            child:Expanded(
              child: TextField(
               obscureText: true,
               decoration: InputDecoration(
                         labelText: '快递单号',
                         //  suffixText: '只需输入快递单号。（如快递单号包含字母，大小写请于原单号保持一致）'
                         helperText: '只需输入快递单号。（如快递单号包含字母，大小写请于原单号保持一致）',
                         helperMaxLines: 2,
                         border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.red)
                         )
                        ),
                ),
              )
          ),
           Container(
            margin: EdgeInsets.all(10),
            height: 70.0,
            child: TextField(
               obscureText: true,
               decoration: InputDecoration(
                         labelText: '货件内容',
                         //  suffixText: '只需输入快递单号。（如快递单号包含字母，大小写请于原单号保持一致）'
                         suffixText: '',
                         helperText: '货物品名需如填写，实物与品名不符合将被海关查扣（衣服x1,手机套X2(限制15字以内)）',
                         helperMaxLines: 2,
                         border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.red)
                         )
                        ),
           ),
          ),
           Container(
            margin: EdgeInsets.all(10),
            height: 70.0,
            child: TextField(
               obscureText: true,
               decoration: InputDecoration(
                         labelText: '备注',
                         //  suffixText: '只需输入快递单号。（如快递单号包含字母，大小写请于原单号保持一致）'
                         suffixText: '',
                         helperText: '如果是国际转运，请输入货品内容及价格，例:衣服x1 ￥350,手机套 x 2 ，￥200',
                         helperMaxLines: 2,
                         border: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.red)
                         )
                        ),
           ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment(0, 0),
            height: 40.0,
            width: 400.0,
            decoration: BoxDecoration(
              color: Colors.pinkAccent
            ),
            child: Text('登记')
          )
        ],
      ),
    );
  }
}