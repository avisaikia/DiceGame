import 'package:flutter/material.dart';
import 'dice_home_page.dart';

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

