import 'package:flutter/material.dart';

class ExpansionLayout extends StatefulWidget {
  ExpansionLayout(
      {Key? key,
      required this.isExpand,
      required this.children,
      required this.onExpansionChanged})
      : super(key: key);

  bool isExpand;
  List<Widget> children;

  ValueChanged<bool> onExpansionChanged;
  @override
  _ExpansionLayoutState createState() => _ExpansionLayoutState();
}

class _ExpansionLayoutState extends State<ExpansionLayout>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);

  late AnimationController _controller;
  late Animation<double> _heightFactor;
  Duration _kExpand = Duration(microseconds: 2000);
  late bool _isExpand;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _kExpand);
    _isExpand = widget.isExpand;
    if (_isExpand) {
      _controller.value = 1.0;
    }
  }

  void _handleTap() {
    setState(() {
      // _isExpand = widget.isExpanded;
      if (_isExpand) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
        });
      }
      //保存页面数据
      PageStorage.of(context)?.writeState(context, _isExpand);
    });
    //回调展开事件
    if (widget.onExpansionChanged != null) widget.onExpansionChanged(_isExpand);
  }

  @override
  Widget build(BuildContext context) {
    _handleTap();
    final bool closed = !_isExpand && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (BuildContext context, child) {
        return Container(
          child: Row(
            children: [Text('xx'), Text('xx4')],
          ),
        );
      },
      child: closed
          ? null
          : Column(
              children: widget.children,
            ),
    );
  }
}
