import 'package:flutter/material.dart';
import 'package:personal_budgeting/viewModels/personal_budeget_view_model.dart';
import 'package:provider/provider.dart';

class CreateBudgetPage extends StatefulWidget {
  @override
  _CreateBudgetPageState createState() => _CreateBudgetPageState();
}

class _CreateBudgetPageState extends State<CreateBudgetPage> {
  String dropdownValue = 'weekly';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Add New Budget')),
        body: ChangeNotifierProvider(
          create: (BuildContext context) {
            return PersonalBudgetViewModel();
          },
          builder: (context, b) => ListView(
            children: [
              TextField(
                minLines: 3,
                maxLines: null,
                decoration: const InputDecoration(hintText: 'Budget Name'),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewBudget(value);
                },
              ),
              TextField(
                minLines: 3,
                maxLines: null,
                decoration: const InputDecoration(hintText: 'Budget Amount'),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewBudgetVal(value as double);
                },
              ),
              TextField(
                minLines: 3,
                maxLines: null,
                decoration: const InputDecoration(hintText: 'Amount Spent'),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewBudgetValSpent(value as double);
                },
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pop(context.read<PersonalBudgetViewModel>().newBudget),
                  child: const Text('Save')),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.blueAccent),
                underline: Container(
                  height: 2,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['weekly', 'monthly', 'yearly']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
            ],
          ),
        ));
  }
}
