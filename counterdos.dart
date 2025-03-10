import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Counter Functions",textAlign: TextAlign.center,),
        centerTitle: true,
       //Si lo quiero de lado izquierdo es leading
       /* leading: IconButton(icon: const Icon(Icons.refresh_rounded), 
        onPressed: () {  
          
        },),
        */
        actions: [
          IconButton(icon: const Icon(Icons.refresh_rounded), 
        onPressed: () {  
          
        },),
        ],
      
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
          onPressed: () {
            clickCounter++;
            setState(() { });
          },
          child: const Icon(Icons.plus_one),
        ),

        const SizedBox( height: 25),

        FloatingActionButton(
          onPressed: () {
            if(clickCounter == 0) return;
           clickCounter--;
           setState(() {});
          },
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
        
        const SizedBox( height: 25),

        FloatingActionButton(
              shape: const StadiumBorder(),
          onPressed: () {
            clickCounter =0;
            setState(() {});
          },
          child: const Icon(Icons.refresh_outlined),
        ),

          ],
        )

      );
  }
}
