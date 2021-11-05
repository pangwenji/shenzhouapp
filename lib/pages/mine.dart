import 'package:flutter/material.dart';

class Mine extends StatelessWidget {
  const Mine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('我的'),
          centerTitle: true,
        ),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[];
            },
            body:SingleChildScrollView(
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
                                           Text('用户名： pangwenji<普通会员>',
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),
                                           ),
                                           Text('昵称：pangwenji',
                                               style: TextStyle(
                                                  fontSize: 12
                                              ),
                                           )
                                         ],
                                       ),
                                     ),
                                     Container(
                                       child: Icon(Icons.arrow_forward_ios,size: 10,),
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
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 6),
                                      top: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 6),
                                      )
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      child: Image.asset('images/location.png',width: 18,height: 18,),
                                    ),
                                    Container(
                                      child: Text('我的集运专属地址（国内仓/神州仓）'),
                                    ),
                                    Container(
                                       child: Icon(Icons.arrow_forward_ios,size: 10,),
                                    )
                                  ],
                                ),
                              )
                          ],
                        ),
                      ),
               ) 
              )
            );
  }
}
