import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceHomePage(),
    );
  }
}

class DiceHomePage extends StatelessWidget {
  const DiceHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Dicer()
    );
  }
}
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
          SizedBox(height: 20,),
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

