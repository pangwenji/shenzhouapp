import 'package:flutter/material.dart';

class CommonProblem extends StatefulWidget {
  CommonProblem({Key? key}) : super(key: key);

  @override
  _CommonProblemState createState() => _CommonProblemState();
}

class _CommonProblemState extends State<CommonProblem> {
  List message = [
    {"title": "1、团队的含义是什么？", "subTitle": "作为推荐人，自己推荐的朋友们使用神州集运，最终组成一个团队"},
    {
      "title": "2、作为推荐人，可以获取团队的多少返利？",
      "subTitle": "神州会员可以获取本人集运金额的2%返利，加上你作为推荐人，推荐的朋友集运金额的2%返利"
    },
    {"title": "3、返利以什么形式兑现？", "subTitle": "以神州豆来兑现你的获的返利金额"},
    {"title": "4、神州豆是否有期限？", "subTitle": "没有"},
    {"title": "5、神州豆是否可以转移给朋友使用？", "subTitle": "不可以转移的"},
    {"title": "6、神州豆是否可以抵扣所有集运方式？", "subTitle": "可以抵扣（顺丰除外）"},
    {"title": "7、作为推荐人，成立自己名下的团队，有人数限制吗？", "subTitle": "在人数方面，没有限制"},
    {
      "title": "8、成立团队之后，团队成员的总消费金额和返利是否可以再系统查询？",
      "subTitle": "在App上，点击我的团队，就可以直接查询到成员们的总消费金额和返利"
    },
    {
      "title": "9、成立团队之后，团队成员的总消费金额是否有条件限制?",
      "subTitle": "没有限制条件，总消费金额越多，返利也会越多"
    },
    {"title": "10、推荐人是否可以变更？", "subTitle": "填写推荐人的机会仅此一次，不可以变更"},
    {"title": "11、团队成员是否可以自行裂变，让其成为推荐人，那获取的返利又是多少", "subTitle": "缴费"}
  ];

  bool _isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("我的团队常见问题"),
          centerTitle: true,
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
          child: ListView.builder(
              itemCount: message.length,
              shrinkWrap: true,
              primary: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                  trailing: _isExpand
                      ? Icon(Icons.arrow_drop_down)
                      : Icon(Icons.arrow_right),
                  title: Text(message[index]['title']),
                  leading: Image.asset(
                    'images/question.png',
                    height: 20,
                    width: 20,
                  ),
                  onExpansionChanged: (isExpand) {
                    this.setState(() {
                      _isExpand = isExpand;
                    });
                  },
                  children: [
                    ListTile(
                      title: Text(message[index]['subTitle']),
                    )
                  ],
                );
              }),
        )));
  }
}
