import 'package:flutter/material.dart';
import 'calculator_screen.dart';
import 'dart:math';


class Calculations extends ChangeNotifier {


  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  double result=0;  //Non-nullable instance field '_result' must be initialized.
  // String? male;
  // String? female;
  // String? selectGender;
  bool male = false;
  bool female = false;
  String gender = " ";
  void calculations() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);
    double heightSquare = height * height;
    result = weight / heightSquare;
    notifyListeners();
  }
  enterMale() {
   male = true;
    female = false;
    gender = "Male";
    notifyListeners();
  }
  enterFemale() {
    female = true;
    male = false;
    gender = "Female";
    notifyListeners();
  }
}
