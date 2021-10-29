import 'package:flutter/material.dart';
import 'package:shenzhouapp/components/Information_module.dart';
import 'package:shenzhouapp/components/information.dart';
import 'package:shenzhouapp/components/swiper_diy.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           SwiperDiy(),
           Information(),
           InforMationModeule()
        ],
      )
    );
  }
}
