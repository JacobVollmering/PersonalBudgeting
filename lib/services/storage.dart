import '../model/budget.dart';

abstract class Storage {
  Future<List<Budget>> getBudgets(String timePeriod);

  Future<Budget> insertBudget(String description, Budget budget);

  Future<Budget> editBudget(String description);

  Future<void> removeBudget(Budget task);

  Future<void> editIncomes(String timePeriod);
}
