import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        // appBar: AppBar(
        //   backgroundColor: colorapp.background,
        //   foregroundColor: Colors.white,
        //   title: const Text('Your Result'),
        // ),
        appBar: AppBar(
          backgroundColor: colorapp.background,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Your Result',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                // Recolculate
                Container()
              ],
            )
            //   padding: const EdgeInsets.all(10),
            //   child: Expanded(
            //     child: Column(
            //       children: [
            //         Container(
            //           width: double.infinity,
            //           height: 400,
            //           decoration: BoxDecoration(color: colorapp.background),
            //           child: (Text(
            //             'Your result',
            //             style: TextStyle(color: Colors.white, fontSize: 35),
            //           )),
            //         ),
            //         SizedBox(
            //           height: 20,
            //         ),
            //         Column(

            //         )
            //       ],
            //     ),

            //   ),

            // ),

            // Text(
            //   getclassefication(),
            //   style: TextStyle(
            //     color: colorapp.green,
            //     fontWeight: FontWeight.bold,
            //     fontSize: 15,
            //   ),
            // ),
            // Text(
            //   result.toStringAsFixed(2),
            //   style: const TextStyle(color: Colors.white, fontSize: 22),
            // ),
            ));
  }
}
