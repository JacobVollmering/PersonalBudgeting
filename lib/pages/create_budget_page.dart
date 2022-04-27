import 'package:flutter/material.dart';
import 'package:personal_budgeting/model/budget.dart';
import 'package:personal_budgeting/services/my_controller.dart';
import 'package:personal_budgeting/viewModels/personal_budeget_view_model.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

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
                      .changeNewBudgetVal(double.parse(value));
                },
              ),
              TextField(
                minLines: 3,
                maxLines: null,
                decoration: const InputDecoration(hintText: 'Amount Spent'),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewBudgetValSpent(double.parse(value));
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    Budget budget = Budget(description: context.read<PersonalBudgetViewModel>().newBudget,
                        amount: context.read<PersonalBudgetViewModel>().newBudgetVal);
                    MyController.insertBudget(dropdownValue, budget);
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (_) => HomePage()))
                        .then((result) async {});
                  },
                  child: const Text('Save')),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.blueAccent),
                underline: Container(
                  height: 2,
                  color: Colors.blueAccent,
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
