import 'package:personal_budgeting/services/firestore_backend.dart';
import 'package:personal_budgeting/services/storage.dart';

import '../model/budget.dart';
import 'fake_data.dart';

class MyController {
  static Storage storage = FirestoreBackend();
   static Future<List<Budget>> getBudgets(String timePeriod) {
    return storage.getBudgets(timePeriod);
  }
  static Future<Budget> insertBudget(String timePeriod, Budget budget){
     return storage.insertBudget(timePeriod, budget);
  }
}
