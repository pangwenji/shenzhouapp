import 'package:flutter/material.dart';

class DataBase {
  static getSwiperData() {
    List<Image> images = [
        Image.asset(
          'images/swiper1.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/swiper2.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/swiper3.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'images/swiper4.jpg',
          fit: BoxFit.cover,
        )
    ];
    return images;
  }
}
