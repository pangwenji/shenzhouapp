import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleShineImage extends StatefulWidget {
  CircleShineImage(
      {Key? key,
      required this.maxBlurRadius,
      required this.color,
      required this.duration,
      required this.curve,
      required this.image,
      this.radius =30})
      : super(key: key);
  late final double maxBlurRadius;
  late final Color color;
  late final Duration duration;
  late final Curve curve;
  late final ImageProvider image;
  late final double radius;
  @override
  _CircleShineImageState createState() => _CircleShineImageState();
}

class _CircleShineImageState extends State<CircleShineImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> blurRadiusAnim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..addListener(_handleAnimationChanged);

    blurRadiusAnim = Tween<double>(begin: 0, end: widget.maxBlurRadius)
        .chain(CurveTween(curve: widget.curve))
        .animate(_ctrl);

    _ctrl.repeat(reverse: true);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  void _handleAnimationChanged() {
    this.setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.radius *2,
      width: widget.radius*2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: widget.image,
          fit: BoxFit.cover
        ),
        shape: BoxShape.circle,
        boxShadow:[
               BoxShadow(
          color: widget.color,
          blurRadius: blurRadiusAnim.value,
           spreadRadius: 0
        )
        ]
      ),
    );
  }
}
