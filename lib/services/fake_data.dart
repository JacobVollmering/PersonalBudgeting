import '../model/budget.dart';

class FakeData {
  static List<Budget> getBudgets() {
    return [
      Budget(description: 'Budget 1', id: '1', amount: 100),
      Budget(description: 'Budget 2', id: '2', amount: 200),
      Budget(
          description:'Budget 3', id: '3', amount: 300),
      Budget(description: 'Budget 4', id: '4', amount: 400),
    ];
  }
}
