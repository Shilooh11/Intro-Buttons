import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Counter Text",textAlign: TextAlign.center,),
        centerTitle: true
      
      ),

        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
               Text('Click${ clickCounter == 1  ? '' : 's'}', style: const TextStyle(fontSize: 25))
               // Text(clickCounter == 1  ? 'Click' : 'Clicks', style: const TextStyle(fontSize: 25))
               // O tbm puede ser :
              /*if(clickCounter == 1)
               const Text('Click', style: TextStyle(fontSize: 25)),
               if(clickCounter != 1)
               const Text('Clicks', style: TextStyle(fontSize: 25)),
               */
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
                          clickCounter++;
            });
          },
          child: const Icon(Icons.plus_one),
        ),



      );
  }
}
