import 'dart:collection';

import 'package:flutter/cupertino.dart';

//ChangeNotifier without provider
class Person extends ChangeNotifier {
  Person({this.name, this.age});

  final String name;
  int age;

  // when 'notifyListeners' is called, it will invoke
  // any callbacks that have been registered with an instance of this object
  // 'addListener'.
  void increaseAge() {
    this.age++;
    notifyListeners();
  }

  void main() {
    var person = Person(name: "Yohan", age: 25);

    //'addListener' is a method on the 'ChangeNotifier' class,
    // which is mixed-in to the Person class
    person.addListener(() {
      print('value update!: ${person.age}');
    });

    person.increaseAge(); //26
  }
}
