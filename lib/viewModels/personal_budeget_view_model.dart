import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class PersonalBudgetViewModel extends ChangeNotifier {
  String _newBudget = '';
  double _newBudgetVal = 0;
  double _newBudgetValSpent = 0;
  double _newWeeklyIncome = 0;
  double _newMonthlyIncome = 0;
  double _newYearlyIncome = 0;

  String get newBudget => _newBudget;

  double get newBudgetVal => _newBudgetVal;

  double get newBudgetValSpent => _newBudgetValSpent;

  double get newWeeklyIncome => _newWeeklyIncome;

  double get newMonthlyIncome => _newMonthlyIncome;

  double get newYearlyIncome => _newYearlyIncome;

  void changeNewBudget(String updatedTask) {
    _newBudget = updatedTask;
  }

  void createNewBudget() {}

  void changeNewBudgetVal(double newBudgetVal) {
    _newBudgetVal = newBudgetVal;
    print(_newBudgetVal);
  }

  void changeNewBudgetValSpent(double newBudgetValSpent) {
    _newBudgetValSpent = newBudgetValSpent;
  }

  void changeNewWeeklyIncome(double updatedWeeklyIncome) {
    _newWeeklyIncome = updatedWeeklyIncome;
  }

  void changeNewMonthlyIncome(double updatedMonthlyIncome) {
    _newMonthlyIncome = updatedMonthlyIncome;
  }

  void changeNewYearlyIncome(double updatedYearlyIncome) {
    _newYearlyIncome = updatedYearlyIncome;
  }
}
