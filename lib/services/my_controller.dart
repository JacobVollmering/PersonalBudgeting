import '../model/budget.dart';
import 'fake_data.dart';

class MyController {
  static List<Budget> getBudgets() {
    return FakeData.getBudgets();
  }
}
