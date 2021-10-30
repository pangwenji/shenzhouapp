import 'package:get/get.dart';
import 'package:shenzhouapp/components/distribution_mode.dart';
import 'package:shenzhouapp/pages/coupon.dart';
import 'package:shenzhouapp/pages/goodsStatus.dart';
import 'package:shenzhouapp/pages/home.dart';
import 'package:shenzhouapp/pages/my_order.dart';
import 'package:shenzhouapp/pages/novice_tutorial.dart';
import 'package:shenzhouapp/pages/registered_goods.dart';
import 'package:shenzhouapp/pages/savings_deposit_card.dart';
import 'package:shenzhouapp/pages/set_address.dart';
import 'package:shenzhouapp/pages/trial_series.dart';
import 'package:shenzhouapp/router/routes.dart';

class Pages {
  static final routes = [
      GetPage(  
        name: Routes.home, 
        page: ()=>HomePage(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.registeredGoods, 
        page: ()=>RegisteredGoods(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.goodsStatus, 
        page: ()=>GoodsStatus(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.myOrder, 
        page: ()=>MyoOrder(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.tralSeries, 
        page: ()=>TrailSeries(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.setAddress, 
        page: ()=>SetAddress(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.coupon, 
        page: ()=>Coupon(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.savingsDepositCard, 
        page: ()=>SavingDepositCard(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.noviceTutorial, 
        page: ()=>NoViceTutorial(),
        transition: Transition.fadeIn
      ),
      GetPage(
        name: Routes.distributionMode, 
        page: ()=>DistributionMode(),
        transition: Transition.fadeIn
      ),
    ];
}
