import 'dart:ffi';

import 'package:flutter/material.dart';

class bmicalculator extends StatefulWidget {

  bmicalculator();
  @override
  State<bmicalculator> createState() => _bmicalculatorState();

}

class _bmicalculatorState extends State<bmicalculator> {

  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;
  void bmicalculate(){
    double Height=double.parse(height.text)/100;
    double Weight=double.parse(weight.text);
    double Heightsquare=Height*Height;
    result=Weight/Heightsquare;
    setState(() {
      result=result;
    });
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("bmicalculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller:height,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.trending_up,
                  color: Colors.purple,
                ),
                hintText: 'height in cm',
                hintStyle: TextStyle(color: Colors.purple)),
          ),
          TextField(
            controller: weight,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.line_weight,
                  color: Colors.purple,
                ),
                hintText: 'weight in kg',
                hintStyle: TextStyle(color: Colors.purple)),
          ),
          ElevatedButton(onPressed: () {bmicalculate();},
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // Background color
              ),
              child: Text('Calculate',)),
          Text(result.toStringAsFixed(2)),
      
        ],
      ),
    );
  }
}
