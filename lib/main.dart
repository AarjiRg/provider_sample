import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/controller/counter_screen_controller.dart';
import 'package:provider_sample/controller/second_screen_controller.dart';
import 'package:provider_sample/view/home_screen/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterScreenController(),),
        ChangeNotifierProvider(create: (context) => SecondScreenController(),)
      ],
      child: MaterialApp(
          home: HomeScreen(),
       
      ),
    );
  }
}