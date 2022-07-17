import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  const RowCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("AppBar"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: 100,
            color: Colors.green,
          ),
          Container(
            height: 50,
            width: 200,
            color: Colors.red,
          ),
          Container(
            height: 50,
            width: 300,
            color: Colors.blue,
          ),
          Container(
            height: 50,
            width: 400,
            color: Colors.black,
          ),
          Container(
            height: 300, // cross alignment work in only in height of container
            color: Color.fromARGB(255, 136, 188, 231),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
