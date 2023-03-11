import 'package:get/get.dart';
import 'package:shenzhouapp/model/courennt_index.dart';

class CurrentIndexController extends GetxController {
  // var _currentIndex = CurrentIndex();
  int count = 0;
  // ignore: unused_element
  void increment(index) {
    print(index);
    count = index;
    update();
  }
}
