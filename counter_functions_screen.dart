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
//condicion
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
          CustomButton(icon: Icons.plus_one, onPressed: (){
            clickCounter++;
            setState(() {});
          },),

        const SizedBox( height: 25),

        CustomButton(icon: Icons.exposure_minus_1_outlined, onPressed: (){
          if (clickCounter == 0) return;
          clickCounter--;
          setState(() {});
        },),
        
        const SizedBox( height: 25),

        CustomButton(icon: Icons.refresh_rounded,onPressed: (){
          clickCounter = 0;
          setState(() {});
        },),

          ],
        )

      );
  }
}

class CustomButton extends StatelessWidget {
final IconData icon;
final VoidCallback? onPressed;

  const CustomButton({

    super.key, required this.icon,this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(

    enableFeedback: true,
    elevation: 5,
    backgroundColor: Colors.yellow,
      //shape : const stadibumboer = borde circular
          shape: const StadiumBorder(),
      onPressed: onPressed,
      child:  Icon(icon),
    );
  }
}
