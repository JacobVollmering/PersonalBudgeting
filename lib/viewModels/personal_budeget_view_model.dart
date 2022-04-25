import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class PersonalBudgetViewModel extends ChangeNotifier{
  String _newBudget = '';
  double _newWeeklyIncome = 0;
  double _newMonthlyIncome = 0;
  double _newYearlyIncome = 0;

  String get newBudget => _newBudget;

  void changeNewBudget(String updatedTask){
    _newBudget = updatedTask;
  }
  void createNewBudget(){

  }
  void changeNewWeeklyIncome(double updatedWeeklyIncome){
    _newWeeklyIncome = updatedWeeklyIncome;
  }
  void changeNewMonthlyIncome(double updatedMonthlyIncome){
    _newMonthlyIncome = updatedMonthlyIncome;
  }
  void changeNewYearlyIncome(double updatedYearlyIncome){
    _newYearlyIncome = updatedYearlyIncome;
  }
}