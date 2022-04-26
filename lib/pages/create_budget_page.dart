import 'dart:html';

import 'package:flutter/material.dart';
import 'package:personal_budgeting/viewModels/personal_budeget_view_model.dart';
import 'package:provider/provider.dart';

class CreateBudgetPage extends StatelessWidget {
  const CreateBudgetPage({Key? key}) : super(key: key);

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
              ElevatedButton(onPressed: () {}, child: const Text('Save'))
            ],
          ),
        ));
  }
}
