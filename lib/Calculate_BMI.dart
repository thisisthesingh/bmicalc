import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;
  double _bmi = 0;

  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String GetResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String Interpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more and have a strict check on your diet.';
    } else if (_bmi >= 18) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You have a lower than normal body weight. You need to eat more and increase your calorie intake';
    }
  }
}
