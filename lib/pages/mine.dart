import 'package:flutter/material.dart';

class Mine extends StatelessWidget {
  const Mine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List data1 = [
      {"image": "images/cany.png", "title": "神州豆"},
      {"image": "images/coupon_image.png", "title": "优惠卷"},
      {"image": "images/storeCard_tiem.png", "title": "储值卡"}
    ];
    final data2 = [
      {"image": "images/cany.png", "title": "神州豆"},
      {"image": "images/coupon_image.png", "title": "优惠卷"},
      {"image": "images/storeCard_tiem.png", "title": "储值卡"}
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
          centerTitle: true,
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('images/avatar.png'),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 290,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '用户名： pangwenji<普通会员>',
                              style: TextStyle(fontSize: 15),
                            ),
                            Text(
                              '昵称：pangwenji',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                ),
                //第二行
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 6),
                    top: BorderSide(color: Colors.grey.shade300, width: 6),
                  )),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Image.asset(
                          'images/location.png',
                          width: 18,
                          height: 18,
                        ),
                      ),
                      Container(
                        child: Text('我的集运专属地址（国内仓/神州仓）'),
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 10,
                        ),
                      )
                    ],
                  ),
                ),
                // 第三行
                Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 6, color: Colors.grey.shade300))),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 0.9, color: Colors.grey.shade300))),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            _itemContanier('今日收益（神州豆）', '0.0'),
                            _itemContanier('本月收益（神州豆）', '0.0'),
                            _itemContanier('历史收益（神州豆）', '0.0')
                          ],
                        ),
                      ),
                      _threeContanier('images/team.png', '我的团队', true),
                      _threeContanier('images/evaluate.png', '我的评价', false)
                    ],
                  ),
                ),
                //第四行
                _fourContaier(true, data1),
                //第五行
                _fourContaier(false, data2)
              ],
            ),
          ),
        )));
  }

  Widget _fourContaier(flag, data) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 6, color: Colors.grey.shade300))),
      child: Column(
        children: [
          _specItemContainer(flag,data),
          _threeContanier(data[1]['image'], data[1]['title'], true),
          _threeContanier(data[2]['image'], data[2]['title'], false),
        ],
      ),
    );
  }

  Widget _specItemContainer(flag,data) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 0.9, color: Colors.grey.shade300))),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Image.asset(
              data[0]['image'],
              width: 18,
              height: 18,
            ),
          ),
          Container(
            width: flag ? 290 : 315,
            child: Text(data[0]['title']),
          ),
          Container(
            padding: EdgeInsets.only(right: 5),
            child: flag
                ? Text(
                    '100',
                    style: TextStyle(color: Colors.red.shade400),
                  )
                : Text(''),
          ),
          Container(
            child: Icon(
              Icons.arrow_forward_ios,
              size: 10,
            ),
          )
        ],
      ),
    );
  }

  Widget _itemContanier(title, shuliang) {
    return Expanded(
        flex: 1,
        child: Container(
          alignment: Alignment(0, 10),
          child: Column(
            children: [
              Text(shuliang),
              Text(
                title,
                style: TextStyle(fontSize: 13),
              )
            ],
          ),
        ));
  }

  Widget _threeContanier(imageUrl, title, isShow) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            border: isShow
                ? Border(
                    bottom: BorderSide(width: 0.9, color: Colors.grey.shade300))
                : Border()),
        child: InkWell(
          onTap: () {},
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
                width: 320,
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
