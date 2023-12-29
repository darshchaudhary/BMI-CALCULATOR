import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final height;
  final weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    if (_bmi > 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Your BMI is higher than usual, try to eat less and exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your BMI is within the normal range, congratulations!';
    } else {
      return 'You BMI is lower than usual, try to eat a bit more.';
    }
  }

}