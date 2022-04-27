import 'package:cloud_firestore/cloud_firestore.dart';


import '../model/budget.dart';
import 'storage.dart';

class FirestoreBackend implements Storage {
  static final _singleton = FirestoreBackend._internal();

  FirestoreBackend._internal();

  factory FirestoreBackend() {
    return _singleton;
  }

  static const _budgets = 'budgets';
  static const _description = 'description';
  static const _amount = 'amount';
  static const _timePeriod = 'time_period';

  Future<List<Budget>> getBudgets(String timePeriod) async {
    return [];
  }
  Future<Budget> insertBudget(String description) async {
    return Budget(id: '1', amount: 100);
  }
  Future<Budget> editBudget(String description) async{
    return Budget(id: '2', amount: 101);
  }
  Future<void> removeBudget(Budget budget) async {
    print('hello');
  }
  Future<void> editIncomes (String timePeriod) async {

  }
}
