import 'package:flutter/material.dart';

class SystemMessage extends StatefulWidget {
  SystemMessage({Key? key}) : super(key: key);

  @override
  _SystemMessageState createState() => _SystemMessageState();
}

class _SystemMessageState extends State<SystemMessage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: textList.length,
        itemExtent: 60,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {},
              child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 1.0))),
                  child: Row(children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(textList[index]['text'],
                              style: TextStyle(
                                fontSize: 14.0,
                              )),
                          Text(textList[index]['time'],
                              style: TextStyle(fontSize: 8, color: Colors.grey))
                        ],
                      ),
                    ),
                    Expanded(child: Text('')),
                    Container(
                        child: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                    )
                  ])
          ));
        });
  }

  final List<Map<String, dynamic>> textList = [
       {"text":"海关调查，通关延误","time":"2021-10-31"},
       {"text":"广西私家930","time":"2021-12-31"},
       {"text":"深空探索","time":"2021-10-31"}
    ];
}
