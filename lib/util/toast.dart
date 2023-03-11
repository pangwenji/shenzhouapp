import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

//成功的提示信息
void showSuccessMsg(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0);
}
