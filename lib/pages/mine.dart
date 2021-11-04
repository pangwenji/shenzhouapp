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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Container(
                                child: Row(
                                  children: [
                                     Container(
                                       child: Image.asset('images/avatar.png'),
                                     ),
                                     Container()
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
