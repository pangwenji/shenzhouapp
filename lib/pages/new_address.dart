import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewAddress extends StatefulWidget {
  NewAddress({Key? key}) : super(key: key);

  @override
  _NewAddressState createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  GlobalKey _key = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  // _openBottomSheet() {

  //     return showModalBottomSheet(
  //       child: Container(
  //         height: ScreenUtil().setHeight(450),
  //         width:MediaQuery.of(context).size.width,
  //         color: Colors.blue,
  //         child: Text('底部'),
  //       ),
  //     );
  //   });
  // }

  Future _openModalBottomSheet() async {
    final String option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
        return  Container(
            height: ScreenUtil().setHeight(450),
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Text('底部'),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _bottomSheetScaffoldKey,
        appBar: AppBar(
          title: Text('新增地址'),
          centerTitle: true,
        ),
        body: Form(
            key: _key,
            // autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Container(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Column(
                children: [
                  TextFormField(
                    autofocus: false,
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: '收件人*',
                      hintText: '收件人*',
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    height: 50,
                    child: Row(
                      children: [
                        Container(
                            width: 100,
                            height: 50,
                            child: InkWell(
                              onTap: () {
                                _openModalBottomSheet();
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('国家/地区', style: TextStyle(fontSize: 17)),
                                  Icon(Icons.arrow_downward)
                                ],
                              ),
                            )),
                        Container(
                          width: 120,
                          color: Colors.blue,
                          child: TextFormField(
                            autofocus: true,
                            controller: _controller,
                            decoration: InputDecoration(
                              labelText: '收件人*',
                              hintText: '收件人*',
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
