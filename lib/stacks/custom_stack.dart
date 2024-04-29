import 'package:flutter/material.dart';

class CustomStack extends StatefulWidget {
  @override
  _CustomStackState createState() => _CustomStackState();

}

class _CustomStackState extends State<CustomStack> {
  List<Widget> containers = []; // Moved containers list inside the state class

  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: [
        ...containers,
      ],
    );

    return Container(
      color: Colors.grey,
      height: 650,
      width: 400,
      child: stack,
    );
  }

  void addContainer() {
    setState(() {
      print("Adding...");
      containers.add(
        Positioned(
          top: containers.length * 10.0, // Adjust position based on the number of containers
          child: Container(
            width: 10,
            height: 10,
            color: Colors.orange,
            margin: EdgeInsets.all(10),
          ),
        ),
      );
    });
  }
}
