import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(
            child:Container(
              alignment:Alignment.center,
              padding: EdgeInsets.only(left: 30.0),
              width: MediaQuery.of(context).size.width,
              height: 35.0,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(2.0))),
              child: Row(
                        children: [
                                 SizedBox.fromSize(child: Icon(Icons.archive, color: Colors.blueAccent, size: 20.0)),
                                 Text(
                                   "我的集运专属地址（国内仓/神州仓）",
                                        style: TextStyle(color: Colors.white),
                                 )
                                ],
                       ),
              )
          ),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment(0, 0),
                    width: 120.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        color: Colors.orange),
                        child: Text('物流查询',
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                  ),
                  Expanded(
                      child: InkWell(
                      onTap: () {},
                      child:Container(
                                alignment: Alignment(0, 0),
                                constraints:BoxConstraints(
                                  minHeight: 35,
                                  minWidth: 150
                                ) ,
                                margin: EdgeInsets.only(left: 5),
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                  color: Colors.orange
                                  ),
                                  child: Text('自取点/智能查询',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                  ),
                                  ),
                                ),
                   )
                  )
                ],
              ))
        ],
      ),
    );
  }
}
