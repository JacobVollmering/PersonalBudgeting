class Budget {
  final String description;
  final String id;
  int amount;
  bool isActive;

  Budget({this.description = '', required this.id, required this.amount}) : isActive = true;
}
