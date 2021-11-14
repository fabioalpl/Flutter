import 'package:flutter/material.dart';

class Person with ChangeNotifier {
  Person({this.name, this.age});

  final String name;
  int age;

  void increaseAge() {
    this.age++;
    notifyListeners();
  }

  // here, you can see that the [ChangeNotifierProvider]
  // is "wired up" exactly like the vanilla [Provider]
}
