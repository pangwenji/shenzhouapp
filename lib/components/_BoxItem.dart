import 'package:flutter/material.dart';
import 'package:shenzhouapp/model/itemIcon.dart';

class BoxItem extends StatefulWidget {
  final   data;
  BoxItem({Key? key, required  this.data}) : super(key: key);
  @override
  _BoxItemState createState() => _BoxItemState();
}

class _BoxItemState extends State<BoxItem> {
  @override
  void initState() {
    super.initState();
    print(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 5.0,
        height: 5.0,
        child: Column(
          children: [
            // Image.asset(widget.data.imageUrl),
            Text(widget.data.title)
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
