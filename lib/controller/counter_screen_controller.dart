import 'package:flutter/material.dart';

class CounterScreenController with ChangeNotifier {
  int count =0;

  void increment(){
    count++;
    notifyListeners();
  }
  void decrement(){
    count--;
    notifyListeners();
  }
 
}
