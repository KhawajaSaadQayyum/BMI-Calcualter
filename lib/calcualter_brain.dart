

import 'dart:math';

import 'package:bmi_cal/main.dart';

class CalculaterBrain{

  CalculaterBrain( {required this.weight,required this.height});
  final int height;
  final int weight;
  double _bmi =0;

  String CalculateBMI()
  {
    _bmi =weight/pow(height/39.3701, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult()
  {
    if(_bmi>=25)
      {
        return "over Weight";
      }
    else if (_bmi> 18.5)
      {
        return "Normal";
      }
    else
      {
        return "Under weight";
      }
  }

  String getInterpreation() {
    if (_bmi >= 25) {
      return " your Weight is too over! you should eat less food and take more and more exercise ";
    }
    else if (_bmi > 18.5) {
      return "Your weight is normal! Maintain it and stay happy";
    }
    else {
      return "Yor weight is too low you need to eat more and healthy food";
    }
  }
}