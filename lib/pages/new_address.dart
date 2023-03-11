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
  TextEditingController area = TextEditingController();
  TextEditingController locationArea = TextEditingController();
  TextEditingController detailArea = TextEditingController();
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  bool isShowHint = true;

  Future _openModalBottomSheet() async {
    final String option = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: ScreenUtil().setHeight(450),
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: Text('底部'),
          );
        });
  }

  _validator(val) {
    print(val);
    print('vvvvvvvvvv');
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
                  _TextFormField('收件人*', false, _controller),
                  Container(
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
                          width: ScreenUtil().setWidth(130),
                          child: TextFormField(
                            validator: (val) {
                              _validator(val);
                            },
                            autofocus: true,
                            controller: locationArea,
                            decoration: InputDecoration(
                              labelText: '收件人*',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  _TextFormField('所在地区*', true, area),
                  _TextFormField('详细地址*', false, detailArea)
                ],
              ),
            )));
  }

  Widget _TextFormField(labelText, flag, controller) {
    if (flag) {
      return InkWell(
        onTap: () {
          
        },
        child: TextFormFieldWidget(labelText, flag, controller),
      );
    }
    return TextFormFieldWidget(labelText, flag, controller);
  }

  Widget TextFormFieldWidget(labelText, flag, controller) {
    return TextFormField(
      onChanged: (val) {
        print(flag);
      },
      autofocus: false,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
