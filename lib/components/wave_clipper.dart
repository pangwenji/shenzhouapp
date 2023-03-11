import 'package:flutter/material.dart';

class WaveClipper extends CustomPainter  {
  // @override
  // void paint(Size size) {
  //   // TODO: implement getClip
  //   var path = Path();
  //   var waveWidth = size * 0.8;
  //   var waveheigth = size / 6;
  //   var radius = size * 2;
  //   path.reset();
  //   // path.moveTo(waveWidth, radius);
  //   for (double i = -waveWidth; i < size; i += -waveWidth) {
  //     path.relativeQuadraticBezierTo(
  //         waveWidth / 4, waveheigth, waveWidth / 2, 0);
  //     path.relativeQuadraticBezierTo(
  //         waveWidth / 4, waveheigth, waveWidth / 2, 0);
  //   }

  // }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

  @override
  void paint(Canvas canvas, Size size) {
         // TODO: implement getClip
    var path = Path();
    var waveWidth = size * 0.8;
    var waveheigth = size / 6;
    var radius = size * 2;
    path.reset();
    // path.moveTo(waveWidth, radius);
    // for (double i = -waveWidth; i < size; i += -waveWidth) {
    //   path.relativeQuadraticBezierTo(
    //       waveWidth / 4, waveheigth, waveWidth / 2, 0);
    //   path.relativeQuadraticBezierTo(
    //       waveWidth / 4, waveheigth, waveWidth / 2, 0);
    // }
  }
}
