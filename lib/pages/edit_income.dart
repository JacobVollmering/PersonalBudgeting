import 'package:flutter/material.dart';
import 'package:personal_budgeting/viewModels/personal_budeget_view_model.dart';
import 'package:provider/provider.dart';

class EditIncomePage extends StatelessWidget {
  const EditIncomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Edit Incomes')),
        body: ChangeNotifierProvider(
          create: (BuildContext context) {
            return PersonalBudgetViewModel();
          },
          builder: (context, b) => ListView(
            children: [
              TextField(
                minLines: 1,
                maxLines: null,
                decoration: const InputDecoration(
                    hintText: ' Weekly Income',
                    prefix: Text(
                      "\$",
                      textAlign: TextAlign.right,
                    )),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewWeeklyIncome(double.parse(value));
                },
              ),
              TextField(
                minLines: 1,
                maxLines: null,
                decoration: const InputDecoration(
                    hintText: ' Monthly Income',
                    prefix: Text(
                      "\$",
                      textAlign: TextAlign.right,
                    )),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewMonthlyIncome(double.parse(value));
                },
              ),
              TextField(
                minLines: 1,
                maxLines: null,
                decoration: const InputDecoration(
                    hintText: ' Yearly Income',
                    prefix: Text(
                      "\$",
                      textAlign: TextAlign.right,
                    )),
                onChanged: (String value) {
                  context
                      .read<PersonalBudgetViewModel>()
                      .changeNewYearlyIncome(double.parse(value));
                },
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Save'))
            ],
          ),
        ));
  }
}
