import 'package:flutter/material.dart';
import 'package:shenzhouapp/components/wave_clipper.dart';

class Coupon extends StatefulWidget {
  Coupon({Key? key}) : super(key: key);

  @override
  _CouponState createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  final _container = <Widget>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setContainer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('优惠卷'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        reverse: false,
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(0),
            sliver: SliverList(delegate: SliverChildListDelegate(_container)),
          ),
        ],
      ),
    );
  }

  void setContainer() {
    _container.add(handleContanier());
  }

  Widget handleContanier() {
    return Container(
      child: Column(
        children: [
          // ClipPath(
          //   clipper: WaveClipper(),
          //   child: Container(
          //     height: 200,
          //     color: Colors.red,
          //     child: Row(
          //       children: [
          //         Expanded(flex: 1, child: Container()),
          //         Expanded(flex: 1, child: Container())
          //       ],
          //     ),
          //   ),
          // ),

        ],
      ),
    );
  }
}
