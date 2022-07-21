import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class HttpSever extends StatefulWidget {
  // const HttpSever({Key? key}) : super(key: key);
  static const String routeName = "/home";

  @override
  State<HttpSever> createState() => _HttpSeverState();
}

class _HttpSeverState extends State<HttpSever> {
  var url = "https://jsonplaceholder.typicode.com/photos";

  var data;
  Future fetchData() async {
    var res = await http.get(Uri.parse(url));
    // print(res.body);

// json decode convert string data into json object

    data = jsonDecode(res.body);
    // now we got object
    // print(data);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      drawer: const DrawerWid(),
      body: data != null
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.blue[100],
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ListTile(
                      title: Text("ID: ${data[index]["id"]}"),
                      subtitle: Text(
                        data[index]["title"],
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(data[index]["url"])),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.send),
      ),
    );
  }
}
