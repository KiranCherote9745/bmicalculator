import 'package:bmicalculator/bmicalculator.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(

        debugShowCheckedModeBanner:false, //to remove the debug banner above the screen
      home: BmiCalculator(),
    )
  );
}
