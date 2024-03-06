import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/color_app.dart';
import 'package:flutter_application_3/result_view.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  int age = 25;
  int weight = 60;
  int height = 150;
  bool ismale = true;

  Color getcolor(bool ismale) {
    if (ismale) {
      return colorapp.red;
    } else {
      return colorapp.background;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorapp.background,
      appBar: AppBar(
          backgroundColor: colorapp.background,
          centerTitle: true,
          title: const Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            // Male & Female
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      ismale = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: getcolor(ismale),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      ismale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: getcolor(!ismale),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
                            size: 80,
                          ),
                          Text(
                            'Female',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            )),
            // Height
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: colorapp.containerbg,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('height',
                        style: TextStyle(color: Colors.white, fontSize: 25)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        SizedBox(
                          width: 10,
                        ),
                        Text('cm',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Slider(
                      thumbColor: colorapp.red,
                      activeColor: colorapp.red,
                      inactiveColor: colorapp.gray,
                      value: height.toDouble(),
                      min: 120,
                      max: 250,
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Weight & Age
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: colorapp.containerbg,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'weight',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: colorapp.gray),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(Icons.remove)),
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: colorapp.gray),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: colorapp.containerbg,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: colorapp.gray),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(Icons.remove)),
                            IconButton(
                                color: Colors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: colorapp.gray),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            )),

            // Calculate
            Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorapp.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  // Navigator to Result Screen
                  onPressed: () {
                    double resultview =
                        weight / (height / 100) * (height / 100);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultView(
                        result: resultview,
                      ),
                    ));
                  },
                  child: const Text(
                    'Calculate',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
