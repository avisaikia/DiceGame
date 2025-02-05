import 'dart:math';
import 'package:flutter/material.dart';

class Dicer extends StatefulWidget {
  const Dicer({super.key});

  @override
  State<Dicer> createState() => _DicerState();
}

class _DicerState extends State<Dicer> {

  final random = Random();
  int diceNum = 1;
  void rollDice()
  {
    setState(()
    {
      diceNum = random.nextInt(6) + 1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$diceNum.png',
            width: 150,),
         const SizedBox(height: 20,),
          ElevatedButton(
              onPressed: rollDice,

              child: Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purpleAccent,
                ),
              )
          )
        ],
      ),
    );
  }
}
