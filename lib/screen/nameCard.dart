import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
