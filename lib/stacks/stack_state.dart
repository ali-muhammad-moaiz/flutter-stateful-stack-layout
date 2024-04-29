import 'package:flutter/material.dart';

class StackState with ChangeNotifier {
  final List<Widget> children = [
    // Initial container
    Container(
      color: Colors.blue,
      height: 20,
      width: 20,
    )
  ];

  void addContainer() {
    children.add(Container(
      color: Colors.orange,
      height: 20,
      width: 20,
    ));
    notifyListeners(); // Notify listeners of state change
  }
}