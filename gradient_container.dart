
import 'package:flutter/material.dart';
import 'dicer.dart';


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