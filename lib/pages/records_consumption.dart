import 'package:flutter/material.dart';

class recordsConsumption extends StatefulWidget {
  recordsConsumption({Key? key}) : super(key: key);

  @override
  _recordsConsumptionState createState() => _recordsConsumptionState();
}

class _recordsConsumptionState extends State<recordsConsumption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _contanier('充值金额', '0.0元'),
          _contanier('记账金额', '0.0元'),
          _contanier('消费金额', '0.0元'),
          _contanier('剩余金额', '0.0元'),
          _divider()
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      padding: EdgeInsets.only(left: 5),
      alignment: Alignment.centerLeft,
      child: Text('消费记录',
       style: TextStyle(
         fontSize: 16.0,
         color: Colors.grey
       ),
      ),
      color: Colors.grey.shade300,
      height: 40.0,
      width: MediaQuery.of(context).size.width,
    );
  }

  Widget _contanier(title, price) {
    return Container(
      child: Row(
        children: [_padding(title), _padding(price)],
      ),
    );
  }

  Widget _padding(title) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Text(title, style: TextStyle(color: Colors.grey)),
    );
  }
}
