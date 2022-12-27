import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_course/modules/bmi/pmi_result_Screen.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = false;
  double height = 40.0;
  int age = 20;
  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 650,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = true;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: isMale == true
                                          ? Colors.blue
                                          : Colors.grey[400]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.male,
                                        size: 80,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'MALE',
                                        style: TextStyle(
                                            fontSize: 25.0, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: !isMale ? Colors.blue : Colors.grey[400]),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.female,
                                        size: 80,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'FEMALE',
                                        style: TextStyle(
                                            fontSize: 25.0, fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'HEIGHT',
                              style:
                              TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  '${height.round()}',
                                  style: const TextStyle(
                                      fontSize: 40.0, fontWeight: FontWeight.w900),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  'CM',
                                  style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Slider(
                                value: height,
                                max: 240,
                                onChanged: (val) {
                                  setState(() {
                                    height = val;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey[400]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'AGE',
                                      style: TextStyle(
                                          fontSize: 25.0, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$age',
                                      style: const TextStyle(
                                          fontSize: 40.0, fontWeight: FontWeight.w900),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              age--;
                                            });
                                          },
                                          mini: true,
                                          heroTag: 'age--',
                                          child: const Icon(Icons.remove),
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              age++;
                                            });
                                          },
                                          heroTag: 'age++',
                                          mini: true,
                                          child: const Icon(Icons.add),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.grey[400]),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'WEIGHT',
                                      style: TextStyle(
                                          fontSize: 25.0, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '$weight',
                                      style: const TextStyle(
                                          fontSize: 40.0, fontWeight: FontWeight.w900),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              weight--;
                                            });
                                          },
                                          heroTag: 'weight--',
                                          mini: true,
                                          child: const Icon(Icons.remove),
                                        ),
                                        FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              weight++;
                                            });
                                          },
                                          mini: true,
                                          heroTag: 'weight++',
                                          child: const Icon(Icons.add),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            height: 50.0,
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  var result = weight / pow(height / 100, 2);
                  print(result.round() ,);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BMIResult(
                      result: result.round(),
                      isMale: isMale,
                      age: age,
                    );
                  }));
                });
              },
              child: const Text(
                'CALCULATE',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//var result = weight / (pow(height) / 100,2)
//print (result.round());
