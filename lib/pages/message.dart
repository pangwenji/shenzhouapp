import 'package:flutter/material.dart';
import 'package:shenzhouapp/messagepages/system_message.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage>
    with SingleTickerProviderStateMixin {
  final _tabs = <Tab>[
    Tab(text: "系统消息"),
    Tab(text: "我的消息"),
  ];

  final _tabBarView = <Widget>[
    SystemMessage(),
    Center(
      child: Text('我的消息'),
    )
  ];
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(49),
        child:  AppBar(
        title: TabBar(
          controller: _tabController,
          tabs: _tabs,
          indicatorColor: Colors.pinkAccent,
        ),
      ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabBarView,
      ),
    );
  }
}
