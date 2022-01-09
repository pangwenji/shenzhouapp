import 'package:flutter/material.dart';

class MyEvaluation extends StatelessWidget {
  MyEvaluation({Key? key}) : super(key: key);
  final list = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的评价'),
        centerTitle: true,
      ),
      body: MessageEvaluation(
        list: list,
      ),
    );
  }
}


class MessageEvaluation extends StatefulWidget {
  MessageEvaluation({Key? key,required list}) : super(key: key);

  @override
  _MessageEvaluationState createState() => _MessageEvaluationState();
}

class _MessageEvaluationState extends State<MessageEvaluation> {
    final list = [];

  @override
  Widget build(BuildContext context) {
    return list.length == 0 ? _center() : _container();
  }

  Widget _center() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/noData.png'),
          Text('暂时没有内容！',style: TextStyle(
            fontSize: 16,
            color: Colors.grey
          ),)
        ],
      ),
    );
  }

  Widget _container() {
    return Container(
      child: Text('内容'),
    );
  }
}