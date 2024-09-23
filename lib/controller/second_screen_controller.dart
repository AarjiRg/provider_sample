import 'package:flutter/material.dart';

class SecondScreenController with ChangeNotifier{
  Color mycolor = Colors.white;
  void ChangeColor(Color new_color){
    mycolor =new_color;
    notifyListeners();
  }
}