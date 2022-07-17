import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Great App"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blue,
            // shape: BoxShape.circle,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.green,
              Colors.blue,
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(-15, 15),
                // blurStyle: BlurStyle.normal,
              ),
            ],
          ),

          width: 200,
          height: 200,
          // clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Text(
                "Work Hard ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "All Pain One day Gone to Pay off. Dram big !! ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
