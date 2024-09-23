import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_sample/controller/counter_screen_controller.dart';
import 'package:provider_sample/view/second_screen/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
       
      context.read<CounterScreenController>().increment();
      }
      ,child: Icon(Icons.add),), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("${context.watch<CounterScreenController>().count}"),
            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen(),));
             }
              
           , child: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ), 
      );
  }
} 
      
   