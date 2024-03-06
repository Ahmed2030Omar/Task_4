import 'package:flutter/material.dart';
import 'package:flutter_application_3/color_app.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;

// Severe Thinness	< 16
// Moderate Thinness	16 - 17
// Mild Thinness	17 - 18.5
// Normal	18.5 - 25
// Overweight	25 - 30
// Obese Class I	30 - 35
// Obese Class II	35 - 40
// Obese Class III	> 40

  String getclassefication() {
    if (result < 16) {
      return 'Severe Thinness';
    } else if (result >= 16 && result <= 17) {
      return 'Moderate Thinness';
    } else if (result >= 17 && result <= 18.5) {
      return 'Mild Thinness';
    } else if (result >= 18.5 && result <= 25) {
      return 'Normal';
    } else if (result >= 25 && result <= 30) {
      return 'Overweight';
    } else {
      return 'Obese Class III';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorapp.background,
      appBar: AppBar(
        backgroundColor: colorapp.background,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getclassefication(),
              style: TextStyle(
                color: colorapp.green,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              result.toStringAsFixed(2),
              style: const TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
