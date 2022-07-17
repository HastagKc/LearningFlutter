import 'package:essientials_app/screen/drawerwed.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
import 'nameCard.dart';

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
        title: Text("AppBar"),
      ),
      drawer: DrawerWid(),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        // alignment: Alignment.center,

        child: SingleChildScrollView(
          child: NameCard(myText: myText, nameController: _nameController),
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
