import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/controller/counter_screen_controller.dart';
import 'package:provider_sample/controller/second_screen_controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<SecondScreenController>().mycolor,
      appBar: AppBar(),
      body: Center(
        child: Column(
          
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                   context.read<CounterScreenController>().decrement();
                }, child: Text("-")),
                SizedBox(width: 50,),
                ElevatedButton(onPressed: () {
                 context.read<CounterScreenController>().increment();
                }, child:Text("+"))
              ],
            ),
            InkWell(
              onTap: () {
                context.read<SecondScreenController>().ChangeColor(Colors.cyan);
              },
              child: Container(
                height: 40,
                width: 100,
                color: Colors.cyan,
              ),
            ),
            InkWell(
              onTap: () {
                context.read<SecondScreenController>().ChangeColor(Colors.yellow);
              },
              child: Container(
                height: 40,
                width: 100,
                color: Colors.yellow,
              ),
            ),
            InkWell(
              onTap: () {
                context.read<SecondScreenController>().ChangeColor(Colors.pink);
              },
              child: Container(
                height: 40,
                width: 100,
                color: Colors.pink,
              ),
            )
          ],
        ),
      ),
    );
  }
}