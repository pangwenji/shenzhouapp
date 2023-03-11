import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:get/get.dart';
import 'package:shenzhouapp/router/routes.dart';

class MyTeam extends StatefulWidget {
  MyTeam({Key? key}) : super(key: key);

  @override
  _MyTeamState createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  List<Image> images = [
    Image.asset(
      'images/newSwiper1.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/newSwiper2.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/newSwiper3.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/newSwiper4.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/newSwiper5.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/newSwiper6.jpeg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'images/newSwiper1.jpeg',
      fit: BoxFit.cover,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的团队'),
        centerTitle: true,
        actions: [
          InkWell(
              onTap: () {
                Get.toNamed(Routes.question);
              },
              child: Container(
                padding: EdgeInsets.only(top: 17.0, right: 15.0),
                child: Text('答疑'),
              )
            )
        ],
      ),
      body: Column(
        children: [
          //轮播广告部分
          AdvertisiRotation(),
          //统计部分
          _contanier(),
          //文字设计部分
          _textContainer(),
          _itemSpacePage('我的团队', false, 'images/team.png'),
          _itemSpacePage('我的推荐码', true, 'images/zhuanfa.png')
        ],
      ),
    );
  }

  Widget AdvertisiRotation() {
    return Container(
      child: Swiper(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return images[index];
        },
        autoplay: true,
        pagination: SwiperPagination(),
        loop: true,
      ),
      height: 280.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
    );
  }

  Widget _contanier() {
    return Container(
      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          _itemCotainer('0', '总推荐人数'),
          _itemCotainer('0', '总消费人数'),
          _itemSpecialCotainer(),
        ],
      ),
    );
  }

  Widget _itemCotainer(data, title) {
    return Expanded(
        flex: 1,
        child: Container(
          width: 60.0,
          decoration: BoxDecoration(
              border:
                  Border(right: BorderSide(width: 1.0, color: Colors.grey))),
          child: Column(
            children: [
              Text(data),
              Text(title),
            ],
          ),
        ));
  }

  Widget _itemSpecialCotainer() {
    return Expanded(
        flex: 1,
        child: Container(
          width: 60.0,
          child: Column(
            children: [
              Text('￥0.0'),
              Text('团队总业绩'),
            ],
          ),
        ));
  }

  //文字识别
  Widget _textContainer() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                  '尊敬的【pangwenji】用户，欢迎使用神州集运，快推介你身边的朋友注册会员和使用神州集运并领取丰厚的报酬吧！'),
            ),
          ),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('你的推荐人是:'),
              ))
        ],
      ),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 5.0, color: Colors.grey.shade300),
              bottom: BorderSide(width: 5.0, color: Colors.grey.shade300))),
    );
  }

  Widget _itemSpacePage(title, isShow, imageUrl) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            border: isShow
                ? Border(
                    bottom: BorderSide(width: 0.9, color: Colors.grey.shade300))
                : Border(
                    bottom:
                        BorderSide(width: 5.0, color: Colors.grey.shade300))),
        child: InkWell(
          onTap: () {
            Get.toNamed(Routes.myTeamDetail);
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  imageUrl,
                  width: 18,
                  height: 18,
                ),
              ),
              Container(
                width: 340,
                child: Text(title),
              ),
              Container(
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              )
            ],
          ),
        ));
  }
}
