import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shenzhouapp/dataBase.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SwiperDiy extends StatelessWidget {
  SwiperDiy({Key? key}) : super(key: key);
   List<Image> images = [
        Image.asset(
          'images/swiper1.jpeg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/swiper2.jpeg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/swiper3.jpeg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/swiper4.jpeg',
          fit: BoxFit.cover,
        )
    ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width:ScreenUtil().setWidth(400),
      height:ScreenUtil().setHeight(500),
      child: 
      Swiper(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return images[index];
        },
        autoplay: true,
        pagination: SwiperPagination(),
        loop: true,
      ),
    );
  }
}
