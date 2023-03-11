import 'package:flutter/material.dart';
import 'package:shenzhouapp/components/Information_module.dart';
import 'package:shenzhouapp/components/information.dart';
import 'package:shenzhouapp/components/swiper_diy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
     ScreenUtil.init(
      BoxConstraints(
        maxHeight: MediaQuery.of(context).size.width,
        maxWidth: MediaQuery.of(context).size.height
      ),
      designSize: Size(360, 690),
      orientation: Orientation.portrait
    );
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
