import 'package:flutter/material.dart';

class bmiresult extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  final double height;



  const bmiresult(
      {Key? key, required this.result, required this.isMale, required this.age, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Gender :${isMale ? ' male' : ' female'} ',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            ' Age : ${age} ',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
           Text(
            ' height : ${height.round()} ',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Text(
            ' Result :  ${result.round()}',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
