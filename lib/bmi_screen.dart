import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_11/bmi_result_screen.dart';

class bmiscreen extends StatefulWidget {
  bmiscreen({Key? key}) : super(key: key);

  @override
  State<bmiscreen> createState() => _bmiscreenState();
}

class _bmiscreenState extends State<bmiscreen> {
  double slidervalue = 10;
 
  bool isMale = true;
  int age = 20;
  int weight = 50;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(20),
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
                          color: isMale ? Colors.purple : Colors.blueGrey,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 100,
                          ),
                          Text('MALE')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: isMale ? Colors.blueGrey : Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                          ),
                          Text('FEMALE')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'HEIGHT',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${slidervalue.round()}',
                          style: TextStyle(fontSize: 50)),
                      Text('cm'),
                    ],
                  ),
                  Slider(
                      value: slidervalue,
                      max: 220,
                      min: 0.0,
                      onChanged: (value) {
                        setState(() {
                          slidervalue = value;
                          
                        });
                      })
                ],
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('${age}', style: TextStyle(fontSize: 40)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'age-',
                              onPressed: () {
                                setState(() {
                                  --age;
                                });
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                            ),
                            FloatingActionButton(
                              heroTag: 'age+',
                              onPressed: () {
                                setState(() {
                                  ++age;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('${weight}', style: TextStyle(fontSize: 40)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              heroTag: 'weight-',
                              onPressed: () {
                                setState(() {
                                  --weight;
                                });
                              },
                              child: Icon(Icons.remove),
                              mini: true,
                            ),
                            FloatingActionButton(
                               heroTag: 'weight+',
                              onPressed: () {
                                setState(() {
                                  ++weight;
                                });
                              },
                              child: Icon(Icons.add),
                              mini: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            height: 50,
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              onPressed: () {
                double result = weight / pow(slidervalue / 100, 2);
                print(result.round());
                Navigator.push(context, MaterialPageRoute(builder: (context)=>bmiresult(
                age: age,
                isMale: isMale,
                result: result,
                height: slidervalue,
                             )));
                
                
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 20),
              ),
              color: Colors.purple,
            ),
          )
        ],
      ),
    );
  }
}
