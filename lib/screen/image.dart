import 'package:essientials_app/screen/drawerwed.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class ImageWidgets extends StatefulWidget {
  const ImageWidgets({Key? key}) : super(key: key);

  @override
  State<ImageWidgets> createState() => _ImageWidgetsState();
}

class _ImageWidgetsState extends State<ImageWidgets> {
  var myText = "Gym Motivation";

  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      drawer: const DrawerWid(),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        // alignment: Alignment.center,

        child: SingleChildScrollView(
          child: Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/2.jpg",
                  // width: 300,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  myText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20),
                ),
                Container(
                  width: 350,
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      labelText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    // controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Passowrd",
                      labelText: "Password",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(
            () {},
          );
        },
        child: Icon(Icons.send),
      ),
    );
  }
}
